
$( document ).ready(function() {
    $(".container").show();
});



window.addEventListener('message', (event) => {
     const data = event.data;

     if (data.type == 'visible'){
        if (data.value == false) {

        $( document ).ready(function() {
            $(".container").hide();
        });

    }else {

        $( document ).ready(function() {
            $(".container").show();
        });

    }
    }

     if (data.type == 'info') {
        document.getElementById('bank').textContent = data.bank;
        document.getElementById('money').textContent = data.money;
        document.getElementById('job').textContent = data.job;
        document.getElementById('grade').textContent = data.grade;
        document.getElementById('id').textContent = data.id;
        console.log(data.bank);
     }
});