function validate()
{
	var txtName=document.getElementById("txtName");
	var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	var txtEmail=document.getElementById("txtEmail");
	var phoneno = /^\(?([7-9]{1})\)??([0-9]{9})$/;
	var txtPhone= document.getElementById("txtPhone");
	var txtNofam =document.getElementById("txtNofam");
	var txtcity =document.getElementById("txtcity");
	var txtPincode=document.getElementById("txtPincode");
	var txtIncome=document.getElementById("txtIncome");
	var area=document.getElementById("area");
	var valid=true;
	
	document.getElementById("etxtName").style.visibility="hidden";
	document.getElementById("etxtEmail").style.visibility = "hidden";
	document.getElementById("etxtPhone").style.visibility = "hidden";
	document.getElementById("etxtNofam").style.visibility="hidden";
	document.getElementById("etxtcity").style.visibility ="hidden";
	document.getElementById("etxtPincode").style.visibility="hidden";
	document.getElementById("etxtIncome").style.visibility="hidden";
	document.getElementById("earea").style.visibility="hidden";
	if(txtName.value.length<=0)
		{
		document.getElementById("etxtName").style.visibility="visible";
		valid=false;
		}
	if(txtEmail.value.length<=0)
	{
	 document.getElementById("etxtEmail").style.visibility = "visible";
	 valid=false;
	}
	 if(emailPattern.test(txtEmail.value)==false )
		{
		document.getElementById("etxtEmail").style.visibility = "visible";
		valid=false;
		}
	 if(txtPhone.value.length<=0)
		{
		 document.getElementById("etxtPhone").style.visibility = "visible";
		 valid=false;
		}
	 if(txtNofam.value.length<=0)
		 {
		 document.getElementById("etxtNofam").style.visibility= "visible";
		 valid=false;
		 }
	 if(txtcity.value.length<=0)
	 {
	 document.getElementById("etxtcity").style.visibility= "visible";
	 valid=false;
	 }
	 if(txtPincode.value.length<=0)
	 {
	 document.getElementById("etxtPincode").style.visibility= "visible";
	 valid=false;
	 }
	 if(txtIncome.value.length<=0)
	 {
	 document.getElementById("etxtIncome").style.visibility= "visible";
	 valid=false;
	 }
	 if(area.value=="select")
		 {
		 document.getElementById("earea").style.visibility="visible";
		 valid=false;
		 }
	 
	return valid;
	
}
function validate1()
{
	var txtrice=document.getElementById("txtrice");
	var txtwheat=document.getElementById("txtwheat");
	var txtsugar=document.getElementById("txtsugar");
	var sh=document.getElementById("sh");
	var valid=true;
	
	document.getElementById("etxtrice").style.visibility="hidden";
	document.getElementById("etxtwheat").style.visibility="hidden";
	document.getElementById("etxtsugar").style.visibility="hidden";
	document.getElementById("esh").style.visibility="hidden";
	 if(txtrice.value.length<=0)
	 {
	 document.getElementById("etxtrice").style.visibility= "visible";
	 valid=false;
	 }
	 if(((txtrice.value)<=0) || ((txtrice.value)>500))
		 {
		 
		 document.getElementById("etxtrice").style.visibility= "visible";
		 valid=false;
		 }
	 if(txtwheat.value.length<=0)
	 {
	 document.getElementById("etxtwheat").style.visibility= "visible";
	 valid=false;
	 }
	 if(((txtwheat.value)<=0) || ((txtwheat.value)>500))
	 {
	 
	 document.getElementById("etxtwheat").style.visibility= "visible";
	 valid=false;
	 }
	 if(txtsugar.value.length<=0)
	 {
	 document.getElementById("etxtsugar").style.visibility= "visible";
	 valid=false;
	 }
	 if(((txtsugar.value)<=0) || ((txtsugar.value)>500))
	 {
	 
	 document.getElementById("etxtsugar").style.visibility= "visible";
	 valid=false;
	 }
	 if(sh.value=="select")
		 {
		 document.getElementById("esh").style.visibility="visible";
		 valid=false;
		 }
	 
	return valid;
	

	}
function validate2()
{
	var txtuname=document.getElementById("txtuname");
	var txtpass=document.getElementById("txtpass");
	var valid=true;
	document.getElementById("etxtuname").style.visibility="hidden";
	document.getElementById("etxtpass").style.visibility="hidden";
	if(txtuname.value.length<=0)
		{
		document.getElementById("etxtuname").style.visibility="visible";
		valid=false;
		}
	if(txtpass.value.length<=0)
	{
	document.getElementById("etxtpass").style.visibility="visible";
	valid=false;
	}
	return valid;
}
function validate3()
{
	var months=document.getElementById("months");
	var valid=true;
	document.getElementById("emonths").style.visibility="hidden";
	if(months.value=="select")
		{
		document.getElementById("emonths").style.visibility="visible";
		valid=false;
		}
	return valid;
}
function validate4()
{
	var cno=document.getElementById("cno");
	var valid=true;
	document.getElementById("ecno").style.visibility="hidden";
	if(cno.value.length<=0)
		{
		document.getElementById("ecno").style.visibility="visible";
		valid=false;
		}
	return valid;
}
