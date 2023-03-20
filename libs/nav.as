
var historia_a = new Array();
historia_a.push(1);
makeDiv = function(x, y, w, h, html, css) {  
     create and initialize DIV element  
    var d = document.createElement(div);  
    d.style.cssText = visibilityhidden;positionabsolute;max-width 900px; left0; top0; width + w + px; height + h + px; overflowvisible; scrolling='no'; + (css  css  );  
    d.innerHTML = html;  
     attach element to CreateJS stage  
    canvas.parentNode.appendChild(d);  
    var cjsDom = new createjs.DOMElement(d);  
    cjsDom.x = x;  
    cjsDom.y = y;  
    return stage.addChild(cjsDom);  
}  
  

rmDiv = function(id) {

    try {

        var elem = document.getElementById(id);
        elem.parentNode.removeChild(elem);

    }

    catch(e) {}

}



function historia() {
	

	
	if (historia_a.indexOf(exportRoot.esc1_mc.currentFrame) != -1) {
		
	} else {

		historia_a.push(exportRoot.esc1_mc.currentFrame);
		
	}
	

}

function atraz() {
	alert (exportRoot.esc1_mc.currentFrame)
	var aqui = (historia_a.indexOf(exportRoot.esc1_mc.currentFrame))-1
	createjs.Sound.stop();

	if (historia_a[0] == exportRoot.esc1_mc.currentFrame  historia_a[1] == exportRoot.esc1_mc.currentFrame ) {
		
		javascriptparent.changeViewPrev();
	}
	
	exportRoot.esc1_mc.gotoAndStop(Number(historia_a[aqui]))
	if (exportRoot.esc1_mc.currentFrame == 0  exportRoot.esc1_mc.currentFrame == 1) {
		exportRoot.esc1_mc.play();
	}
	
	
	
	
}

function avanza() {

	if (exportRoot.esc1_mc.timeline.duration == exportRoot.esc1_mc.currentFrame+1) {
		
		javascriptparent.changeViewNext()
		
	} else {
		createjs.Sound.stop();
		exportRoot.esc1_mc.play()
		
	}

	
	
}

createjs.DisplayObject.prototype.getName = function() {  
    if (!this.nameCache) {  
        var parent = this.parent;  
        var keys = Object.keys(parent);  
        var len = keys.length;  
        while (--len) {  
            if (parent[keys[len]] === this) {  
                this.nameCache = keys[len];  
                break;  
            }  
        }  
    }  
    return this.nameCache;  
}

