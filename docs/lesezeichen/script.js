function hook() {
    fetch ("./lesezeichen.txt")
        .then(response => response.text())
        .then(response => {
            let data = response.split("\n"); 
            populate(data);
        });
}

function populate(data) {
    let tags = document.querySelector("#tags");
    let links = document.querySelector("#links");
    tags.innerHTML = "Tags";
    for(i = 0; i < (data.length / 4) - 1; i++) {
        links.innerHTML += `<p><a href=${data[4*i]}>${data[4*i+1]}</a></p>`;
    }
}
