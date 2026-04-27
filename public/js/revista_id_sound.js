window.onload = function () {

show_revista();

 function show_revista() {

        const id = document.getElementById("sound").value;
        
    fetch('/revistaSoundMax/')
    .then(response => response.json()) // <-- important line
    .then(response => {
        console.log(response);
        JSON.stringify(response);
        // changed .value to .innerHTML but you can handle it as you wish
        const txt = response[0].id;


        const id1 = txt + 1 - id
        fetch('/revistaSound2/' + id1)
            .then(response => response.json()) // <-- important line
            .then(response => {
                console.log(response);
                JSON.stringify(response);
                // changed .value to .innerHTML but you can handle it as you wish
                const ola = response[0].link;
        
                document.getElementById("link").src = ola;


            })
            .catch(error => {
                alert("Nope");
            })})
    };

}




           