window.onload = function() {
    loadData();
}

function loadData() {
    fetch ("./lesezeichen.txt")
        .then(response => response.text())
        .then(lesezeichen => {
            let body = document.querySelector("body");
            body.innerHTML = body.innerHTML + lesezeichen;
        });
}
