function math(){
	$('#right_start').remove();

	$('#right_content').prepend($$.div({id:'right_start'})); //재활용
	$('#leava_a_comment').before('<div id="right_end"/>'); //일회용
	$('#right_start').nextUntil('#right_end').wrapAll('<div id="new_div"></div>');
	
	let str = $('#new_div').html();
	
	alert(str);
	
	$('#new_div').remove();
	$('#right_end').remove();	
	let arr = [
		{id:'count',val:'01. Count 알고리즘'},
		{id:'maxMin',val:'02. 최댓값과 최솟값'},
		{id:'sumAvg',val:'03. 합계와 평균'}
		];
	$.each(arr,(i,j)=>{
		let GID = Math.floor(Math.random()*10000)+1;
		let _GID = '#'+GID;
		$('<div id="'+GID+'">'+str+'</div>').appendTo('#right_start');
		let POST = GID+"_POST";
		let _POST = '#'+POST;
		$(_GID+' h4').attr('id',POST);
		let TITLE = GID+"_TITLE";
		let _TITLE = '#'+TITLE;
		$(_GID+' h2').attr('id',TITLE);
		let DATE = GID+'_DATE';
		let _DATE = '#'+DATE;
		$(_TITLE).siblings('h5').eq(0).attr('id',DATE);
		let BTN = GID+'_BTN';
		let _BTN = '#'+BTN;
		$(_TITLE).siblings('h5').eq(1).attr('id',BTN);
		let INPUT = GID+'_INPUT';
		let _INPUT = '#'+INPUT;
		$(_GID+' p').attr('id',INPUT);
		$(_TITLE).text(j.val);
		$(_BTN).empty();
		$(_INPUT).empty();
		let x = [];
		switch(j.id){
		case 'count' : 
			x = [{cls:'start', txt:'초항'},
				{cls:'end', txt:'한계값'},
				{cls:'diff', txt:'공차'}];
		break;
		case 'maxMin' : 
			x = [{cls:'start', txt:'초항'},
				{cls:'end', txt:'한계값'},
				{cls:'diff', txt:'공비'}];
			break;
		case 'sumAvg' : 
			x = [{cls:'start', txt:'초항'},
				{cls:'end', txt:'한계값'}];
		break;
		};
	
		
		$(_sequence.inputForm(x)).appendTo(_INPUT);
		$('#del_start').remove();
		$('#del_end').remove();
		$('<span class="label label-info"></span>').text('Result').addClass('cursor').attr('name',j.id).appendTo(_BTN).click(function(){
			let that =$(this).attr('name');
			let data ={
					start : $(_INPUT+' input.start').val(),
					end : $(_INPUT+' input.end').val(),
					diff : $(_INPUT+' input.diff').val()
			};
			$.ajax({
				url:$.ctx()+'/algo/math/'+that,
				type:'post',
				data:JSON.stringify(data),
				datatype:'json',
				contentType:"application/json; charset=utf-8", // application(자바)/json
				success:d=>{
					/*alert('넘어온 문제번호 ::'+d.result);*/
					$(_INPUT).empty();
					$('<h2>결과값 : '+d.result+'</h2>').appendTo(_INPUT);
				},
				error:e=>{
					alert('error!!!!');
				}
			});
		});
			$('<span class="label label-warning" style="margin-left: 4px"></span>')
			.text('Reset')
			.addClass('cursor').appendTo(_BTN).click(()=>{
				$(_INPUT).empty();
				$(_sequence.inputForm(x)).appendTo(_INPUT);
				
			});
		});
}
	
	
	/*$('#result').html($$.input({type:'text',id:'start',name:'start',place:'초항'}));
	$('#result').append($$.input({type:'text',id:'end',name:'end',place:'마지막 항'}));
	$('#result').append($$.input({type:'text',id:'diff',name:'diff',place:'공차'}));
	$('.rmove').remove();*/

 //콜백


var _sequence = {
		inputForm : (x)=>{
			let html = '<form>';
			$.each(x,(i,j)=>{
				html += '<div class="form-group">';
				html += '<label for="">'+j.txt+' :</label>';
				html += '<input type="text" class="'+j.cls+'"></div>';
			});
			html += '</form>';
			return html;
			/*$('#result').html($$.input({type:'text',id:'start',name:'start',place:'초항'}));
			$('#result').append($$.input({type:'text',id:'end',name:'end',place:'마지막 항'}));
			$('#result').append($$.input({type:'text',id:'diff',name:'diff',place:'공차'}));*/
		},
	/*	question : (x)=>{
			$('#quest1').text(x);
			_sequence.inputForm();*/
		/*	$('#reset_btn_1').text('Reset').addClass('cursor').click(()=>{
				_sequence.inputForm();				
			});*/
			//콜백엔드
		//},
		
		remove :()=>{
			$('#rm_start').before('<div id="del_start"/>');
			$('#rm_end').after('<div id="del_end"/>');
			$('#del_start').nextUntil('#del_end').remove();

		}	
};