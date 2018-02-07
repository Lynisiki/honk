<?php
class MyTransportAPI
{
	function getMyTransportAPIObj()
	{
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_URL, 'http://datamall2.mytransport.sg/ltaodataservice/TrafficIncidents');
	
	$header = array(
   'AccountKey:prxNO+dOSVaCs0F5/UX0rw==',
   'Accept:application/json'
 );

		curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
		$result = curl_exec($ch);
		$obj = json_decode($result);
		curl_close($ch);

		if( empty($obj) )
			echo "it is empty";
		
		return $obj;
	}
}
?>