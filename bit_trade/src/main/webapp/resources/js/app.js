var app = app || {};
app.path =(()=>{
	var init = (x)=>{
		app.session.init(x);
		alert(app.$.ctx());
		onCreate();
	};
	var onCreate =()=>{
		setContentView();
	};
	var setContentView =()=>{
		$('#header').empty().text('헤더'); // 오버로딩
		$('#menu').empty().text('메뉴');
		$('#main').empty().text('메인');
		$('#right').empty().text('사이드');
		$('#footer').empty().text('푸터');
		$('#header').html('<h1>헤더</h1>'); //오버라이딩
		$('#menu').html('<h1>메뉴</h1>');
		$('#main').html('<h1>메인</h1>');
		$('#right').html('<h1>사이드</h1>');
		$('#footer').html('<h1>푸터</h1>');
	};
	return {init:init};
})();
app.session =(()=>{
	var init = (x)=>{
		onCreate(x);
	};
	var onCreate =(x)=>{
		sessionStorage.setItem('ctx',x);
		sessionStorage.setItem('css',x+'/resources/css');
		sessionStorage.setItem('js',x+'/resources/js');
		sessionStorage.setItem('img',x+'/resources/img');
	};
	var getPath =(x)=>{
		sessionStorage.getItem('ctx');
	};
	return {init:init,getPath:getPath};
})();
app.$ = {
	ctx :()=>{ return sessionStorage.getItem('ctx')},
	js :()=>{ return sessionStorage.getItem('js')},
	img :()=>{ return sessionStorage.getItem('img')},
	css :()=>{ return sessionStorage.getItem('css')}
}