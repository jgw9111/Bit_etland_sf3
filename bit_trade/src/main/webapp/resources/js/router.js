"use strict";
function Session(x){
	/*alert('---- 4 -----> '+x);*/
	sessionStorage.setItem('ctx',x);
	sessionStorage.setItem('css',x+'/resources/css');
	sessionStorage.setItem('js',x+'/resources/js');
	sessionStorage.setItem('img',x+'/resources/img');
	return {
		ctx :()=>{ return sessionStorage.getItem('ctx')},
		js :()=>{ return sessionStorage.getItem('js')},
		img :()=>{ return sessionStorage.getItem('img')},
		css :()=>{ return sessionStorage.getItem('css')}
	};
}