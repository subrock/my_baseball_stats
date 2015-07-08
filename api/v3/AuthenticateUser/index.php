<?

// AuthenticateUser - Takes an api call and returns xml of success or failsure. If success a session ID is given and must be passed durrning the session. 

// Initiate logging.
function writeToLog($message) {
        $logDate = new DateTime();
        $logDate = $logDate->format("y:m:d h:i:s");
        exec('touch api.log');
        $myfile = fopen("./api.log", "a") or die("Unable to open file!");
        $message = "\n".$logDate." ".$message;
        fwrite($myfile, $message);
        //fclose($myfile);
}

writeToLog("Starting authentication script.");

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
	$auth_user=$_POST['user'];
	$auth_pass=$_POST['password'];
	if (empty($auth_user) or empty($auth_pass)) {
		writeToLog("Missing post variables.");
                header("Content-type: text/xml");
                $xml = "<?xml version='1.0' standalone='yes'?>";
                $xml = $xml . "<authentication>";
                $xml = $xml . "<result>Failure</result>";
                $xml = $xml . "<reason>Missing post variables.</reason>";
                $xml = $xml . "<name>".$auth_user."</name>";
                $xml = $xml . "</authentication>";
                echo $xml;
		exit;
	} 
	mysql_connect($db_host,$db_user,$db_password);
	@mysql_select_db($db_name) or die( "Unable to select database");
        $query="select * from UserTable where user_name='".$auth_user."' and user_password='".$auth_pass."'";
	writeToLog($query);
        $result=mysql_query($query);
        $rp=mysql_result($result,0,"user_password");
        $rn=mysql_result($result,0,"user_name");
        $rnum=mysql_result($result,0,"user_number");
        $em=mysql_result($result,0,"user_email");
        $user_id=mysql_result($result,0,"user_id");
	writeToLog($user_id);
	writeToLog($rn);
	writeToLog($rp);
	writeToLog($em);
        if ($rn==$auth_user || $rp==$auth_pass) {
		// Build XML for a Successful response.
		writeToLog("User and password sucessful. Writting success XML.");
		header("Content-type: text/xml");
		$xml = "<?xml version='1.0' standalone='yes'?>";
		$xml = $xml . "<authentication>";
		$xml = $xml . "<result>Sucess</result>";
		$xml = $xml . "<id>".$user_id."</id>";
		$xml = $xml . "<name>".$rn."</name>";
		$xml = $xml . "<number>".$rnum."</number>";
		$xml = $xml . "<email>".$em."</email>";
		$xml = $xml . "</authentication>";
		echo $xml;
		writeToLog("End authentication.\n$xml\n\n");
                exit;
        } else {
                // Build XML for a Failure response.
		writeToLog("User and password failed. Writting failure XML.");
		header("Content-type: text/xml");
                $xml = "<?xml version='1.0' standalone='yes'?>";
                $xml = $xml . "<authentication>";
                $xml = $xml . "<result>Failure</result>";
                $xml = $xml . "<name>".$auth_user."</name>";
                $xml = $xml . "<reason>Invalid user or password.</reason>";
                $xml = $xml . "</authentication>";
                echo $xml;
		writeToLog("End authentication.\n$xml\n\n");
                exit;
        } // End response
	writeToLog($xml);
} else {
	// Key compare failed. Redirect to an error page. 
	setcookie("message","Missing API private key.", time() + 300, '/');
	header('Location: ../error.php');
} // End key compare.
} // End post request

setcookie("message","An error has occured. All conditionals failed.", time() + 300, '/');
header('Location: ../error.php');

?>

