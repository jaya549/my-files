function startnow(ccode){
	
	window.open('http://localhost:8089/exam/'+ccode,'exam','height=800,width=1000,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
}

function loginvalidate(){
	let valid=false;
	let pwd=document.querySelector("#pwd");
	let role=document.querySelector("#role");
	let userid=document.querySelector("#userid");
	if(userid.value===""){
		userid.style.border="2px solid red";
		document.querySelector(".euserid").style.display="block";
		valid=false;
	}else{
		userid.style.border=""
		document.querySelector(".euserid").style.display="none";
		valid=true;
	}
	if(pwd.value===""){
		pwd.style.border="2px solid red";
		document.querySelector(".epwd").style.display="block";
		valid=false;
	}else{
		pwd.style.border=""
		document.querySelector(".epwd").style.display="none";
		valid=true;
	}
	if(role.value===""){
		role.style.border="2px solid red";
		document.querySelector(".erole").style.display="block";
		valid=false;
	}else{
		role.style.border=""
		document.querySelector(".erole").style.display="none";
		valid=true;
	}
	if(valid===false)
		alert("Please fill the highlighted fields");
	return valid;
}

function validate(){
	let valid=false;
	let fname=document.querySelector("#fname");
	let lname=document.querySelector("#lname");
	let pwd=document.querySelector("#pwd");
	let cpwd=document.querySelector("#cpwd");
	let gender=document.querySelector("#gender");
	let phone=document.querySelector("#phone");
	let address=document.querySelector("#address");
	let email=document.querySelector("#email");
	
	if(fname.value===""){
		fname.style.border="2px solid red";
		document.querySelector(".efname").style.display="block";
		valid=false;
	}else{
		fname.style.border=""
		document.querySelector(".efname").style.display="none";
		valid=true;
	}
	
	if(pwd.value===""){
		pwd.style.border="2px solid red";
		document.querySelector(".epwd").style.display="block";
		valid=false;
	}else if(pwd.value.length<6){
		pwd.style.border="2px solid red"
		document.querySelector(".epwd").innerHTML="Password should be minimum 6 characters";
		document.querySelector(".epwd").style.display="block";
		valid=false;
	}else{
		pwd.style.border=""
		document.querySelector(".epwd").style.display="none";
		valid=true;
	}
	
	if(phone.value===""){
		phone.style.border="2px solid red";
		document.querySelector(".ephone").style.display="block";
		valid=false;
	}else{
		phone.style.border=""
		document.querySelector(".ephone").style.display="none";
		valid=true;
	}
	
	if(gender.value===""){
		gender.style.border="2px solid red";
		document.querySelector(".egender").style.display="block";
		valid=false;
	}else{
		gender.style.border=""
		document.querySelector(".egender").style.display="none";
		valid=true;
	}
	
	if(lname.value===""){
		lname.style.border="2px solid red";
		document.querySelector(".elname").style.display="block";
		valid=false;
	}else{
		lname.style.border=""
		document.querySelector(".elname").style.display="none";
		valid=true;
	}
	
	if(dob.value===""){
		dob.style.border="2px solid red";
		document.querySelector(".edob").style.display="block";
		valid=false;
	}
	else{		
		let currentyear=new Date().getFullYear();
		let birthyear=new Date(dob.value).getFullYear();
		let dif=currentyear-birthyear;
		if(dif<18){
			dob.style.border="2px solid red";
			document.querySelector(".edob").style.display="block";
			document.querySelector(".edob").innerHTML="Age must be greater than or equal to 18";
			valid=false;
		}
		else{
			dob.style.border=""
			document.querySelector(".edob").style.display="none";
			valid=true;
		}
	}
	
	if(address.value===""){
		address.style.border="2px solid red";
		document.querySelector(".eaddress").style.display="block";
		valid=false;
	}else{
		address.style.border=""
		document.querySelector(".eaddress").style.display="none";
		valid=true;
	}
	
	if(cpwd.value===""){
		cpwd.style.border="2px solid red";
		document.querySelector(".ecpwd").style.display="block";
		document.querySelector(".ecpwd").innerHTML="Password is required";
		valid=false;
	}
	if(cpwd.value!==pwd.value){
		cpwd.style.border="2px solid red";
		document.querySelector(".ecpwd").style.display="block";
		document.querySelector(".ecpwd").innerHTML="Repeat password not match";
		valid=false;
	}
	else{
		cpwd.style.border=""
		document.querySelector(".ecpwd").style.display="none";
		valid=true;
	}
	if(email.value===""){
		email.style.border="2px solid red";
		document.querySelector(".email").style.display="block";
		valid=false;
	}else{
		email.style.border=""
		document.querySelector(".email").style.display="none";
		valid=true;
	}
	
	if(!valid)
		alert("Please fill the highlighted fields");
		
	return valid;
}