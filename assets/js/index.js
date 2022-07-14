function dropdown(obj) {
    let hidden = obj.querySelector('.hidden');
    hidden.classList.remove("hidden");
    hidden.classList.add("visible");
}

function dropdownOut(obj) {
    let hidden = obj.querySelector('.visible');
    hidden.classList.remove("visible");
    hidden.classList.add("hidden");
}