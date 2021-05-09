//login javascript file
//validate login data
function validate()
{

    let er_no = document.getElementById("er_no").value;
    let pass = document.getElementById("pass").value;
    let userType;
    if (document.getElementById("student").checked) {
        userType = document.getElementById("student").value;
    } else {
        userType = document.getElementById("admin").value;
    }
    console.log(er_no + "," + pass + "," + userType);
    if (er_no.charAt(0) == " " || pass.charAt(0) == " " || er_no == "" || pass == "")
    {
        document.getElementById("message").innerHTML = "Plese fill all fields";
        return false;
    } else {
        return true;
    }

}