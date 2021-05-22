var STATE;

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
        links.innerHTML += `<p class="${attrs}" style="display: none"
            ><a href="${url}">${name}</a></p>`;
        for (attr of attrs.split(" ")) {
            tags.add(attr);
        }
    }
    tags.delete("");

    let filter = document.querySelector("#filter");

    for (tag of Array.from(tags)) {
        STATE[tag] = false;
        filter.innerHTML += `<button id="btn-${tag}"
            style="text-decoration: line-through"
            onclick="toggle('${tag}')"
            >${tag}</button> `;
    }
}

function toggle(tag) {
    let button = document.querySelector(`#btn-${tag}`);

    if (button.style.textDecoration == "line-through") {
        STATE[tag] = true;
        button.style.textDecoration = "none";
    }
    else {
        STATE[tag] = false;
        button.style.textDecoration = "line-through";
    }
    
    evaluate();
}

function evaluate() {
    let links = document.querySelector("p");
    for (link of links) {
        let tags = link.className.split(" ");
        let display = "none";
        for (tag of tags) {
            if (STATE[tag] == true) {
                display = "block";
                break;
            }
        }
        link.style.display = display;
    }
}

