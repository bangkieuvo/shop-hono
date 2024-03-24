function getProduct(id) {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onload = function() {
        console.log(this.responseText);
        const myObj = JSON.parse(this.responseText);
        console.log(myObj);
    };
    xmlhttp.open("GET", "getProduct/" + id);
    xmlhttp.send();
};
function returnData(data){
    console.log(data);
};
function login(u,p){
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onload = function() {
        if(this.responseText == ""){
            console.log("null");
        }else{
            var currentPath = window.location.pathname;
            console.log(currentPath);
            const myObj = JSON.parse(this.responseText);
            console.log(myObj);
        }
        
    };
    param = "username=" + u + "&password=" + p;
    xmlhttp.open("post", "getUser",true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(param);
}

function login2(u,p, callback){
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onload = function() {
        if(this.responseText == ""){
            console.log("null");
        }else{
            const myObj = JSON.parse(this.responseText);
            callback(myObj)
        }
        
    };
    param = "username=" + u + "&password=" + p;
    xmlhttp.open("post", "getUser",true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(param);
}
function getdata(myObj){
    console.log(myObj);
    console.log(myObj)
}