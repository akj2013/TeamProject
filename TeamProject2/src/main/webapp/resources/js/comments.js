/**
 * <script type="text/javascript" src="/resources/js/comments.js"></script>
 */

console.log("Comments Module..");

var commentsService = (function(){
	
	function add(comments, callback, error){
		console.log("add comments..");
		
		$.ajax({
			type: 'post',
			url: '/team/Comments/new',
			data: JSON.stringify(comments),
			contentType: "application/json; charset=utf-8",
			success: function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error: function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		})
	}
	
	function getList(param, callback, error){
		var mnumc = param.mnumc;
		var team = param.team;
		
		$.getJSON("/team/Comments/pages/" + mnumc + "/" + team + ".json", function(data){
			if(callback){
//				callback(data);
				callback(data.cnt, data.list);
			}
		}).fail(function(xhr, status, err){
			if(error){
				error();
			}
		});
	}
	
	function remove(idx, callback, error){
		$.ajax({
			type: 'delete',
			url: '/team/Comments/' + idx,
			success: function(deleteResult, status, xhr){
				if(callback){
					callback(deleteResult);
				}
			},
			error: function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	function update(comments, callback, error){
		console.log("idx: " + comments.idx);
		
		$.ajax({
			type: 'put',
			url: '/team/Comments/' + comments.idx,
			data: JSON.stringify(comments),
			contentType: "application/json; charset=utf-8",
			success: function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error: function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	function displayTime(timeValue){
		var today = new Date();
		var gap = today.getTime() - timeValue;
		var dateObj = new Date(timeValue);
		var str = "";
		
		if (gap < (1000 * 60 * 60 * 24)){
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0') + ss].join('');
		} else{
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1;
			var dd = dateObj.getDate();
			
			return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/', (dd > 9 ? '' : '0') + dd].join('');
		} 
	};
	
	return{
		add: add,
		getList: getList,
		remove: remove,
		update: update,
		displayTime: displayTime
	};
})();