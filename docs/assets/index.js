window.onload = function() {
    setMeta();
    setTitle();
    setHeader();
    setFooter();
}


function setMeta() {
    fetch ("https://davidheresy.de/assets/meta.html")
        .then(response => response.text())
        .then(meta => {
            document.querySelector("head").innerHTML += meta;
        });
}


function setTitle() {
    let h1 = document.querySelector("main h1");
    document.title = h1.innerHTML + " • davidheresy.de";
}


function setHeader() {
    fetch ("https://davidheresy.de/assets/header.html")
        .then(response => response.text())
        .then(header => {
            let body = document.querySelector("body");
            body.innerHTML = header + body.innerHTML;
        });
}


function setFooter() {
    fetch ("https://davidheresy.de/assets/footer.html")
        .then(response => response.text())
        .then(footer => {
            let body = document.querySelector("body");
            body.innerHTML = body.innerHTML + footer;
        });
}

