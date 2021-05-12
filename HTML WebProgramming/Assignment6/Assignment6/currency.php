<!DOCTYPE html>
<html lang="en">
<?php

    $msg = "0";

    function convertCurrency($amount,$inpCurr,$outCurr){

		$map["USD"]["USD"] = 1;
		$map["USD"]["CAD"] = 1.22;
        $map["USD"]["EUR"] = 0.831;
        $map["USD"]["GBP"] = 0.723;
        $map["USD"]["CNY"] = 6.474;
        $map["CAD"]["CAD"] = 1;
        $map["CAD"]["USD"] = 0.814;
        $map["CAD"]["EUR"] = 0.676;
        $map["CAD"]["GBP"] = 0.589;
        $map["CAD"]["CNY"] = 5.269;
        $map["EUR"]["EUR"] = 1;
        $map["EUR"]["CAD"] = 1.478;
        $map["EUR"]["USD"] = 1.203;
        $map["EUR"]["GBP"] = 0.871;
        $map["EUR"]["CNY"] = 7.790;
        $map["GBP"]["GBP"] = 1;		
        $map["GBP"]["CAD"] = 1.697;
        $map["GBP"]["USD"] = 1.381;
        $map["GBP"]["EUR"] = 1.148;
        $map["GBP"]["CNY"] = 8.944;
        $map["CNY"]["CNY"] = 1;		
        $map["CNY"]["CAD"] = 0.189;
        $map["CNY"]["USD"] = 0.154;
        $map["CNY"]["EUR"] = 0.128;
        $map["CNY"]["GBP"] = 0.111;

        $codes = array("CAD" => "Can$", "USD" => "$", "EUR" => "€", "GBP" => "£", "CNY" => "¥");
        $conv = $amount * $map[$inpCurr][$outCurr];
        $symbol = $codes[$outCurr];
        $msg = sprintf("%s %.2f = %s %.2f",$codes[$inpCurr],$amount,$symbol,$conv);
        return $msg;
    }
    if(isset($_POST["inp-value"]) && isset($_POST["input-currency"]) && isset($_POST["output-currency"])) {
        if(is_numeric($_POST["inp-value"]) == 1) {
            $amt = (float)$_POST["inp-value"];
            $in_curr = $_POST["input-currency"];
            $out_curr = $_POST["output-currency"];
            $msg = convertCurrency($amt,$in_curr,$out_curr);
        }else
            $msg = "Number is not valid. Please enter a Valid number";
    }
?>



 <meta charset="UTF-8">
    <title>Currency Converter</title>
	<head>
    
</head>
<body>
<fieldset>
<legend>Currency Converter</legend>
<form action="currency.php" method="POST">
<table>

<tr>
<td>
<input name="inp-value" type="text" placeholder="Amount" required>
</td>
<td>
<img src=
"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/1200px-Flag_of_Canada_%28Pantone%29.svg.png"
                    width="20" height="15"> 
<img src=
"https://cdn.britannica.com/79/4479-050-6EF87027/flag-Stars-and-Stripes-May-1-1795.jpg"
                    width="20" height="15"> 
					
					<img src=
"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Flag_of_Europe.svg/255px-Flag_of_Europe.svg.png"
                    width="20" height="15"> 
					<img src=
"https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1200px-Flag_of_the_United_Kingdom.svg.png"
                    width="20" height="15"> 
					<img src=
"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/255px-Flag_of_the_People%27s_Republic_of_China.svg.png"
                    width="20" height="15"> 
<select name="input-currency">

<option value ="CAD"> Can$ (Canadian Dollar)  </option>
<option value="USD">$ (US Dollar) </option>
 <option value="EUR" >  € (Euro)  </option>
<option value="GBP">£ (British Bound)</option>
<option value="CNY">¥ (Chinese Yuan)</option>
</select>
</td>
</tr>
<tr>
<td>Output Currency</td>
<td>
<select name="output-currency">
<option value="CAD">Can$ (Canadian Dollar)
</option>
<option value="USD"> $ (US Dollar)</option>
<option value="EUR">€ (Euro)</option>
<option value="GBP">£ (British Bound) </option>
<option value="CNY">¥ (Chinese Yuan)</option>
</select>
</td>
</tr>
<tr>
<td colspan="2">
<input style="width : 100%" type="submit" value="Convert">
</td>
</tr>
</table>
<?php
if($msg != "0")
echo "<p>$msg</p>"
?>
<style>

	body{
	margin :20% 40% 20% 40%;}

    legend {
  color: #d46622;
  background-color: #ccadbe;
  border: 1px solid #72072e;
  padding: 3px;
  font-weight: bold;
}
#output-currency {
  background: #b56d79;

</style>
</form>
</fieldset>
</body>
</html>