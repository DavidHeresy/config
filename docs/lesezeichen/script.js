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
            tags.add(attr);
        }
    }
    tags.delete("");

    let filter = document.querySelector("#filter");

    for (tag of Array.from(tags)) {
        console.log(tag);
        filter.innerHTML += `<button id="btn-${tag}"
            onclick="toggle('${tag}')"
            >${tag}</button> `
    }
}

function toggle(tag) {
    let links = document.querySelectorAll(`.${tag}`);
    for (link of links) {
        link.style.display = link.style.display == 'none' ? 'block' : 'none'
    }
    let button = document.querySelector(`#btn-${tag}`);
    button.style.textdecoration = link.style.textdecoration == 'none' ? 'line-through' : 'none';
}
