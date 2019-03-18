var algo = algo||{};
algo = (()=>{
	let init = x =>{
		/*alert('---- 1 -----> '+x);*/
		algo.$.init(x);
	};
	let onCreate = () =>{
		/*alert('--------------6 -- $.ctx()완성 '+$.ctx());*/
		setContentView();
	};
	let setContentView = ()=>{
		$.getScript($.js()+'/compo.js',()=>{
			/*$('body').html($$.div({id:'test',clazz:'clazz'}));*/
			$('#nav').children().eq(0).html($$.a({id:'seq',url:'#'}).text('Sequence'));
			$('#nav').children().eq(1).html($$.a({id:'math',url:'#'}).text('Math'));
			$('#nav').children().eq(2).html($$.a({id:'sort',url:'#'}).text('Sort'));
			$('#nav').children().eq(3).html($$.a({id:'array',url:'#'}).text('Array'));
			$('#nav').append($$.li({id:''})).children().eq(4).html($$.a({id:'application',url:'#'}).text('Application'));
			/*$('#nav').append().eq(4).html($$.a({id:'Application',text:'Application'}));*/
			$('#quest1').text('수열 1 - 1+2+3+4+…+100까지의 합계 (do~while)');
			$('#quest2').text('수열 2 - 1-2+3-4+5-6+…+99-100의 합계 (do~while, while, if)');
		});
	};
	return {init:init,onCreate:onCreate};
})();

algo.$ ={
		init:(x)=>{
			/*alert('---- 2 -----> '+x);*/
		$.getScript(x+'/resources/js/router.js',()=>{
			/*alert('---- 3 -----> '+x);*/
			$.extend(new Session(x)); 
			/*alert('--------------5 -- $.ctx()완성 '+$.ctx());*/
			algo.onCreate();
			
		});
	}
}


