//adminProfile javascript file

//get all student data

let value = document.getElementById("event").value; //for window load event
window.onload = getList(value);
function getList(event)
{
    console.log("1");
    let req = new XMLHttpRequest();
    req.open("post", "admin_backend/student_participate.jsp", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send("event=" + event);
    console.log("2");
    req.onreadystatechange = function ()
    {
        if (req.readyState === 4 && req.status === 200)
        {
            document.getElementById("table").innerHTML = req.responseText;
        }

    };
}
