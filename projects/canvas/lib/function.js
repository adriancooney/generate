// shim layer with setTimeout fallback
window.requestAnimFrame = (function(){
    return  window.requestAnimationFrame   || 
        window.webkitRequestAnimationFrame || 
        window.mozRequestAnimationFrame    || 
        window.oRequestAnimationFrame      || 
        window.msRequestAnimationFrame     || 
        function( callback ){
        window.setTimeout(callback, 1000 / 60);
    };
})();

//Thanks Paul irish!
(function animloop(){
    requestAnimFrame(animloop);
    //render();
})();

var canvas = document.getElementById("canvas"),
    ctx = canvas.getContext("2d");