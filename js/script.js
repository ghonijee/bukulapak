$(document).ready(function(){
   //var cari = document.getElementById("cari");

   $("#cari").on("keyup", function(){
      $("#content").load("control/cari.php?key=" + $("#cari").val());

   });

});