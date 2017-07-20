/**
 * 
 */

	  var xhr;
	  
	  function Test(){
		  alert("sss");
	  //第一步:创建xmlHttpReque对象
	      if(Window.ActiveXObject){//IE浏览器
	              xhr=new ActiveXObject("Microsoft.XMLHTTP");
	      }else{//非IE浏览器
	         xhr=new XMLHttpRequest();
	      }
	     
	     var url="Login";
	     //第二步：使用open与服务器建立连接
	     xhr.open("POST",url);
	     //第三步：设置回调函数
	     /**
	        0=未初始化。
			1=open方法成功调用以后。
			2=服务器已经应答客户端的请求。
			3=交互中。Http头信息已经接收，响应数据尚未接收。
			4=完成。数据接收完成。
	     */
	     xhr.onreadystatechange=callback;
	     //第四步：向服务器发送请求
	     xhr.send(null);
	  
	  }
	  function callback(){
	     if(xhr.readyState==4&&xhr.status==200){
	       var result=xhr.responseText;
	       alert(result);
	         var arr=eval(result);
	               for(var i=0;i<result.length;i++){
						alert(arr[i]);
	               }
	       
	     }
	  }
	  
