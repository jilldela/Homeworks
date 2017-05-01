document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('mycanvas');
  var ctx = canvas.getContext('2d');

// rectangle
  ctx.fillStyle = 'blue';
  ctx.fillRect(10, 10, 100, 100);

// circle
  ctx.beginPath();
    ctx.arc(75, 75, 50, 0, 2 * Math.PI);
    ctx.strokeStyle = 'green';
    ctx.lineWidth = 10;
    ctx.stroke();
    ctx.fillStyle = 'green';
    ctx.fill();

// triangle
  ctx.beginPath();
    ctx.strokeStyle = 'red';
    ctx.fillStyle = 'red';
    ctx.moveTo(55, 55);
    ctx.lineTo(105, 55);
    ctx.lineTo(55, 105);
    ctx.fill();
});
