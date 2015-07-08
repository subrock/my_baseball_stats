<?

// RegisterUser - Takes an api call and returns xml of success or failsure. If success a session ID is given and must be passed durrning the session. 
// Post variables
//
// 

// Initiate logging.
function writeToLog($message) {
        $logDate = new DateTime();
        $logDate = $logDate->format("y:m:d h:i:s");
        exec('touch api.log');
        $myfile = fopen("api.log", "a") or die("Unable to open file!");
        $message = "\n".$logDate." ".$message;
        fwrite($myfile, $message);
        //fclose($myfile);
}

writeToLog("Starting registration script.");

// We only accept POST via back channel. Catch a request header from a POST header.
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
writeToLog("POST Request has been made.");
// Get signed key passed. Compare it to the one in key/.
$myfile = fopen("../key/key.pvt", "r") or die("Unable to open file!");
$api_key=trim(fgets($myfile));
$api_sign=$_POST['signiture'];
fclose($myfile);

if (strcmp($api_sign, $api_key) == 0) {
	writeToLog("Signiture keys match.");
	// Database connection information.
	$db_host="localhost";
	$db_user="root";
	$db_password="testme";
	$db_name="MY_BASEBALL_STATS";

	$reg_user=$_POST['user'];
	$reg_pass=$_POST['password'];
	$reg_number=$_POST['number'];
	$reg_mail=$_POST['email'];
        if (empty($reg_user) or empty($reg_pass) or empty($reg_mail) or empty($reg_number)) {
                writeToLog("Missing post variables.");
                header("Content-type: text/xml");
                $xml = "<?xml version='1.0' standalone='yes'?>";
                $xml = $xml . "<authentication>";
                $xml = $xml . "<result>Failure</result>";
                $xml = $xml . "<name>".$reg_user."</name>";
                $xml = $xml . "<reason>Missing post variables.</reason>";
                $xml = $xml . "</authentication>";
                echo $xml;
                exit;
        }


	mysql_connect($db_host,$db_user,$db_password);
	@mysql_select_db($db_name) or die( "Unable to select database");
        $query="SELECT * FROM UserTable WHERE user_name = '$reg_user'";
        $result=mysql_query($query);
	$num_rows = mysql_num_rows($result);
	$user_id=mysql_result($result,"user_id");
	if ($num_rows < 1) {
		writeToLog("User does not exist. Creating a new account.");
        	$query="INSERT INTO UserTable (user_name,user_password,user_number,user_email) VALUES ('$reg_user','$reg_pass','$reg_number','$reg_mail')" ;
        	$result=mysql_query($query);
        	$user_id=mysql_result($result,"user_id");
		$user_id = mysql_insert_id();
		// Build XML for a Successful response.
		writeToLog("User registration sucessful. Writting success XML.");
		header("Content-type: text/xml");
		$xml = "<?xml version='1.0' standalone='yes'?>";
		$xml = $xml . "<registration>";
		$xml = $xml . "<result>Sucess</result>";
		$xml = $xml . "<id>".$user_id."</id>";
		$xml = $xml . "<name>".$reg_user."</name>";
		$xml = $xml . "<number>".$reg_number."</number>";
		$xml = $xml . "<email>".$reg_mail."</email>";
		$xml = $xml . "</registration>";
		echo $xml;
		writeToLog("End RegisterUser.\n$xml\n\n");
                exit;
        } else {
                // Build XML for a Failure response.
		writeToLog("User registration failed. User already exists. Writting failure XML.");
		header("Content-type: text/xml");
                $xml = "<?xml version='1.0' standalone='yes'?>";
                $xml = $xml . "<registration>";
                $xml = $xml . "<result>Failure</result>";
                $xml = $xml . "<name>".$reg_user."</name>";
                $xml = $xml . "<reason>User already exists.</reason>";
                $xml = $xml . "</registration>";
                echo $xml;
		writeToLog("End RegisterUser.\n$xml\n\n");
                exit;
                exit;
        } // End response
} else {
	// Key compare failed. Redirect to an error page. 
	setcookie("message","Missing API private key.", time() + 300, '/');
	header('Location: ../error.php');
} // End key compare.
} // End post request
setcookie("message","You can not make requests using a web browser.", time() + 300, '/');
header('Location: ../error.php');

?>
