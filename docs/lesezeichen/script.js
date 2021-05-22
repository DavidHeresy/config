window.onload = function() {
    fetch ("./lesezeichen.txt")
        .then(response => response.text())
        .then(lesezeichen => {
            let tags = document.querySelector("tags");
            let links = document.querySelector("links");
            tags.innerHTML = "Tags";
            links.innerHTML = lesezeichen;
        });
}
