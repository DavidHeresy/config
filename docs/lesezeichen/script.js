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
    let tags = new Set();

    for(i = 0; i < (data.length / 4) - 1; i++) {
        let url = data[4*i]
        let name = data[4*i +1]
        let attrs = data[4*i + 2]
        links.innerHTML += `<p class="${attrs}"><a href="${url}">${name}</a></p>`;
        for (attr of attrs.split(" ")) {
            console.log(attr);
            classes.add(attr);
        }
    }

    console.log("foo");
    let filter = document.querySelector("#filter");
    for (tag in Array.from(classes)) {
        console.log(tag);
        tags.innerHTML += ` ${tag}`
    }
}
