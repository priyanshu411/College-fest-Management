//manage events (admin) javascript file

//        validate Add program
function validate_addprg() {
    let event = document.getElementById("event").value;
    let prgName = document.getElementById("programName_1").value;
    if (event.localeCompare("Select Event") == 0)
    {
        document.getElementById("msgprg").innerHTML = "Select Event";
    } else if (prgName == "" || prgName.charAt(0) == " ") {
        document.getElementById("msgprg").innerHTML = "Eenter Program Name";
    } else {
        add_program(event, prgName);
    }
}

//        add program
function add_program(event, prgName) {
    console.log("1");
    let req = new XMLHttpRequest();
    req.open("post", "admin_backend/addProgram.jsp", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send("event=" + event + "&PrgName=" + prgName);
    console.log("2");
    req.onreadystatechange = function ()
    {
        if (req.readyState === 4 && req.status === 200)
        {
            document.getElementById("msgprg").innerHTML = req.responseText;
        }

    };
}

//        validate Add event

function validate_addevent() {
    let eventName = document.getElementById("eventName").value;
    let eventDate = document.getElementById("eventDate").value;
    let tempdt = new Date(eventDate);
    let curdt=new Date();
    if (eventName == "" || eventName.charAt(0) == " ") {
        document.getElementById("msgevent").innerHTML = "Enter Event Name";
    } else if (eventDate == "") {
        document.getElementById("msgevent").innerHTML = "Enter Event Date";
    }
    else if(tempdt<curdt)
    {
        document.getElementById("msgevent").innerHTML = "Enter valid Date";
    }

    else {
        add_event(eventName, eventDate)
    }
}

//        add Event

function add_event(eventName, eventDate) {
    console.log("1");
    let req = new XMLHttpRequest();
    req.open("post", "admin_backend/addEvent.jsp", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send("event=" + eventName + "&date=" + eventDate);
    console.log("2");
    req.onreadystatechange = function ()
    {
        if (req.readyState === 4 && req.status === 200)
        {
            document.getElementById("msgevent").innerHTML = req.responseText;
        }

    };
}