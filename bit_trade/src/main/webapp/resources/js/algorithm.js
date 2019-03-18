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
			$('#nav').children().eq(0).html($$.a({id:'seq',val:'sequence'}));
			$('#nav').children().eq(1).html($$.a({id:'math',val:'mathematics'}));
			$('#nav').children().eq(2).html($$.a({id:'sort',val:'Sort'}));
			$('#nav').children().eq(3).html($$.a({id:'array',val:'Array'}));
			$('#nav').append($$.li({})).children().eq(4).html($$.a({id:'application',val:'Application'}));
			/*$('#nav').append().eq(4).html($$.a({id:'Application',text:'Application'}));*/
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


