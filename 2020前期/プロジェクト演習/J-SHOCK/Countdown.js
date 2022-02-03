var query=location.search;
var value=query.split('=');
window.onload = function(){

  target1=document.getElementById("CDtytle");
  target2=document.getElementById("monitor");
  target3=document.getElementById("page");
  target4=document.getElementById("startbtn");
  target5=document.getElementById("stopbtn");
  target6=document.getElementById("resetbtn");
  target7=document.getElementById("return");
  target8=document.getElementById("a");
  target9=document.getElementById("b");
  target10=document.getElementById("c");
  target11=document.getElementById("d");
  target12=document.getElementById("e");
  target13=document.getElementById("f");
  target14=document.getElementById("g");
  if(value[1]=="light"){

      target1.style.color="blue";
      target1.style.borderColor="blue";
      target1.style.backgroundColor="white";
      target2.style.color="blue";
      target2.style.borderColor="blue";
      target2.style.backgroundColor="white";
      target3.style.color="blue";
      target3.style.borderColor="blue";
      target3.style.backgroundColor="white";
      target7.style.color="blue";
      target7.style.borderColor="blue";
      target7.style.backgroundColor="white";
      target8.style.color="blue";
      target8.style.borderColor="blue";
      target8.style.backgroundColor="white";
      target9.style.color="blue";
      target9.style.borderColor="blue";
      target9.style.backgroundColor="white";
      target10.style.color="blue";
      target10.style.borderColor="blue";
      target10.style.backgroundColor="white";
      target11.style.color="blue";
      target11.style.borderColor="blue";
      target11.style.backgroundColor="white";
      target12.style.color="blue";
      target12.style.borderColor="blue";
      target12.style.backgroundColor="white";
      target13.style.color="blue";
      target13.style.borderColor="blue";
      target13.style.backgroundColor="white";
      target14.style.color="blue";
      target14.style.borderColor="blue";
      target14.style.backgroundColor="white";
      target4.style.color="blue";
      target4.style.borderColor="blue";
      target4.style.backgroundColor="rgb(230, 255, 230)";
      target5.style.color="blue";
      target5.style.borderColor="blue";
      target5.style.backgroundColor="rgb(255, 230, 230)";
      target6.style.color="blue";
      target6.style.borderColor="blue";
      target6.style.backgroundColor="rgb(230, 230, 255)";

      target1.style.fontFamily=value[2];
      target2.style.fontFamily=value[2];
      target3.style.fontFamily=value[2];
      target4.style.fontFamily=value[2];
      target5.style.fontFamily=value[2];
      target6.style.fontFamily=value[2];
      target7.style.fontFamily=value[2];
      target8.style.fontFamily=value[2];
      target9.style.fontFamily=value[2];
      target10.style.fontFamily=value[2];
      target11.style.fontFamily=value[2];
      target12.style.fontFamily=value[2];
      target13.style.fontFamily=value[2];
      target14.style.fontFamily=value[2];



  }else if(value[1]=="dark"){
      console.log("black");
      target1.style.color="gold";
      target1.style.backgroundColor="black";
      target2.style.color="gold";
      target2.style.backgroundColor="black";
      target3.style.color="gold";
      target3.style.backgroundColor="black";
      target7.style.color="gold";
      target7.style.backgroundColor="black";
      target8.style.color="gold";
      target8.style.backgroundColor="black";
      target9.style.color="gold";
      target9.style.backgroundColor="black";
      target10.style.color="gold";
      target10.style.backgroundColor="black";
      target11.style.color="gold";
      target11.style.backgroundColor="black";
      target12.style.color="gold";
      target12.style.backgroundColor="black";
      target13.style.color="gold";
      target13.style.backgroundColor="black";
      target14.style.color="gold";
      target14.style.backgroundColor="black";
      target4.style.color="gold";
      target4.style.backgroundColor="rgb(25, 0, 0)";
      target5.style.color="gold";
      target5.style.backgroundColor="rgb(0, 25, 0)";
      target6.style.color="gold";
      target6.style.backgroundColor="rgb(0, 0, 25)";

      target1.style.borderColor="gold";
      target2.style.borderColor="gold";
      target3.style.borderColor="gold";
      target4.style.borderColor="gold";
      target5.style.borderColor="gold";
      target6.style.borderColor="gold";
      target7.style.borderColor="gold";
      target8.style.borderColor="gold";
      target9.style.borderColor="gold";
      target10.style.borderColor="gold";
      target11.style.borderColor="gold";
      target12.style.borderColor="gold";
      target13.style.borderColor="gold";
      target14.style.borderColor="gold";

      target1.style.fontFamily=value[2];
      target2.style.fontFamily=value[2];
      target3.style.fontFamily=value[2];
      target4.style.fontFamily=value[2];
      target5.style.fontFamily=value[2];
      target6.style.fontFamily=value[2];
      target7.style.fontFamily=value[2];
      target8.style.fontFamily=value[2];
      target9.style.fontFamily=value[2];
      target10.style.fontFamily=value[2];
      target11.style.fontFamily=value[2];
      target12.style.fontFamily=value[2];
      target13.style.fontFamily=value[2];
      target14.style.fontFamily=value[2];

  }else{

      target1.style.color=value[1];
      target1.style.backgroundColor=value[2];
      target2.style.color=value[1];
      target2.style.backgroundColor=value[2];
      target3.style.color=value[1];
      target3.style.backgroundColor=value[2];
      target7.style.color=value[1];
      target7.style.backgroundColor=value[2];
      target8.style.color=value[1];
      target8.style.backgroundColor=value[2];
      target9.style.color=value[1];
      target9.style.backgroundColor=value[2];
      target10.style.color=value[1];
      target10.style.backgroundColor=value[2];
      target11.style.color=value[1];
      target11.style.backgroundColor=value[2];
      target12.style.color=value[1];
      target12.style.backgroundColor=value[2];
      target13.style.color=value[1];
      target13.style.backgroundColor=value[2];
      target14.style.color=value[1];
      target14.style.backgroundColor=value[2];
      target4.style.color=value[1];
      target4.style.backgroundColor=value[2];
      target5.style.color=value[1];
      target5.style.backgroundColor=value[2];
      target6.style.color=value[1];
      target6.style.backgroundColor=value[2];

      target1.style.borderColor=value[1];
      target2.style.borderColor=value[1];
      target3.style.borderColor=value[1];
      target4.style.borderColor=value[1];
      target5.style.borderColor=value[1];
      target6.style.borderColor=value[1];
      target7.style.borderColor=value[1];
      target8.style.borderColor=value[1];
      target9.style.borderColor=value[1];
      target10.style.borderColor=value[1];
      target11.style.borderColor=value[1];
      target12.style.borderColor=value[1];
      target13.style.borderColor=value[1];
      target14.style.borderColor=value[1];

      target1.style.fontFamily=value[3];
      target2.style.fontFamily=value[3];
      target3.style.fontFamily=value[3];
      target4.style.fontFamily=value[3];
      target5.style.fontFamily=value[3];
      target6.style.fontFamily=value[3];
      target7.style.fontFamily=value[3];
      target8.style.fontFamily=value[3];
      target9.style.fontFamily=value[3];
      target10.style.fontFamily=value[3];
      target11.style.fontFamily=value[3];
      target12.style.fontFamily=value[3];
      target13.style.fontFamily=value[3];
      target14.style.fontFamily=value[3];


  }
}


