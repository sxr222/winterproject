
<?php

/* 
 if you're having issues with curl, specifically this one: Fatal error: Call to undefined function curl_init()
 run this line : phpinfo(); 
 search for curl, if there are no results then your PHP installation doesn't have curl enabled
*/
echo "Enter text:";
echo "<form name=\"form\" action=\"\" method=\"get\">";
echo "<input type=\"text\" name=\"subject\" id=\"subject\" value=\"\">";
echo "</form>";

$input_utterance = $_GET['subject'];
echo "Post:" . "<br>" . "$input_utterance" . "<br>";

$witRoot = "https://api.wit.ai/message?";
$witVersion = '20200804';

$witURL =  $witRoot. "v=". "&q=". urlencode($input_utterance);
// link should be : "https://api.wit.ai/message?v=20200804&q="

$ch = curl_init();
$header = array();
$header[] = 'Authorization: Bearer 432K6GI5MIHLCGYWAK6H6XTJDAIPZYR6';

curl_setopt($ch, CURLOPT_URL, $witURL);
curl_setopt($ch, CURLOPT_HTTPHEADER,$header); 
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
// adding certificate, if you cannot locate cacert.pem within your MAMP folder, download it from the Google Drive
// change the path of the certificate to where it is on your local machine
// remember the syntax for the path changes whether your on a mac or windows machine, the below line is windows syntax
$certificate = "C:\MAMP\bin\php\php7.4.1\cacert.pem";
curl_setopt($ch, CURLOPT_CAINFO, $certificate);
curl_setopt($ch, CURLOPT_CAPATH, $certificate);

$server_output = curl_exec($ch); 

//if a curl error is thrown
if(curl_errno($ch)){
    echo 'Curl error: ' . curl_error($ch);
}

curl_close ($ch);  

echo "<br>";
echo "Response:";
$server_decoded_rsp = json_decode($server_output)->entities->{"issues:issues"};

$response = "";

//if default ports are changed with MAMP preferences, need to specify port number when connecting sql
for ($i = 0; $i < count($server_decoded_rsp); $i++){
	$keyword = $server_decoded_rsp[$i]->value;
	$con_db = mysqli_connect("localhost:8889", "root", "root", "hw2_witAI"); 
  	if (mysqli_connect_errno($con_db)) {
    	echo "Failed to connect  to MYSql:" . mysqli_connect_error();
  	}
  	$sql_command = "SELECT answer FROM response WHERE keyword = '{$keyword}'";
  	$result = mysqli_query($con_db, $sql_command);
  	$num_rows = mysqli_num_rows($result);
  	if ($num_rows > 0) {
    	$row = mysqli_fetch_array($result);
    	$answer = $row[0];
    	echo "<br>" . $answer;
  	} else {
    	echo "failed";
  	}
  	mysqli_close($con_db);
}


?>


