<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type ="text/javascript">
        flag = 0;
        function openpara(val)
        {
            calc.display.value+=val;
            flag+=1;
        }
        function closepara(valval)
        {
            calc.display.value+=valval;
            flag-=1;
        }
        function backspace(calc)
        {
            var size = calc.display.value.length;
            calc.display.value=calc.display.value.substring(0,size-1);
        }
        function Resetfunction(calc)
        {
            calc.display.value="";

            flag=0;
        }
        function cos_function()
        {
            flag+=1;
            calc.display.value+='Math.cos(';
        }
        function sin_function()
        {
            flag+=1;
            calc.display.value+='Math.sin(';
        }
        function tan_function()
        {
            flag+=1;
            calc.display.value+='Math.tan(';
        }
        function log_function()
        {
            flag+=1;
            calc.display.value+='Math.log(';
        }
        function sqrt_function()
        {
            flag+=1;
            calc.display.value+='Math.sqrt(';
        }
        function exp_function()
        {
            flag+=1;
            calc.display.value+='Math.exp(';
        }
        function fact(x)
        {
            factvar=1;
            for (i=1;i<=x;i++)
            {
                factvar=factvar*i;
            }
            return factvar;
        }
        function fact_function(x)
        {
            flag+=1;
            calc.display.value+='fact(';
        }
        function power_function(x)
        {
            flag+=1;
            calc.display.value+='Math.pow(x,y';
        }
        function evaluation(calc)
        {
            n = calc.display.value;
            var size = calc.display.value.length;
            var lastchar = calc.display.value.charAt(size)
            if(isNaN(lastchar) && lastchar!=")" && lastchar!="!")   {calc.display.value="syntax error";}
        else if(flag!=0){calc.display.value="error:paranthesis";}
        else {
result=eval(n);
        calc.display.value=result;}
        }
    </script>
    <style type ="text/css">
        *{padding:0;
margin:0;
}
body {text-align:center;
background-color:#637ACB;
}
#heading {margin-top:30px;}
#form_wrapper {width:405px;
height:450px;
margin:30px auto auto 420px;
background-color:#000;
text-align:center;
border-radius:10px;
border-right:2px groove #333;
box-shadow:4px 4px 2px #666666;}

#formone{padding-top:10px;}

#display {width:380px;
height:40px;
font-size:18px;
color:black;
margin:4px;
border:2px inset black;
border-bottom:1px inset #FFF;
border-right:1px inset #FFF;
background-color:#D5F192;}

.button {width:60px;
height:60px;
margin:1px;}

.number {font-size:16px;
font-weight:bold;}

.opps {font-size:18px;}

.three {font-weight:bold;
background-color:#FBB9A8;
}
.three:hover{background-color:#F66;}
    </style>
</head>
<body>
    <div id="big_wrapper">
<h1 id="heading">SIMPLE SCIENTIFIC CALCULATOR</h1>
<div id="form_wrapper">
<form id="formone" name="calc">
<input id="display" type="text" name="display" value="" "disable" contenteditable="false" />
<br/>
<input class="button number" type="button" value="1" onclick="calc.display.value+=1"/>
<input class="button number" type="button" value="2" onclick="calc.display.value+=2"/>
<input class="button number" type="button" value="3" onclick="calc.display.value+=3"/>
<input class="button three" type="button" value="C" onclick="Resetfunction(this.form)"/>
<input class="button three" type="button" value="<-" onclick="backspace(this.form)"/>
<input class="button three" type="button" value="=" onclick="evaluation(this.form)"/>
<br/>
<input class="button number" type="button" value="4" onclick="calc.display.value+=4"/> 
<input class="button number" type="button" value="5" onclick="calc.display.value+=5"/>
<input class="button number" type="button" value="6" onclick="calc.display.value+=6"/>
<input class="button opps" type="button" value="-" onclick="calc.display.value+='-'"/>
<input class="button opps" type="button" value="%" onclick="calc.display.value+='%'"/>
<input class="button" type="button" value="cos" onclick="cos_function()"/>
<br/>


<input class="button number" type="button" value="7" onclick="calc.display.value+=7"/>
<input class="button number" type="button" value="8" onclick="calc.display.value+=8"/>
<input class="button number" type="button" value="9" onclick="calc.display.value+=9"/>
<input class="button opps" type="button" value="*" onclick="calc.display.value+='*'"/>
<input class="button" type="button" value="n!" onclick="fact_function()"/>
<input class="button" type="button" value="sin" onclick="sin_function()"/>
<br/>
<input class="button opps" type="button" value="." onclick="calc.display.value+='.'"/>
<input class="button number" type="button" value="0" onclick="calc.display.value+=0"/>
<input class="button opps" type="button" value="," onclick="calc.display.value+=','"/>
<input class="button opps" type="button" value="+" onclick="calc.display.value+='+'"/>
<input class="button opps" type="button" value="/" onclick="calc.display.value+='/'"/>
<input class="button" type="button" value="tan" onclick="tan_function()"/>
<br/>
<input class="button" type="button" value="E" onclick="calc.display.value+=2.718"/>
<input class="button" type="button" value="pi" onclick="calc.display.value+=3.141"/>
<input class="button" type="button" value="x^y" onclick="power_function()"/>
<input class="button" type="button" value="(" onclick="openpara(this.value)"/>
<input class="button" type="button" value=")" onclick="closepara(this.value)"/>
<input class="button" type="button" value="log" onclick="log_function()"/>
<br/>
<input class="button" type="button" value="sqrt" onclick="sqrt_function()"/>
<input class="button" type="button" value="LN2" onclick="calc.display.value+=0.693"/>
<input class="button" type="button" value="LN10" onclick="calc.display.value+=2.302"/>
<input class="button" type="button" value="log2E" onclick="calc.display.value+=1.442"/>
<input class="button" type="button" value="log10E" onclick="calc.display.value+=0.434"/>
<input class="button" type="button" value="EXP" onclick="exp_function"/>
</form>
</div>
</div>
    </form>
</body>
</html>
