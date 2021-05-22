function hook() {
    fetch ("./lesezeichen.txt")
        .then(response => response.text())
        .then(response => {
            let data = response.split("\n"); 
            let tags = document.querySelector("#tags");
            let links = document.querySelector("#links");
            tags.innerHTML = "Tags";
            for(i = 0; i < data.length / 4; i++) {
                links.innerHTML += `<p><a href=${data[i]}>${data[i+1]}</a></p>`
            }
        });
}
