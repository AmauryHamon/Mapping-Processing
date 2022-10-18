//var settings={
//  ID: 'CONTROL PANEL',
//  n:1,
//  num:20,
//  rowNum:4,
//  colNum:4,
//  l:0.8,
//  rectStroke:1,
//    deepStroke:1,
//    strokeWeightAdding:true,
//}

//var utility = function() {
//  this.refresh = function() {
//    redraw();
//  };
//  this.save = function() {  
//    save(pg,'perspectiveGrid.jpg');
//  };
//};


//var ctrlBoo,shiftBoo,altBoo,pauseBoo=false,ranBoo=false,onCtrlerBoo=false,touchBoo,inputX=0,inputY=0,x=0,y=0,px=x,py=y;

//void setup() {

//  w=1112;
//  h=834;
//  createCanvas(w, h);
  
//  var utilities = new utility();
//  // Creating a GUI with options.
//  //var gui = new dat.gui({name: 'My GUI'});
//  gui = new dat.GUI();
//  //gui.remember(settings);
//  gui.add(settings, 'ID');
//  /*nG=gui.add(settings, 'n', 1, 20,1);*/
//  numG=gui.add(settings, 'num', 1, 100);
//  rG=gui.add(settings, 'rowNum', 1, 100, 1);
//  cG=gui.add(settings, 'colNum', 1, 100, 1);
//  lG=gui.add(settings, 'l', 0, 1, 1/100000);
  
//  rsG=gui.add(settings,'rectStroke',0,1,1);
//  dsG=gui.add(settings,'deepStroke',0,1,1);
  
//  gui.add(settings,'strokeWeightAdding');
  
//  gui.add(utilities, 'refresh');
//  gui.add(utilities, 'save');
  
//  //position gui
//  document.getElementsByClassName('dg ac')[0].style.right = '893px'; 
//  document.getElementsByClassName('dg ac')[0].style.top = '40px';
  
//  gui.domElement.addEventListener('mouseover',function(){
//  onCtrlerBoo=true;return false;});
//  gui.domElement.addEventListener('mouseout',function(){
//  onCtrlerBoo=false;return false;})  ;
  
//  pg=createGraphics(w,h);
//}



//void draw() {
  
//  //var w=windowWidth;
//  //var h=windowHeight;

//  background(220);

  
//  pg.clear();
  
//  // img=createImage(w,h);
//  // img.loadPixels();
  
  
//  pg.rectMode(RADIUS);
//  pg.noFill();
  
//  if(touchBoo==true){
//    inputX=touches[0][0];
//    inputY=touches[0][1];
//  }else{
//    inputX=mouseX;
//    inputY=mouseY;
//  }
//  if(pauseBoo==false){
//  x=inRanges(0,Math.abs(inputX-w/2),w/2);
//  y=inRanges(0,Math.abs(inputY-h/2),h/2);
//  px=x;py=y;
//  }else{
//  x=px;y=py;
//  }
  
//  if(pauseBoo==true&&ranBoo==true){
//    x=px*noise(px,frameCount/100);
//    y=py*noise(py,frameCount/100);
//  }
  
//  let oriX=x;
//  let oriY=y;
//  for(let k=0;k<settings.n;k++){
//    let stepx,stepy,step;
    
//    if(settings.strokeWeightAdding==true){
//    pg.strokeWeight((k+1)*settings.rectStroke);
//    }else{
//      pg.strokeWeight(settings.rectStroke);
//    }
    
//    x=oriX*(settings.rowNum/2-k)/(settings.rowNum/2);
//    y=oriY*(settings.colNum/2-k)/(settings.colNum/2);

//    for(step=0;step<settings.num;step++){
//      stepx=x*Math.pow(settings.l,step);
//      stepy=y*Math.pow(settings.l,step);
//      if(stepx<1|| stepy<1){break;}
//      pg.rect(w/2,h/2,stepx,stepy);
//    }
//    pg.translate(w/2,h/2);
    
//    if(settings.strokeWeightAdding==true){
//      pg.strokeWeight((k+1)*settings.deepStroke);
//    }else{
//      pg.strokeWeight(settings.deepStroke);
//    }
    
//    for(let i=0;i<=settings.rowNum-k*2;i++){
//      let linex=map(i,0,settings.rowNum-k*2,x,-x);
//      let lineStepx=map(i,0,settings.rowNum-k*2,stepx,-stepx);
//      pg.line(linex,y,lineStepx,stepy);
//      pg.line(linex,-y,lineStepx,-stepy);
//    }
//    for(let j=0;j<=settings.colNum-k*2;j++){
//      let liney=map(j,0,settings.colNum-k*2,y,-y);
//      let lineStepy=map(j,0,settings.colNum-k*2,stepy,-stepy);
//      pg.line(x,liney,stepx,lineStepy);
//      pg.line(-x,liney,-stepx,lineStepy);
//    }
//    pg.translate(-w/2,-h/2);
//  }
  
//  image(pg,0,0)
  
//  // img.updatePixels();
//  return false;
//}

//void mouseWheel(event) {
//  switch(true){
//    case ctrlBoo:
//      settings.num += event.delta/100;
//      settings.num=Math.max(1,settings.num);
//      if(Math.pow(settings.l,settings.num)*Math.max(w/2,h/2)<1){
//        settings.num += -event.delta/100;
//      }
//      numG.setValue(settings.num);
//    break;
//    case shiftBoo:
//      settings.rowNum+=event.delta/100;
//      settings.rowNum=Math.max(1,settings.rowNum);
//      rG.setValue(settings.rowNum);
//    break;
//    case altBoo:
//      settings.colNum+=event.delta/100;
//      settings.colNum=Math.max(1,settings.colNum);
//      cG.setValue(settings.colNum);
//    break;
//    default:
//    settings.l+= - event.delta/100000;     
//    lG.setValue(settings.l);
//  }
  
//  // console.log(`settings.num:${settings.num},settings.rowNum:${settings.rowNum},settings.colNum${settings.colNum}`)
//  //uncomment to block page scrolling
//  return false;
//}
//void keyPressed() {
//  if(keyCode === CONTROL ){ctrlBoo=true;}
//  if(keyCode === SHIFT ){shiftBoo=true;
//  if(keyCode === ALT ){altBoo=true;
//  return false;
//}

//void keyReleased() {
//  if(keyCode ===  CONTROL ){ctrlBoo=false;}
//  if(keyCode === SHIFT ){shiftBoo=false;}
//  if(keyCode === ALT ){altBoo=false;}
//  return false; // prevent any default behavior
//}

//void inRanges(){
//  let args=[...arguments];
//  let min=args.shift();
//  let max=args.pop();
//  return Math.max(min,Math.min(...args,max));
//}

//void mousePressed(){
//  if(onCtrlerBoo==true){return false;}
//  if (mouseButton === LEFT) {
//    pauseBoo=!pauseBoo;
//    ranBoo=false;
//  }
//  if (mouseButton === RIGHT) {
//    pauseBoo=!pauseBoo;
//    ranBoo=pauseBoo;
//  }
//  //gui.close();
//  return false;
//}

//void mouseClicked(e) {
  
//return false;
//}

//void touchStarted(){
//touchBoo=true
//}
//void touchEnded(){
//touchBoo=false
//}
///*
//function touchMoved() {
//  touchBoo=true
//    inputX=touches[0][0];
//    inputY=touches[0][1];
//  return false;
//}
//*/
