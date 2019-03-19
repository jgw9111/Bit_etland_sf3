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
			$('#nav').children().eq(2).html($$.a({id:'array',url:'#'}).text('Array'));
			$('#nav').children().eq(3).html($$.a({id:'collec',url:'#'}).text('자료구조'));
			$('#nav').append($$.li({id:''})).children().eq(4).html($$.a({id:'application',url:'#'}).text('Application'));
			/*$('#nav').append().eq(4).html($$.a({id:'Application',text:'Application'}));*/
			
			$('#quest1').text('수열 1 - 등차수열의 합계');
			$('#quest2').text('수열 2 - 등비수열의 합계');
			inputForm();
			
/*			$('#result').html($$.input({type:'text',id:'start',name:'start',place:'초항'}));
			$('#result').append($$.input({type:'text',id:'end',name:'end',place:'마지막 항'}));
			$('#result').append($$.input({type:'text',id:'diff',name:'diff',place:'공차'}));*/
			
			$('#ans_btn_1').text('Result').addClass('cursor').click(()=>{
				$.ajax({
					url:$.ctx()+'/algo/seq/1',
					type:'post',
					data:JSON.stringify(
							{start: $('#start').val(),
							end: $('#end').val(),
							diff:$('#diff').val}),
					datatype:'json',
					contentType:"application/json; charset=utf-8", // application(자바)/json
					success:d=>{
						alert('넘어온 문제번호 ::'+d.result);
						$('#result').html($$.h({id:'h_res',num:'3'}).text('결과값:: '+d.result));},
					error:e=>{
						alert('error!!!!');
					}
				});
			$('#reset_btn_1').text('Reset').addClass('cursor').click(()=>{
				inputForm();				
				});
			}); 
		});
	};
	let inputForm = ()=>{
		$('#result').html($$.input({type:'text',id:'start',name:'start',place:'초항'}));
		$('#result').append($$.input({type:'text',id:'end',name:'end',place:'마지막 항'}));
		$('#result').append($$.input({type:'text',id:'diff',name:'diff',place:'공차'}));
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


