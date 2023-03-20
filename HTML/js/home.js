
function openLeftMenu() {
  document.getElementById("leftMenu").style.display = "block";
}

function closeLeftMenu() {
  document.getElementById("leftMenu").style.display = "none";
}

function openRightMenu() {
  document.getElementById("rightMenu").style.display = "block";
}

function closeRightMenu() {
  document.getElementById("rightMenu").style.display = "none";
}
$(document).ready(function() {
  document.getElementById('pro-image').addEventListener('change', readImage, false);
  
  $( ".preview-images-zone" ).sortable();
  
  $(document).on('click', '.image-cancel', function() {
      let no = $(this).data('no');
      $(".preview-image.preview-show-"+no).remove();
  });
});



var num = 4;
function readImage() {
  if (window.File && window.FileList && window.FileReader) {
      var files = event.target.files; //FileList object
      var output = $(".preview-images-zone");

      for (let i = 0; i < files.length; i++) {
          var file = files[i];
          if (!file.type.match('image')) continue;
          
          var picReader = new FileReader();
          
          picReader.addEventListener('load', function (event) {
              var picFile = event.target;
              var html =  '<div class="preview-image preview-show-' + num + '">' +
                          '<div class="image-cancel" data-no="' + num + '">x</div>' +
                          '<div class="image-zone"><img id="pro-img-' + num + '" src="' + picFile.result + '"></div>' +
                          '<div class="tools-edit-image"><a href="javascript:void(0)" data-no="' + num + '" class="btn btn-light btn-edit-image">edit</a></div>' +
                          '</div>';

              output.append(html);
              num = num + 1;
          });

          picReader.readAsDataURL(file);
      }
      $("#pro-image").val('');
  } else {
      console.log('Browser not support');
  }
}


// verify password

function verifyPassword() {  
  var pw = document.getElementById("password").value;
  var cpw = document.getElementById("confpassword").value;

  //check empty password field  
  if(pw != cpw) {  
     document.getElementById("message").innerHTML = "Confirm password is not same";  
     return false;  
  }  
  else{
    return true;
  }
 
}  
// function verifyPassword() {  
//   var pw = document.getElementById("password").value;
//   var cpw = document.getElementById("confpassword").value;
//   //check empty password field  
//   if(pw != cpw) {  
//      alert("Confirm password is not same");  
//      cpw.focus();
//      return false;  
//   }
//     return true;
// } 
function gridlist(){
  document.getElementById("gridlist").style.display = "none";
  document.getElementById("listgrid").style.display = "block";
}
function listgrid(){
  document.getElementById("gridlist").style.display = "block";
  document.getElementById("listgrid").style.display = "none";
}