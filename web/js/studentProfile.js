//student profile javascript file

let value = document.getElementById("event").value;
window.onload = getList(value);
function getList(event)
{
    console.log("1");
    let req = new XMLHttpRequest();
    req.open("post", "backendJsp/programList.jsp", true);
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

//            delete

function deletePrg(prgname)
{
    if (confirm("Are you Sure you want to delete"))
    {
        console.log("1");
        let req = new XMLHttpRequest();
        req.open("post", "backendJsp/deleteProgram.jsp", true);
        req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        req.send("prgname=" + prgname);
        console.log("2");
        req.onreadystatechange = function ()
        {
            if (req.readyState === 4 && req.status === 200)
            {
                value = document.getElementById("event").value;
//                           after delete get table  
                getList(value);
            }
        };
    }
}



