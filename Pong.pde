float player_1_x;
float player_1_y;
float player_2_x;
float player_2_y;
float ball_x;
float ball_y;
float ball_speed_x;
float ball_speed_y;

int round;


void setup(){
  player_1_x = 20;
  player_1_y = 60;
  player_2_x = 780;
  player_2_y = 60;
  ball_x = 400;
  ball_y = 300;
  ball_speed_x = 0;
  ball_speed_y=0;
   round = 0;
  size(800, 600);
  rectMode(CENTER);
}


void draw (){
  background(0);
  fill (255, 75, 100);
  rect(player_1_x,player_1_y,20,100);
   rect(player_2_x,player_2_y,20,100);
    rect(ball_x,ball_y,10,10);
    fill(255, 255, 255);
       
    if(keyPressed){
            if(key==' '){
        ball_speed_x=4;
      }
       if(keyCode == CONTROL){
      if(player_1_y < 550){
  player_1_y = player_1_y + 5;
}
    }
if(keyCode == SHIFT){
  if(player_1_y > 50){
  player_1_y = player_1_y - 5;
}
}
    if(keyCode == DOWN){
      if(player_2_y < 550){
  player_2_y = player_2_y + 5;
}
    }
if(keyCode == UP){
  if(player_2_y > 50){
  player_2_y = player_2_y - 5;
  }
  }
  
 if (key=='p' || key=='P') {
   ball_speed_x=0;
   ball_speed_y=0;

}
    }
  
  

ball_x = ball_x + ball_speed_x;
ball_y = ball_y + ball_speed_y;

if(ball_x < 30){
  if(ball_y < (player_1_y + 55) && ball_y > (player_1_y - 55)){
    ball_speed_x = (- ball_speed_x) + 1;
    ball_speed_y = ball_speed_y - (player_1_y - ball_y) * 0.1;
    round = round + 1;
  
  }else{
    ball_speed_x = 0;
    ball_speed_y = 0;
    ball_x = 0;
    ball_y = 0;
    round = round + 0;
    fill(255, 255, 255);
    textSize(50);
    text ("GAME OVER", 230, 200);
  } 
}

if(ball_x > 770){
  if(ball_y < (player_2_y + 55) && ball_y > (player_2_y - 55)){
    ball_speed_x = (- ball_speed_x) + 1;
    ball_speed_y = ball_speed_y - (player_2_y - ball_y) * 0.1;
    round = round + 1;
  
  }else{
    ball_speed_x = 0;
    ball_speed_y = 0;
    ball_x = 0;
    ball_y = 0;
    round = round + 0;
    textSize(50);
    text ("GAME OVER", 230, 250);
    
  }
}

if(ball_y > 595 || ball_y < 5){
  ball_speed_y = -ball_speed_y;
}
if(ball_x > 795){
  ball_speed_x = - ball_speed_x;
}
fill(255, 255, 255);
textSize(20);
text("round: " + round, 330, 20);  }
