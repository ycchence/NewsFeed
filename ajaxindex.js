
  
function  refresh(){  
  

   $.ajax({     
    url: "backend.php",     
    type: "GET",     
  //  dataType: "json",     
    success: function(data) {
        


    //click news to access the content
      jsArray  = data.split("\"");  
      var j=0;
      var jsArray1=[10];
        for(var i =0; i< jsArray.length;i++){
        if(jsArray[i].length>0){
                jsArray1[j]=jsArray[i];
                j++;
            }
        }
      
      var para = document.getElementsByClassName("demo");
      for (var k = 0; k < jsArray1.length; k++) {
        (function (k) {
          para[k].onclick = function () {
            document.getElementById("screen").innerHTML = jsArray1[k];
          }
        }(k));
      }


    },
    error: function() {
        alert("ERROR2");
    }
   });


}  
 
function Showitem(){


    $.ajax({     
        url: "item.php",     
        type: "GET",     
   
        success: function(data2) {
          jsArray2  = data2.split("\"");  
          var j=0;
          var jsArray3=[10];
          for(var i =0; i< jsArray2.length;i++){
            if(jsArray2[i].length>0){
                jsArray3[j]=jsArray2[i];
                j++;
              }
          }
          //List 10 news
          document.getElementById("itemid0").innerHTML=jsArray3[0];
          document.getElementById("itemid1").innerHTML=jsArray3[1];
          document.getElementById("itemid2").innerHTML=jsArray3[2];
          document.getElementById("itemid3").innerHTML=jsArray3[3];
          document.getElementById("itemid4").innerHTML=jsArray3[4];
          document.getElementById("itemid5").innerHTML=jsArray3[5];
          document.getElementById("itemid6").innerHTML=jsArray3[6];
          document.getElementById("itemid7").innerHTML=jsArray3[7];
          document.getElementById("itemid8").innerHTML=jsArray3[8];
          document.getElementById("itemid9").innerHTML=jsArray3[9];
        },
        error: function() {
            alert("ERROR1");
        }
       });
}
