//student change password javascript file

function validateCha() {

    let oldPass = document.getElementById("oldpass").value;
    let newPass = document.getElementById("newpass").value;
    if (oldPass == "" || oldPass.charAt(0) == " " || newPass == "" || newPass.charAt(0) == " ") {
        document.getElementById("msg").innerHTML = "Fill All Fields";
    } else {
        change(oldPass, newPass);
    }
}

function change(oldPass, newPass) {

    console.log("1");
    let req = new XMLHttpRequest();
    req.open("post", "backendJsp/stu_changePass.jsp", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send("old=" + oldPass + "&new=" + newPass);
    console.log("2");
    req.onreadystatechange = function ()
    {
        if (req.readyState === 4 && req.status === 200)
        {
            document.getElementById("msg").innerHTML = req.responseText;
            document.getElementById("oldpass").value = "";
            document.getElementById("newpass").value = "";
        }

    };
}