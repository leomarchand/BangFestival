import processing.video.*;
import processing.core.PImage;
import oscP5.*;
import netP5.*;

int movieHeight;
int movieWidth;

int screenAlpha;
int screenAlphaDelta;
int liamAlpha;
int liamAlphaDelta;
int sunnyAlpha;
int sunnyAlphaDelta;

int[] liamRGB;
int[] sunnyRGB;

OscP5 oscP5;
NetAddress myRemoteLocation;

PImage bg;
Movie movie0;
Movie movie1;
Movie movie2;
Movie movie3;
Movie movie4;
Movie movie5;
Movie movie6;
Movie movie7;
Movie movie8;
Movie movie9;
Movie movie10;
Movie movie11;
Movie movie12;
Movie movie13;
Movie movie14;
Movie movie15;
Movie movie16;
Movie movie17;
Movie movie18;
Movie movie19;
Movie movie20;
Movie movie21;
Movie movie22;
Movie movie23;
Movie movie24;
Movie movie25;
Movie movie26;
Movie movie27;
Movie movie28;
Movie movie29;
Movie movie30;
Movie movie31;
Movie movie32;
Movie movie33;
Movie movie34;
Movie movie35;
Movie movie36;
Movie movie37;
Movie movie38;
Movie movie39;
Movie movie40;
Movie movie41;
Movie movie42;
Movie movie43;
Movie movie44;
Movie movie45;
Movie movie46;
Movie movie47;
Movie movie48;
Movie movie49;
Movie movie50;
Movie movie51;
Movie movie52;
Movie movie53;
Movie movie54;
Movie movie55;
Movie movie56;
Movie movie57;
Movie movie58;
Movie movie59;
Movie movie60;
Movie movie61;
Movie movie62;
Movie movie63;
Movie movie64;
Movie movie65;


Movie[] movies;
int leftMovieIndex;
int rightMovieIndex;

void setup() {
  size(displayWidth, displayHeight, P2D);
  bg = loadImage("000.black.jpg");
  screenAlpha = 0;
  screenAlphaDelta = 10;
  liamAlpha = 0;
  liamAlphaDelta = -10;
  sunnyAlpha = 0;
  sunnyAlphaDelta = -10;
  
  liamRGB = new int[] {255, 255, 255};
  sunnyRGB = new int[] {255, 255, 255};

  oscP5 = new OscP5(this,5001);
  myRemoteLocation = new NetAddress("127.0.0.1",5001);

  movieWidth = displayWidth/2;
  movieHeight = movieWidth*3/4;

  
  movie0 = new Movie(this, "bang.mov");
  movie1 = new Movie(this, "bang1.mov");
  movie2 = new Movie(this, "bang2.mov");
  movie3 = new Movie(this, "batic1.mov");
  movie4 = new Movie(this, "batic2.mov");
  movie5 = new Movie(this, "batic3.mov");
  movie6 = new Movie(this, "batic4.mov");
  movie7 = new Movie(this, "batic4a.mov");
  movie8 = new Movie(this, "batic5Leaf.mov");
  movie9 = new Movie(this, "batic6Leaf.mov");
  movie10 = new Movie(this, "batic7Leaf.mov");
  movie11 = new Movie(this, "batic8Leaf.mov");
  movie12 = new Movie(this, "block1.mov");
  movie13 = new Movie(this, "block2.mov");
  movie14 = new Movie(this, "block3.mov");
  movie15 = new Movie(this, "block4.mov");
  movie16 = new Movie(this, "block5.mov");
  movie17 = new Movie(this, "blockNote.mov");
  movie18 = new Movie(this, "blockNote1.mov");
  movie19 = new Movie(this, "circle1a.mov");
  movie20 = new Movie(this, "circle2a.mov");
  movie21 = new Movie(this, "circle3a.mov");
  movie22 = new Movie(this, "circle4a.mov");
  movie23 = new Movie(this, "circle5a.mov");
  movie24 = new Movie(this, "circle6a.mov");
  movie25 = new Movie(this, "circle7a.mov");
  movie26 = new Movie(this, "circle8a.mov");
  movie27 = new Movie(this, "circle9.mov");
  movie28 = new Movie(this, "circle10.mov");
  movie29 = new Movie(this, "circle11.mov");
  movie30 = new Movie(this, "circle12.mov");
  movie31 = new Movie(this, "circleHalfLine.mov");
  movie32 = new Movie(this, "circleHalfLine2.mov");
  movie33 = new Movie(this, "circlesHalf.mov");
  movie34 = new Movie(this, "circlesThree.mov");
  movie35 = new Movie(this, "cloud1.mov");
  movie36 = new Movie(this, "cloud2.mov");
  movie37 = new Movie(this, "cloud3.mov");
  movie38 = new Movie(this, "cloud4.mov");
  movie39 = new Movie(this, "cloud5.mov");
  movie40 = new Movie(this, "cloud6.mov");
  movie41 = new Movie(this, "eyes1Long.mov");
  movie42 = new Movie(this, "eyes2Long.mov");
  movie43 = new Movie(this, "lines1.mov");
  movie44 = new Movie(this, "lines2.mov");
  movie45 = new Movie(this, "lines3.mov");
  movie46 = new Movie(this, "lines4.mov");
  movie47 = new Movie(this, "lines5.mov");
  movie48 = new Movie(this, "lines8.mov");
  movie49 = new Movie(this, "spirala.mov");
  movie50 = new Movie(this, "spirala1.mov");
  movie51 = new Movie(this, "spirala2.mov");
  movie52 = new Movie(this, "splash.mov");
  movie53 = new Movie(this, "splash2.mov");
  movie54 = new Movie(this, "splash2a.mov");
  movie55 = new Movie(this, "splash3.mov");
  movie56 = new Movie(this, "splash4.mov");
  movie57 = new Movie(this, "splash6.mov");
  movie58 = new Movie(this, "splash6a.mov");
  movie59 = new Movie(this, "splash7.mov");
  movie60 = new Movie(this, "splash8.mov");
  movie61 = new Movie(this, "triangleLong.mov");
  movie62 = new Movie(this, "triangles.mov");
  movie63 = new Movie(this, "triangles1.mov");
  movie64 = new Movie(this, "triangles2.mov");
  movie65 = new Movie(this, "triangles3.mov");
  
  movies = new Movie[] { movie0, movie1, movie2, movie3, movie4, movie5, movie6, movie7, movie8, movie9, movie10, movie11,
                         movie12, movie13, movie14, movie15, movie16, movie17, movie18, movie19, movie20, movie21, movie22, movie23,
                         movie24, movie25, movie26, movie27, movie28, movie29, movie30, movie31, movie32, movie33, movie34, movie35,
                         movie36, movie37, movie38, movie39, movie40, movie41, movie42, movie43, movie44, movie45, movie46, movie47,
                         movie48, movie49, movie50, movie51, movie52, movie53, movie54, movie55, movie56, movie57, movie58, movie59,
                         movie60, movie61, movie62, movie63, movie64, movie65 };
                         
  leftMovieIndex = 0;
  rightMovieIndex = movies.length/2;
  
  movies[leftMovieIndex].loop();
  movies[rightMovieIndex].loop();

}

