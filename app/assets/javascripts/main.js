function proto_main_image(area){
  fileUp(area, function(e){
    $("#main_preview").attr("src", e.currentTarget.result).show();
    $(".cover-image-upload").css("background", "white");
  });
}


function proto_sub_image(area, num){
  fileUp(area, function(e){
    $("#sub_" + num + "_preview").attr("src", e.currentTarget.result).show()
    $("#image_" + num + "_uploader").css("background", "white");
  });
}

function fileUp(area, b) {
  var file = $(area).prop("files")[0],
  reader = new FileReader();
  reader.onload = b;
  reader.readAsDataURL(file);
}

function check_subimg(num){
  var subimg = $("#sub_" + num + "_preview")
  if (subimg.attr("src") != undefined) {
    subimg.show();
    $("#image_" + num + "_uploader").css("background", "white");
  }
}

function add_new_form_in_edit() {
  var $hideForm = $(".hide_form:first")
  $hideForm.show().removeClass("hide_form").addClass("appear_form");
  if($(".appear_form").length === 3){
    $(".add_sub_image_form").hide()
  }
}

function add_new_form_in_new(addNewForm, hideForm) {
  addNewForm.hide()
  hideForm.show().removeClass("hide_form").addClass("appear_form");
}
