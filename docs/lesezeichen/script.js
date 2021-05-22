function hook() {
    fetch ("./lesezeichen.txt")
        .then(response => response.text())
        .then(response => {
            let data = response.split("\n"); 
            populate(data);
        });
}

function populate(data) {
    let links = document.querySelector("#links");
    let classes = new Set();

    for(i = 0; i < (data.length / 4) - 1; i++) {
        let url = data[4*i]
        let name = data[4*i +1]
        let attrs = data[4*i + 2]
        links.innerHTML += `<p><a href="${url}" class="${attrs}">${name}</a></p>`;
        for (attr in attrs.split(" ")) {
            classes.add(attr);
        }
    }

    let tags = document.querySelector("#tags");
    tags.innerHTML = classes;
}
