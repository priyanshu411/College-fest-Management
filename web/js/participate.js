//participate in event (student) javascript file

//            get program from database

function getProgram(event)
{
    console.log(event);

    let req = new XMLHttpRequest();
    req.open("post", "backendJsp/program.jsp", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send("event=" + event);
    console.log("2");
    req.onreadystatechange = function ()
    {
        if (req.readyState === 4 && req.status === 200)
        {
            document.getElementById("program").innerHTML = req.responseText;
            document.getElementById("message").innerHTML = "* You already Participate";
        }

    };
}
function validate() {
    let event = document.getElementById("event").value;
    let prg = document.getElementsByClassName("program");
    let str = "";
    for (i = 0; i < prg.length; i++)
    {
        if (prg[i].checked)
            str = str + prg[i].value + ",";
    }
    if (event.localeCompare("Select Event") == 0) {
        document.getElementById("message").innerHTML = "First Select Event!";
    } else if (str.length == 0) {
        document.getElementById("message").innerHTML = " Select Program!";
    } else {
        submit(str);
    }

}

//submit data

function submit(strpro) {

    let req = new XMLHttpRequest();
    req.open("post", "backendJsp/participate_back.jsp", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send("program=" + strpro);
    console.log("2");
    req.onreadystatechange = function ()
    {
        if (req.readyState === 4 && req.status === 200)
        {
            document.getElementById("message").innerHTML = req.responseText;
            document.getElementById("program").innerHTML = "<legend>Programs</legend>";
        }

    };

}

