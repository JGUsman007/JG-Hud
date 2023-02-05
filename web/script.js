$(document).ready(function () {
  window.addEventListener('message', function(event){
    const data = event.data;

    switch (data.message) {
      
      case 'toggle': {
        data.value ? $("body").show() : $("body").hide();
        break;
      }

      case 'info': {
        $("#bank").html(data.value.bank)
        $("#money").html(data.value.money);
        $("#id").html(data.value.id);
        $("#job").html(data.value.job);
        $("#grade").html(data.value.grade);
        break;
      }
    }
  });
});