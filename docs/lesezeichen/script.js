var STATE = {};

function hook() {
    fetch ("./data.txt")
        .then(res => res.text())
        .then(res => init(res));
}

function init(response) {
    let data = response.split("\n"); 
    let links = document.querySelector("#links");
    let tags = new Set();

    for(i = 0; i < (data.length / 3) - 1; i++) {
        let url = data[3*i]
        let name = url.replace(/^https?:\/\//, '');
        let attrs = data[3*i + 1]
        links.innerHTML += `<p class="LINK ${attrs}"><a href="${url}">${name}</a></p>`;
        for (attr of attrs.split(" ")) {
            tags.add(attr);
        }
    }

    tags.delete("");

    let filter = document.querySelector("#filter");

    for (tag of Array.from(tags)) {
        STATE[tag] = false;
        filter.innerHTML += `<button id="btn-${tag}"
            class="inactive"
            onclick="toggle('${tag}')"
            >${tag}</button> `;
    }
}

function toggle(tag) {
    let button = document.querySelector(`#btn-${tag}`);

    if (button.className == "inactive") {
        STATE[tag] = true;
        button.className = "active";
    }
    else {
        STATE[tag] = false;
        button.className = "inactive";
    }
    
    evaluate();
}

function evaluate() {
    let links = document.querySelectorAll(".LINK");
    for (link of links) {
        // Init: Show all links.
        link.style.display = "block";

        for (tag in STATE) {
            // Ignore inactive tags.
            if (STATE[tag] == false) {
                continue;
            }

            // Hide link, if it does not contains the active tags.
            if (link.className.indexOf(tag) == -1) {
                link.style.display = "none";
            }
        }
    }
}

