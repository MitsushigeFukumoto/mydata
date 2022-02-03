$(function(){
  var imageArea = $("#imageArea");
  for(var i=1; i<=5; i++){
    imageArea.append("<img src='images/flower" + i + ".jpg'>");
  }

  $("#next").on("click", function(){
    if(parseInt(imageArea.css("left")) > -800) {
      imageArea.animate({
      "left" : "-=200px" }, "fast", "linear");
    }
  });

  $("#prev").on("click", function(){
    if(parseInt(imageArea.css("left")) < 0){
      imageArea.animate({
      "left" : "+=200px" }, "fast", "linear");
    }
  });
});
