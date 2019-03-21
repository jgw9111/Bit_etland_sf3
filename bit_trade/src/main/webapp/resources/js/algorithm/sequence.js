function sequence(){
	_sequence.nav();
	_sequence.remove();
	_sequence.question('등차수열의 합계');
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
			/*$('#right_start').append(str);*/
			$(str).appendTo('#right_start');
			$('#quest1').attr('id','quest_'+j.id);
			$('#quest_'+j.id).text(j.val);
			$('.buttons').empty();
			$('<span class="label label-info"></span>').text('Result').addClass('cursor').appendTo('.buttons').click(()=>{
				let data ={
						start : $('#start').val(),
						end : $('#end').val(),
						diff : $('#diff').val()
				};
				/*alert('일단 결과 클릭됨 '+$('#start').val());*/
				$.ajax({
					url:$.ctx()+'/algo/seq/1',
					type:'post',
					data:JSON.stringify(data),
					datatype:'json',
					contentType:"application/json; charset=utf-8", // application(자바)/json
					success:d=>{
						/*alert('넘어온 문제번호 ::'+d.result);*/
						$('#result').html($$.h({id:'h_res',num:'3'}).fadeIn().text('결과값:: '+d.result));
					},
					error:e=>{
						alert('error!!!!');
					}
				});
			});
				$('<span class="label label-warning" style="margin-left: 4px"></span>')
				.text('Reset')
				.addClass('cursor').appendTo('.buttons').click(()=>{
					_sequence.inputForm();
				});
			});
	}
	
	
	/*$('#result').html($$.input({type:'text',id:'start',name:'start',place:'초항'}));
	$('#result').append($$.input({type:'text',id:'end',name:'end',place:'마지막 항'}));
	$('#result').append($$.input({type:'text',id:'diff',name:'diff',place:'공차'}));
	$('.rmove').remove();*/

 //콜백


var _sequence = {
		inputForm : ()=>{
			$('#result').html($$.input({type:'text',id:'start',name:'start',place:'초항'}));
			$('#result').append($$.input({type:'text',id:'end',name:'end',place:'마지막 항'}));
			$('#result').append($$.input({type:'text',id:'diff',name:'diff',place:'공차'}));
		},
		question : (x)=>{
			$('#quest1').text(x);
			_sequence.inputForm();
		/*	$('#reset_btn_1').text('Reset').addClass('cursor').click(()=>{
				_sequence.inputForm();				
			});*/
			//콜백엔드
		},
		nav :()=>{
			/*$('body').html($$.div({id:'test',clazz:'clazz'}));*/
			$('#nav').children().eq(0).html($$.a({id:'seq',url:'#'}).text('SEQUENCE'));
			$('#nav').children().eq(1).html($$.a({id:'math',url:'#'}).text('MATH'));
			$('#nav').children().eq(2).html($$.a({id:'array',url:'#'}).text('ARRAY'));
			$('#nav').children().eq(3).html($$.a({id:'collec',url:'#'}).text('DATA STRUCTURE'));
			$('#nav').append($$.li({id:''})).children().eq(4).html($$.a({id:'application',url:'#'}).text('APPLICATION'));
			/*$('#nav').append().eq(4).html($$.a({id:'Application',text:'Application'}));*/
		},
		remove :()=>{
			$('#rm_start').before('<div id="del_start"/>');
			$('#rm_end').after('<div id="del_end"/>');
			$('#del_start').nextUntil('#del_end').wrap().remove();
		}	
};