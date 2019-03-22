var common = common ||{};
common = {
		nav :()=>{
			/*$('body').html($$.div({id:'test',clazz:'clazz'}));*/
			$('#nav').children().eq(0).html($$.a({id:'seq',url:'#'}).text('SEQUENCE'));
			$('#nav').children().eq(1).html($$.a({id:'math',url:'#'}).text('MATH'));
			$('#nav').children().eq(2).html($$.a({id:'array',url:'#'}).text('ARRAY'));
			$('#nav').children().eq(3).html($$.a({id:'collec',url:'#'}).text('DATA STRUCTURE'));
			$('#nav').append($$.li({id:''})).children().eq(4).html($$.a({id:'application',url:'#'}).text('APPLICATION'));
			/*$('#nav').append().eq(4).html($$.a({id:'Application',text:'Application'}));*/
		}
}