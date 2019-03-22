var algo = algo||{};
algo = (()=>{
	let init = x =>{
		algo.$.init(x);
	};
	let onCreate = () =>{
		setContentView();
	};
	let setContentView = ()=>{
		$.when(
				$.getScript($.js()+'/component/compo.js'),
				$.getScript($.js()+'/algorithm/sequence.js'),
				$.getScript($.js()+'/algorithm/math.js'),
				$.getScript($.js()+'/component/common.js')
		).done(()=>{
			sequence();
			common.nav();
			$('#math').click(()=>{math();});
		}
		);
};
	return {init:init,onCreate:onCreate};
})();

algo.$ ={
		init:(x)=>{
			$.getScript(x+'/resources/js/router.js',()=>{
				$.extend(new Session(x)); 
				algo.onCreate();
		});
	}
};

