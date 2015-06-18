class Sketch10 extends EmbeddedSketch {
  int mBgCol = 0;
  int mBgColInv = 255;
  int mOpaL = 50;
  int mOpaR = 50;
  
  PImage img;

  void setup() {
    size(1024, 768);
    img = loadImage("bomtext.png");
  }

  void draw() {
    super.draw();
    background(#67D7E8);
    noFill();
    stroke(255, 61, 61);
    strokeWeight(8);
    strokeCap(ROUND);

    image(img, width/2 - 210, 35);

    drawLetterA();
    drawLetterB();
    drawLetterC();
    drawLetterD();
    drawLetterE();
    drawLetterF();
    drawLetterG();
    drawLetterH();
    drawLetterI();
    drawLetterJ();
    drawLetterK();
    drawLetterL();
    drawLetterN();
    drawLetterM();

    drawLetter2();

    if (mousePressed) {
      time ++;
      a = 30*sin(time*0.1);
      b = 10*cos(time*0.1);
    }
    if (keyPressed) {
      if (key == ' ') {
        a = 0;
        b = 0;
      }
    }
    masterUI();
  }

  float a;
  float b;
  float time = 0;



  void drawLetterA() {
    //ㄷ
    //top
    bezier(110, 289, 112, 289+b, 114, 288, 116, 288);
    bezier(116, 288+a/2, 121, 287, 126, 286, 132, 284);
    bezier(132, 284, 135+a, 283-a, 138, 281, 141, 280);
    bezier(141, 280, 145, 279, 148, 277, 151, 276);
    bezier(151, 276, 158, 272, 162+a, 270+a, 162, 270);
    //bottom
    bezier(168, 307, 168, 307, 165, 309, 160, 311+b);
    bezier(160, 311, 156, 313+a, 152, 315, 148, 317);
    bezier(148, 317, 144, 319+b, 140+b, 321, 136, 322);
    bezier(136, 322, 133, 323+a, 131+a, 323, 129, 323);
    bezier(129, 323, 129, 322, 128, 321, 128, 319);
    bezier(128, 319, 128, 317+b*2, 127+b, 313, 127, 310);
    bezier(127, 310, 127+b, 305+b, 127, 299, 127, 295);
    bezier(127, 295, 127, 291, 127, 288, 127, 288);
  }

  void drawLetterB() {
    //ㄴ
    bezier(296, 270, 296+b, 270, 294-b, 278, 294, 287);
    bezier(294, 287+a, 293-a, 294, 293, 301-b, 294+b, 307);
    bezier(294, 307, 294, 313+b*5, 296-b*5, 318, 299, 320);
    bezier(299, 320, 303, 322, 311, 319, 318, 315);
    bezier(318, 315+a, 326-a, 310, 334, 304, 334, 304+b);
  }
  void drawLetterC() {
    //ㅈ
    //right
    bezier(503, 253+a/2, 503+a*2, 253, 508, 250-b, 514, 245);
    bezier(514, 245, 518-b, 242+b*2, 523, 239, 528, 236);
    bezier(528, 236, 533, 232, 538, 229, 540+b, 229);
    bezier(540, 229, 541-b, 230, 539, 235+a, 535, 242);
    bezier(535, 242, 530, 251, 522+a, 262, 517, 270);
    bezier(517, 270, 512, 276, 509, 280-b, 509+b, 280);

    bezier(544, 259+a/2, 544-a/2, 259, 540, 258, 537, 256);
    bezier(537, 256, 533, 255, 530+b, 253, 530, 251);
  }
  void drawLetterD() {
    //ㄹ
    bezier(528, 317-a/2, 528+a, 317, 531, 314, 537, 310);
    bezier(537, 310, 541+b, 307, 546, 303-b*3, 550, 301);
    bezier(550, 301, 555, 297, 560, 294, 560, 296);
    bezier(560, 296, 560, 297, 560, 300, 561, 304);
    bezier(561, 304, 562+a, 309, 562, 314, 560, 317);
    bezier(560, 317, 558, 318, 556, 320, 552, 322);
    bezier(552, 322, 549, 324-b, 545-b, 326, 541, 328);
    bezier(541, 328, 538, 330, 535, 332, 534, 333);
    bezier(534, 333, 534, 334, 533, 337, 532, 340);
    bezier(532, 340, 532, 343, 532+a, 347, 532, 349);
    bezier(532, 349, 532, 351, 533, 352, 534, 352);
    bezier(534, 352, 536, 353, 539, 351+b, 544-b, 348);
    bezier(544, 348, 548-a, 345, 554, 341, 558, 338);
    bezier(558, 338, 564, 334, 568, 330, 568, 330-b);
  }
  void drawLetterE() {
    //ㄷ
    //top
    bezier(646, 257, 647, 257+a, 649-a, 256, 651, 256);
    bezier(651, 256, 654, 255-a, 658, 254, 662, 253+b);
    bezier(662, 253+b, 665, 252, 667, 251, 669, 250+a);
    bezier(669, 250+a, 672, 249, 675, 247, 677, 246);
    bezier(677, 246, 682, 244, 685, 242, 685, 242-a*1.5);

    bezier(690, 270, 690, 270, 688, 271, 684, 273-b);
    bezier(684, 273-b, 681+b, 275-b, 678, 276, 675, 278+a);
    bezier(675, 278+a, 672, 279, 669+a, 281, 666, 281);
    bezier(666, 281, 664, 282, 662, 283, 661, 282);
    bezier(661, 282, 660, 282, 660, 281, 660, 280);
    bezier(660, 280, 660, 278, 659, 275, 659, 272);
    bezier(659, 272, 659, 269, 659, 265, 659, 262);
    bezier(659, 262, 659+b, 258, 659+a, 256, 659, 256);
  }
  void drawLetterF() {
    //ㄹ
    bezier(746+b, 258+a/2, 746, 258, 750, 255, 756, 252-b);
    bezier(756, 252-b, 760+b, 249, 765, 246, 769, 244);
    bezier(769, 244, 775, 240, 780, 238, 780, 239);
    bezier(780, 239, 779, 241, 780, 244, 780, 248);
    bezier(780, 248, 781, 253, 781, 258, 778, 260+b);
    bezier(778, 260+b, 777, 261+a, 774, 263, 770, 265);
    bezier(770, 265, 767, 267-a, 763+a, 269, 759, 270);
    bezier(759, 270, 755, 272-a, 752, 274, 752, 274);
    bezier(752, 274, 751, 275, 750, 278, 749, 281);
    bezier(749, 281, 749, 284, 748, 288, 748, 290);
    bezier(748, 290, 749, 292, 749, 293, 750, 294+a/3);
    bezier(750, 294+a/2, 752, 294, 756, 292, 760, 290);
    bezier(760, 290, 764, 288, 770, 284, 775, 281);
    bezier(775, 281, 781, 277+a, 786, 274, 786, 274);
  }
  void drawLetterG() {
    //ㄱ
    bezier(843, 250, 843, 250+a, 848-a, 247, 854, 243-a);
    bezier(854, 243-a, 858, 240, 864, 237, 869, 234);
    bezier(869, 234, 874, 232, 878, 232, 881, 233);
    bezier(881, 233, 885, 236, 884, 246, 883, 254+b);
    bezier(883, 254+b, 883, 259, 882+a, 264, 882, 264);
  }
  void drawLetterH() {
    //ㅎ
    //top1
    bezier(230-b, 447, 230, 450, 232, 455, 234+b/2, 459+a/3);
    bezier(234+b/2, 459+a/3, 237-a, 466, 241, 472, 241, 472);

    //top2
    bezier(259, 462+b, 259, 462, 255, 465, 250, 468+a);
    bezier(250, 468+a, 245+a*0.3, 471, 239, 474, 233, 476+b*2);
    bezier(233, 476+b*2, 229, 477, 224, 478, 221, 478-b);

    //bottom
    bezier(254+a/2, 516, 253+b*3, 520-b*3, 251, 524, 248+a, 527);
    bezier(248+a, 527, 244, 532+a, 239, 535, 236, 533+a);
    bezier(236, 533+a, 232+a, 532, 230, 527, 230, 520);
    bezier(230, 520, 230, 517, 230, 512, 232, 508+a/2);
    bezier(232, 508+a/2, 232, 507, 233, 506, 233+b, 505);
    bezier(233+b, 505, 238, 495, 245, 489, 251, 490);
    bezier(251, 490, 253, 491+a, 255, 494, 256, 498);
    bezier(256, 498, 257, 503, 257, 509, 254+a/2, 516);
  }
  void drawLetterI() {
    //ㄴ
    bezier(342, 434, 342+b, 434+b, 341-b, 438-b, 340, 444+b);
    bezier(340, 444+b, 339-b, 453, 339, 467, 344, 469-a);
    bezier(344, 469-a, 347+a, 472, 354, 470, 361, 466+a/2);
    bezier(361, 466+a/2, 366-a/2, 464, 371, 460, 375, 457);
    bezier(375, 457, 380, 454, 384, 451, 384, 451);
  }
  void drawLetterJ() {
    //ㄴ
    bezier(350+b, 510+a, 350, 510, 349, 515, 349+a, 520);
    bezier(349+a, 520, 348, 524, 348, 529, 349+b, 532);
    bezier(349+b, 532, 349, 535, 350, 536, 352, 537);
    bezier(352, 537, 354+b, 539+b, 359-b, 538-b, 364, 536);
    bezier(364, 536, 369+a, 533+a, 375-a, 529-a, 380, 526+a);
    bezier(380, 526+a, 388-a, 520-a, 394, 515, 394, 515+a);
  }
  void drawLetterK() {
    //ㅁ
    bezier(534, 444, 537+b, 441+b, 543-b, 436-b, 549, 432);
    bezier(549, 432, 555-b, 429-b, 561, 426, 563, 430);
    bezier(563, 430, 565-b, 433-b, 566, 438, 566, 443);
    bezier(566, 443, 567+b, 450+b, 567-b, 458-b, 565, 462);
    bezier(565, 462, 563-b, 463-b, 559+b, 466+b, 554, 469);
    bezier(554, 469, 548-b, 473-b, 541+b, 478+b, 537, 475);
    bezier(537, 475, 535-b, 470-b, 534+a, 464+a, 534, 458);
    bezier(534, 458, 534, 453, 534, 449, 534, 444);
  }

  void drawLetterL() {
    //ㄹ
    bezier(550, 514, 550-a, 514-a, 553+a, 511+a, 559, 508);
    bezier(559, 508, 563, 505, 568+b, 501+b, 572, 498);
    bezier(572, 498, 577-a, 494-a, 582, 492, 582, 493);
    bezier(582, 493, 582, 495, 582, 498, 583, 502);
    bezier(583, 502, 584, 506, 584, 512, 582, 514);
    bezier(582, 514, 580+a, 516+a, 578+b, 517+b, 574, 519);
    bezier(574, 519, 571-b, 522-b, 567+b, 524+b, 563, 526);
    bezier(563, 526, 560, 528, 557, 530, 556, 531);
    bezier(556, 531, 556, 531, 555, 534, 554, 538);
    bezier(554, 538, 554+a, 541+a, 554+b, 545+b, 554, 547);
    bezier(554, 547, 554-b, 549-b, 555+b, 550+b, 556, 550);
    bezier(556, 550, 558-b, 550-b, 561+b, 548+b, 566, 546);
    bezier(566, 546, 570-b, 543-b, 576+b, 539+b, 580, 536);
    bezier(580, 536, 586+a, 531+a, 590-a, 528-a, 590, 528);
  }
  void drawLetterN() {
    //ㅇ
    bezier(654, 465, 653, 468, 652, 471, 650, 473);
    bezier(650, 473, 646+b, 480+b, 640-b, 484-b, 635, 483);
    bezier(635, 483, 632-b, 482-b, 630+b, 478+b, 629, 472);
    bezier(629, 472, 629-b, 468-b, 629+b, 462+b, 631, 457+a);
    bezier(631, 457+a, 632+a, 454, 633, 452, 635, 450);
    bezier(635, 450, 639+b, 442+b, 645-b, 437-b, 650, 439);
    bezier(650, 439, 653+b*2, 440+b*2, 655-b*2, 442-b*2, 656, 446);
    bezier(656, 446, 657-b, 451-b, 657+b, 458+b, 654, 465);
  }
  void drawLetterM() {
    //ㅇ
    bezier(731, 463, 730, 467, 728, 470, 726, 473+a);
    bezier(726, 473+a, 722+a, 479, 717, 483, 712, 481);
    bezier(712, 481, 709, 480, 707, 475, 706, 469);
    bezier(706, 469, 706+b, 465+b, 707-b, 460-b, 709, 455);
    bezier(709, 455, 710+b, 452+b, 711-b, 449-b, 713, 447);
    bezier(713, 447, 717, 440, 723, 436, 728, 437);
    bezier(728, 437, 730, 438, 732, 440, 733, 443+b);
    bezier(733, 443+b, 734+b, 448, 734, 456, 731, 463);
  }


  void drawLetter2() {
    line(178, 223, 186, 353);
    line(208, 288, 183, 300);

    line(358, 221, 366, 351);
    line(361, 272, 335, 283);

    line(560, 193, 564, 245);
    line(564, 245, 565, 273);
    line(583, 234, 564, 245);

    line(678, 303, 679, 291);
    line(649, 316, 713, 288);
    line(708, 199, 717, 333);

    line(797, 200, 805, 330);
    line(827, 265, 801, 277);

    line(826, 320, 915, 280);
    line(868, 300, 867, 275);

    line(278, 420, 286, 550);
    line(309, 485, 283, 497);

    line(331, 499, 405, 466);

    line(584, 400, 587, 446);
    line(587, 446, 589, 471);
    line(604, 436, 587, 446);

    line(680, 399, 688, 532);

    line(758, 391, 767, 521);
    line(792, 462, 767, 473);
    line(789, 444, 763, 455);
  }
  
  void masterUI() {
    noStroke();
    smooth();
    blendMode(NORMAL);
    fill(mBgColInv, mOpaL);
    ellipseMode(CENTER);
    ellipse(-90, 384, 300, 300);
    fill(mBgColInv, mOpaR);
    ellipse(1114, 384, 300, 300);
    strokeWeight(3);
    stroke(#67D7E8, 255);
    line(10, 384, 30, 364);
    line(10, 384, 30, 404);
    line(1014, 384, 994, 364);
    line(1014, 384, 994, 404);

    if (mouseY < 506 && mouseY > 268) {
      if (mouseX < 60) { // left click (previous sketch)
        mOpaL = 100;
        if (mousePressed) pageChan(0);
      } else if (mouseX > 964) { //right click (next sketch)
        mOpaR = 100;
        if (mousePressed) pageChan(1);
      } else {
        mOpaL = 50;
        mOpaR = 50;
      }
    }
  }
}



