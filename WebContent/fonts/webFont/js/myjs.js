function importbtn(str){
	var btn=document.getElementById(str);
	var btnname=btn.innerText;
	if(btnname=='图像识别'){
		location.href='#about';
	}else if(btnname=='视频识别'){
		location.href='#portfolio';
	}else if(btnname=='图像搜索'){
		location.href='#imgsearch';
	}
}