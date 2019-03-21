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
		$.when(
				$.getScript($.js()+'/compo.js')
		).done(
				()=>{
					nav();
					remove();
					question('등차수열의 합계');
					$('#right_content').prepend($$.div({id:'right_start'}));
					$('#leava_a_comment').before('<div id="right_end"/>');
					$('#right_start').nextUntil('#right_end').wrapAll('<div id="new_div"></div>');
					let str = $('#new_div').html();
					$('#new_div').remove();
					$('#right_end').remove();
					let arr = [
						{id:'a',val:'등차수열의 합계'},
						{id:'b',val:'등비수열의 합계'},
						{id:'c',val:'팩토리얼의 합계'},
						{id:'d',val:'피보나치의 합계'}
						];
					$.each(arr,(i,j)=>{
						$('#right_start').append(str);
						$('#quest1').attr('id','quest_'+j.id);
						$('#quest_'+j.id).text(j.val);
						
						/*$(this).find('').text(question(j));*/
						/*alert('1)  $(this) ::'+$(this)+'\n  2) this ::'+this+'\n  3) index ::'+i+'\n  4) j ::'+j);*/
					});
					
					
					/*$('#result').html($$.input({type:'text',id:'start',name:'start',place:'초항'}));
					$('#result').append($$.input({type:'text',id:'end',name:'end',place:'마지막 항'}));
					$('#result').append($$.input({type:'text',id:'diff',name:'diff',place:'공차'}));
					$('.rmove').remove();*/
			
			} //콜백
		);
		

};  
	let inputForm = ()=>{
		$('#result').html($$.input({type:'text',id:'start',name:'start',place:'초항'}));
		$('#result').append($$.input({type:'text',id:'end',name:'end',place:'마지막 항'}));
		$('#result').append($$.input({type:'text',id:'diff',name:'diff',place:'공차'}));
	};
	let question =(x)=>{
		
		$('#quest1').text(x);
		inputForm();
		
		$('#ans_btn_1').text('Result').addClass('cursor').click(()=>{
			$.ajax({
				url:$.ctx()+'/algo/seq/1',
				type:'post',
				data:JSON.stringify(
						{start: $('#start').val(),
							end: $('#end').val(),
							diff:$('#diff').val()}),
							datatype:'json',
							contentType:"application/json; charset=utf-8", // application(자바)/json
							success:d=>{
								/*alert('넘어온 문제번호 ::'+d.result);*/
								$('#result').html($$.h({id:'h_res',num:'3'}).text('결과값:: '+d.result));},
								error:e=>{
									alert('error!!!!');
								}
			});
		}); 
		$('#reset_btn_1').text('Reset').addClass('cursor').click(()=>{
			inputForm();				
		});
		//콜백엔드
	};
	let nav =()=>{
		/*$('body').html($$.div({id:'test',clazz:'clazz'}));*/
		$('#nav').children().eq(0).html($$.a({id:'seq',url:'#'}).text('Sequence'));
		$('#nav').children().eq(1).html($$.a({id:'math',url:'#'}).text('Math'));
		$('#nav').children().eq(2).html($$.a({id:'array',url:'#'}).text('Array'));
		$('#nav').children().eq(3).html($$.a({id:'collec',url:'#'}).text('자료구조'));
		$('#nav').append($$.li({id:''})).children().eq(4).html($$.a({id:'application',url:'#'}).text('Application'));
		/*$('#nav').append().eq(4).html($$.a({id:'Application',text:'Application'}));*/
	};
	let remove=()=>{
		$('#rm_start').before('<div id="del_start"/>');
		$('#rm_end').after('<div id="del_end"/>');
		$('#del_start').nextUntil('#del_end').wrap().remove();
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