void draw() {
  noCursor();
  image(bg, 0, 0, displayWidth, displayHeight);
  
  tint(sunnyRGB[0],sunnyRGB[1],sunnyRGB[2],255);
  image(movies[leftMovieIndex], 0, displayHeight/2-movieHeight/2, movieWidth, movieHeight);
  tint(255, sunnyAlpha);
  image(bg, 0, displayHeight/2-movieHeight/2, movieWidth, movieHeight);
  tint(liamRGB[0],liamRGB[1],liamRGB[2],255);
  image(movies[rightMovieIndex], movieWidth, displayHeight/2-movieHeight/2, movieWidth, movieHeight);
  tint(255, liamAlpha);
  image(bg, movieWidth, displayHeight/2-movieHeight/2, movieWidth, movieHeight);
  tint(255, screenAlpha);
  image(bg, 0, 0, displayWidth, displayHeight);
  if (screenAlpha > 0 ) {
    screenAlpha += screenAlphaDelta;
    
    if (screenAlpha > 300) {
      screenAlphaDelta = -1*screenAlphaDelta;
      movies[leftMovieIndex].stop();
      movies[rightMovieIndex].stop();
      
      leftMovieIndex = (leftMovieIndex + 1) % movies.length;
      rightMovieIndex = (rightMovieIndex + 1) % movies.length;

      
      movies[leftMovieIndex].loop();
      movies[rightMovieIndex].loop();
    } 
  } else {
      screenAlpha = 0;
  }
  if (liamAlpha <= 0) {
    liamAlpha = 0;
  } else if (liamAlpha >=255) {
    liamAlpha = 255;
  } else {
    liamAlpha += liamAlphaDelta;
  }
  if (sunnyAlpha <= 0) {
    sunnyAlpha = 0;
  } else if (sunnyAlpha >=255) {
    sunnyAlpha = 255;
  } else {
    sunnyAlpha += sunnyAlphaDelta;
  }

}

void movieEvent(Movie m) {
  m.read();
}

void keyPressed() {
  switch (key) {
    case 32:
      screenAlpha = 5;
      screenAlphaDelta = Math.abs(screenAlphaDelta);
      break;
    case 108:
      liamAlphaDelta *= -1;
      liamAlpha += liamAlphaDelta;
      break;
    case 115:
      sunnyAlphaDelta *= -1;
      sunnyAlpha += sunnyAlphaDelta;
      break;
    default:
      break;
  }
}

void oscEvent(OscMessage theOscMessage) {

  if(theOscMessage.checkAddrPattern("/bf/liam")) {
        if(theOscMessage.checkTypetag("f")) {
          float liamFloat = theOscMessage.get(0).floatValue();
          System.out.println("Liam: " + liamFloat);           
          liamRGB = ampToRGB((liamFloat + 50)/50);
        }
      }
      if(theOscMessage.checkAddrPattern("/bf/sunny")) {
        if(theOscMessage.checkTypetag("f")) {
          float sunnyFloat = theOscMessage.get(0).floatValue();
          System.out.println("Sunny: " + sunnyFloat);  
          sunnyRGB = ampToRGB((sunnyFloat + 50)/50);
        }
      } 
}

int[] ampToRGB(float amp) {
  if ( amp < 0.1 ) {
      return new int[ ] { 255, 255, 255 };
  } else if ( amp < 0.6 ) {
    return new int[] { floor(255*0.5), floor(255*(amp/0.6*.3 +.5)), floor(255*0.5) };  
  } else if ( amp < 0.8 ) {
    return new int[] { floor(255*((amp - 0.6)/0.2*.3 + 0.5)), floor(255*0.8), floor(255*0.5) };
  } else if ( amp < 0.9 ) {
    return new int[] { floor(255*0.8), floor(255*(0.8 - (amp-0.8)/0.1 *.3)), floor(255*(0.5 - (amp-0.8)/0.1*.25)) };
  } else {
    return new int[] { floor(255*0.8), floor(255*(0.5 - (amp-0.9)/0.1 *.25)), floor(255*0.25) };
  }
}


