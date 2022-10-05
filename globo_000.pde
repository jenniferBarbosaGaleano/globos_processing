class Globo{
  float _d=80, _x, _y, _vx, _vy, r,v,a,centy;
  color col;
  
  Globo( float x, float y){

    _x = x;
    _y = y;
    _vx=random(-0.25,0.25);
    _vy=random(-2,-0.5);
    col=color(random(255),random(255),random(255));
    
  }
 
  void update(){

    _x = _x + _vx;
    _y = _y + _vy;
    //return _x; 
  }
  
   float update(float x, float y){
    if((x>_x-30 && x<_x+30) && (y>_y-30 && y<_y+30)){
        _vy=_vy+7;
        centy=1;
        return 1;
    }else{
        return 0;
    }
    //return _x; 
  }
  
  void pinchado(){
    _vy=_vy+7;
    centy=1;
  }
  void vientoDer(){
    _vx=_vx+1;
  }
  void vientoIzq(){
    _vx=_vx-1;
  }
  
  void dibujate(){
    if(centy==0){
    pushStyle();
    fill(col);
    pushMatrix();
    translate(_x, _y);
    ellipse(0, 0, _d-10,_d);
    translate(0,_d/2+5);
    triangle(0,-5,-5,0,5,0);
    popMatrix();
    popStyle();
    }else{
    pushStyle();
    fill(col);
    pushMatrix();
    translate(_x, _y);
    ellipse(0, 0, _d-10,_d);
    translate(0,-_d/2-5);
    triangle(0,5,5,0,-5,0);
    stroke(255);
    line(0,0,0,-13);
    line(2,0,-10,-20);
    line(-2,0,10,-20);
    popMatrix();
    popStyle();
    
    }
  }
}