var timer1;//タイマーを格納する変数
var flag=0;
var sumsocond;
function cntStart(){//カウントダウン関数を１秒ごとに呼び出す
    document.timer.elements[3].disabled=true;

    timer1=setInterval("countDown()",1000);
}

function cntStop(){//タイマー停止
    document.timer.elements[3].disabled=false;
    clearInterval(timer1);
}

function countDown(){//カウントダウン
    var hour=document.timer.elements[0].value;//[0]は時間
    var min=document.timer.elements[1].value;//[1]は分
    var sec=document.timer.elements[2].value;//[2]は秒
    if((hour=="")&&(min=="")&&(sec=="")){
        alert("時刻を設定してください！");
        reSet();
    }else{

        if(hour==""){
            hour=0;
            hour=parseInt(hour);
        }
        if(min==""){
            min=0;
            min=parseInt(min);
        }
        if(sec==""){
            sec=0;
            sec=parseInt(sec);
        }
        timeWrite(hour*3600+min*60+sec*1-1);
    }
}

function timeWrite(second){//残り時間の出力
    second=parseInt(second);
    if(second<=0){
        flag++;
        reSet();
        alert("時間になりました。");


    }else{
        document.timer.elements[0].value=Math.floor(second/3600);//時間
        second=second-(document.timer.elements[0].value*3600);
        document.timer.elements[1].value=Math.floor(second/60);//秒
        document.timer.elements[2].value=second%60;//秒


    }
}

function reSet(){
    document.timer.elements[0].value="0";
    document.timer.elements[1].value="0";
    document.timer.elements[2].value="0";
    document.timer.elements[3].disabled=false;
    clearInterval(timer1);
    flag=0;
}

function cut10s(){
    var hour=document.timer.elements[0].value;//[0]は時間
    var min=document.timer.elements[1].value;//[1]は分
    var sec=document.timer.elements[2].value;//[2]は秒
    timeWrite(hour*3600+min*60+sec*1-10);
}

function plus10s(){
    var hour=document.timer.elements[0].value;//[0]は時間
    var min=document.timer.elements[1].value;//[1]は分
    var sec=document.timer.elements[2].value;//[2]は秒
    timeWrite(hour*3600+min*60+sec*1+10);
}

function cut1m(){
    var hour=document.timer.elements[0].value;//[0]は時間
    var min=document.timer.elements[1].value;//[1]は分
    var sec=document.timer.elements[2].value;//[2]は秒
    timeWrite(hour*3600+min*60+sec*1-60);
}

function plus1m(){
    var hour=document.timer.elements[0].value;//[0]は時間
    var min=document.timer.elements[1].value;//[1]は分
    var sec=document.timer.elements[2].value;//[2]は秒
    timeWrite(hour*3600+min*60+sec*1+60);
}
function return_title(){
  if(value[1]=="dark" || value[1]=="light"){
      location.href = 'main.html?name=' +　value[1] + "=" + value[2];
  }else{
      location.href = 'main.html?name=' +　value[1] + "=" + value[2] + "=" + value[3];

  }
}
