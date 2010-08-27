function browserparse()
{

var inputbox = document.getElementById("browserparseinputfield");
var inputtext = inputbox.value;

if (inputtext == "" || inputtext == " ")
{
return false;
}
document.getElementById("stringoutput").innerHTML = "";
document.getElementById("JSONoutput").innerHTML = ""; 


if (inputtext.length >250)
{
	document.getElementById("inputerror").innerHTML = "ERROR: input length greater than 250 characters. Please parse one sentence at a time";
}
else
{
	document.getElementById("inputerror").innerHTML = "";
	if (nlp.getParse(inputtext, function(data) {document.getElementById("loading").setAttribute("class", "noshow"); document.getElementById("stringoutput").innerHTML = "<u>string output:</u> <br />" + nlp.JSONtoString(data); 	document.getElementById("JSONoutput").innerHTML = "<u>JSON output:</u> <br />" + formatData(data);  } ) )
	{
	document.getElementById("loading").setAttribute("class", "yesshow");
	}
}
}

function formatData(data)
{
if (data.words == null)
	{return;}
else
{
	var output ="{ \"words\":\n   [ \n";
	var x;
	for (x in data.words)
	{
		output = output + "       " + "{" + "\"value\":\"" + data.words[x].value + "\", \"id\":" + data.words[x].id + " , \"tag\":\"" + data.words[x].tag + "\" } \n";
	}
	output = output + "   ]\n}";
	return output;
}
}
