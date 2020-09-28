<?php


function ConnectApi($city) {

$url = "https://api.meteo.lt/v1/places/".$city."/forecasts/long-term";
    // create curl resource
$ch = curl_init();

curl_setopt ($ch, CURLOPT_CAINFO, "/etc/ssl/certs");
// set url
curl_setopt($ch, CURLOPT_URL, $url);
//return the transfer as a string
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

// $output contains the output string
$output = curl_exec($ch);
if ( ! $output) {
  print curl_errno($ch) .': '. curl_error($ch);
}

// close curl resource to free up system resources
curl_close($ch);

return $output;

}

function whichSeason($seasons, $airTemperature) {
  $currentSeason = null;

  for($i = 0; $i < count($seasons); $i++){
    if($airTemperature > $seasons[$i][1])
    {
        $currentSeason = $seasons[$i][0];
    }
}

  if($currentSeason == null){
    $currentSeason = "winter";
  }

  return $currentSeason;
}
