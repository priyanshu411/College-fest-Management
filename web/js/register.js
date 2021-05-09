//register page javaScript


//validate reg
function validate_reg()
{
    let name = document.getElementById("name").value;
    let er_no = document.getElementById("er_no").value;
    let contact = document.getElementById("contact").value;
    let pass = document.getElementById("pass").value;
    let con_pass = document.getElementById("con_pass").value;
    let flag = false;
    for (i = 0; i < name.length && flag == false; i++)
    {
        if (name.charAt(i) >= 'a' && name.charAt(i) <= 'z' || name.charAt(i) >= 'A' && name.charAt(i) <= 'Z' || name.charAt(i) <= ' ')
            flag = false;
        else
            flag = true;
    }
    if (name == "" || er_no == "" || contact == "" || pass == "" || con_pass == "")
    {
        document.getElementById("message").innerHTML = "Plese fill all fields";
    } else if (flag)
    {
        document.getElementById("message").innerHTML = "Name contain only A-Z or a-z";
    } else if (contact.length != 10)
    {
        document.getElementById("message").innerHTML = "Contact No max & min length is 10";
    } else if (pass.localeCompare(con_pass) != 0)
    {
        document.getElementById("message").innerHTML = "Password not match!";
    } else
    {
        submit_form(name, er_no, contact, pass);
    }
}
//            submit data


function submit_form(name, er_no, contact, pass) {

    let req = new XMLHttpRequest();
    req.open("post", "backendJsp/register_back.jsp", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send("name=" + name + "&er_no=" + er_no + "&contact=" + contact + "&pass=" + pass);
    req.onreadystatechange = function ()
    {
        if (req.readyState === 4 && req.status === 200)
        {
            document.getElementById("message").innerHTML = req.responseText;
        }

    };
}