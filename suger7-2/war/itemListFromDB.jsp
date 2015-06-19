<%-- 
    Document   : itemListFromDB
    Created on : 2013/12/13, 14:06:28
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>                        
<html>
    <head>                                            
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <h1>Suger Pop - 商品一覧</h1>
        <div align="center">

        <table>
         <form method="post" action="/add" name="chbox">
<div style="float:center"><alt="クワトロ"width="180"height="120"hspace="10"><br><input type="checkbox" name="pizza1" value="クワトロ">クワトロ 
       	  枚数:<input type="text" name="count1" size="2" value="0"></div>
<div style="float:center"><alt="チーズ"width="180"height="120"hspace="10"><br><input type="checkbox" name="pizza2" value="チーズメルト">チーズメルト
       	  枚数:<input type="text" name="count2" size="2" value="0"></div>
<div style="float:center"><alt="ミルフィーユ"width="180"height="120"hspace="10"><br><input type="checkbox" name="pizza3" value="カマンベールミルフィーユ">カマンベールミルフィーユ 
       	  枚数:<input type="text" name="count3" size="2" value="0"></div>
<div style="float:center"><alt="リストランテ"width="180"height="120"hspace="10"><br><input type="checkbox" name="pizza4" value="リストランテ">リストランテ 
       	  枚数:<input type="text" name="count4" size="2" value="0"></div>
       	  
        
            <tr><th>NAME:</th><td><input type="text" name="title"></td></tr>
            <tr><th>URL:</th><td><input type="text" name="url"></td></tr>
            <tr><th>PASS:</th><td><input type="text" name="comment"></td></tr>
            <tr><th></th><td><input type="submit" value="追加"></td></tr>
        </form>
        
        
       
         <div style="clear:both"></div>  
         
 <script>

function boxCheck(){

  //チェックされた項目を記録する変数
  var str="";
  
  //for文でチェックボックスを１つずつ確認
  for( i=0; i<8; i++ )
  {
    //チェックされているか確認する
    if( document.chbox.elements[i].checked )
    {
    	if(document.chbox.elements[i+1].value!=0){
      //変数strが空でない時、区切りのコンマを入れる
      if( str != "" ) str=str+", ";
      
      //チェックボックスのvalue値を変数strに入れる
      
      str=str+document.chbox.elements[i].value+" "+document.chbox.elements[i+1].value+"個が選択されました。";
      }
    } 
  }
  
  total = 2200*document.chbox.elements[1].value+2300*document.chbox.elements[3].value+2400*document.chbox.elements[5].value+2600*document.chbox.elements[7].value;
  
  str = str+" 合計金額は"+ total+"円です。";
  
  //strが空の時、警告を出す
  if( str=="" ){
     alert( "どれか選択してください。" );
  }else{
    alert( str);
  }
}

</script>
 
        
        </table>



    <form action="logout.do" method="post">
        <input type="submit" name="logout" value="ログアウト" />
    </form>
    </body>
</html>
