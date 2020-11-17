<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Trường Đẹp Trai</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/mail.css">
</head>
<body>
		 <div class="gmail" id="gmail">
   <div class="tittle"> 
    
     <div class="control">
      <ul>
        <li style="width: 82%;"><div class="left"><h2>Thư Mới </h2></div></li>
        <li><a href="#" onclick="zoomin()"><h2 id="zoom">_</h2></a></li>
        <li><a href="#" onclick="fullscreen()" ><h2 id="fullscreen"> <img src="https://ssl.gstatic.com/ui/v1/icons/mail/expand_window.png"></h2></a></li>
        <li><a href="#" onclick="closee()"><h2 style="margin-top: 18px;">X</h2></a></li>
    </ul>
   </div>
   </div>
  
   <div class="connten" id="connten" style="display: block;">
     <div class="nguoinhan"><span id="to">Người Nhận</span>
      <input type="text" name="a"  spellcheck="true" style="border: none;margin-top: 5px;" onclick="haha() ">
  
      <hr>
   
      <input class="txt_to" type="text" name="a" placeholder="Chủ đề" aria-label="Chủ đề" tabindex="1" spellcheck="true" style="border: none;margin-left: 10px;"onclick="hihi()" >
      <hr>
         <script type="text/javascript">
        function haha() {
          document.getElementById("to").innerHTML = "Đến";
        }
         function hihi() {
          document.getElementById("to").innerHTML = "Người Nhận";
        }
      </script>
      <textarea style="border: none;margin-left: 10px;"></textarea>
      <div class="btn">
           <button  type="button" class="sent" > Gửi</button>
           <button  type="button" class="select" > <img src="https://friconix.com/png/fi-xtldxx-sort-up-thin.png" width="30" height="20"></button>
          
                  <ul style="display: flex;
    float: right;position: relative;right: 20%;">
                    <li><a href="#"><img src="https://www.gstatic.com/images/icons/material/system/1x/text_format_black_20dp.png"></a></li>
                    <li><a href="#"><img src="https://www.gstatic.com/images/icons/material/system/1x/attach_file_black_20dp.png"></a></li>
                    <li><a href="#"><img src="https://www.gstatic.com/images/icons/material/system/1x/insert_link_black_20dp.png"></a></li>
                    <li><a href="#"><img src="https://www.gstatic.com/images/icons/material/system/1x/insert_emoticon_black_20dp.png"></a></li>
                    <li><a href="#"><img src="https://www.gstatic.com/images/icons/material/system/1x/attach_drive_black_20dp.png"></a></li>
                    <li><a href="#"><img src="https://www.gstatic.com/images/icons/material/system/1x/insert_photo_black_20dp.png"></a></li>
                    <li><a href="#"><img src="https://www.gstatic.com/images/icons/material/system/1x/lock_clock_black_20dp.png"></a></li>
                    <li><a href="#"><img src="https://www.gstatic.com/images/icons/material/system/1x/ink_pen_black_20dp.png"></a></li>
                  </ul>
                  <ul style="display: flex;
    float: right;
    position: absolute;
    right: 0px;
    bottom: 0px;">
                    <li><a href="#"><img src="https://www.gstatic.com/images/icons/material/system/1x/more_vert_black_20dp.png"></a></li>
                    <li><a href="#"><img src="https://www.gstatic.com/images/icons/material/system/1x/delete_black_20dp.png"></a></li>
                  </ul>
          
      </div>
     
     </div>
   
     

     </div>

   </div>

 <script>
function zoomin() {
  var x = document.getElementById('connten');
  var y = document.getElementById('gmail');
  if (x.style.display === 'none') {
    x.style.display = 'block';
    document.getElementById("zoom").innerHTML = "_";
    y.style.width="42%";
    y.style.right ="2%";
    y.style.bottom = "0px";
  } else {
    x.style.display = 'none';
    document.getElementById("zoom").innerHTML = "-";
    y.style.width="42%";
    y.style.right ="2%";
    y.style.bottom = "0px";
    document.getElementById("fullscreen").className = "full";
  }
}

function fullscreen() {
  var x = document.getElementById('connten');
  var y = document.getElementById('gmail');
  if(y.style.width==="1000px"){
    y.style.width="42%";
    y.style.right ="2%";
    y.style.bottom = "0px";
    document.getElementById("fullscreen").className = "full";
    document.getElementById("zoom").innerHTML = "_";
    x.style.display = 'block';
  }
  else{
    y.style.width="1000px";
    document.getElementById("zoom").innerHTML = "_";
    document.getElementById("fullscreen").className = "exitfull";
    x.style.display = 'block';
  }
  
  
}

function closee() {
  document.getElementById('gmail').style.display = 'none';
}
</script>
</body>
</html>