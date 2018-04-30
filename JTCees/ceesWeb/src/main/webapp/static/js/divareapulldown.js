(function($) {
	initdivflow = function(para1Value, para2Value, para3Value, para4Value) {
		var ss1 = "<select id='ss1' class='select12'><option value=''>请选择</option></select>";
		var ss2 = "<select id='ss2' class='select12'><option value=''>请选择</option></select>";
		var ss3 = "<select id='ss3' class='select12'><option value=''>请选择</option></select>";
		var ss4 = "<select id='ss4' class='select12'><option value=''>请选择</option></select>";
		$('.divareapulldown').html(ss1 + ss2 + ss3 + ss4);
		getdivfirstLevel(para1Value, para2Value, para3Value, para4Value);
		$("#ss1").bind("change", function() {
			getdivsecondLevel();
		});
		$("#ss2").bind("change", function() {
			getdivthirdLevel();
		});
		$("#ss3").bind("change", function() {
			getdivfourthLevel();
		});

	};
	getdivAreaLevelVal = function(level) {
		var s1_id = $("#ss" + level).val();
		return s1_id;
	};
	getdivAreaLevelTxt = function(level) {
		var s1_txt = $("#ss" + level).find("option:selected").text();
		return s1_txt;
	};
	getdivfirstLevel = function(para1Value, para2Value, para3Value, para4Value) {
		$("#ss1").html("<option value=''>请选择</option>");
		jQuery.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : "/area/first?id=1",
			// data : "contractCode="+id,
			dataType : 'json',
			success : function(msg) {
				if (msg.areas != null) {
					var leng = msg.areas.length;
					if (leng > 0) {
						for ( var i = 0; i < leng; i++) {
							$("#ss1").append(
									"<option value='" + msg.areas[i].id + "'>"
											+ msg.areas[i].name + "</option>");
						}
						if (para1Value != ''
								&& typeof (para1Value) != "undefined") {
							$("#ss1").val(para1Value);
							getsecondLevel(para2Value, para3Value, para4Value);
						}
					}
				}
			},
			error : function(msg) {
				// alert("f:"+msg.list);
			}
		});

	};

	getdivsecondLevel = function(para2Value, para3Value, para4Value) {

		$("#ss2").html("<option value=''>请选择</option>");
		$("#ss3").html("<option value=''>请选择</option>");
		$("#ss4").html("<option value=''>请选择</option>");

		jQuery.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : "/area/second?id=" + getdivAreaLevelVal(1),
			// data : "contractCode="+id,
			dataType : 'json',
			success : function(msg) {
				if (msg.areas != null) {
					var leng = msg.areas.length;
					if (leng > 0) {
						for ( var i = 0; i < leng; i++) {
							$("#ss2").append(
									"<option value='" + msg.areas[i].id + "'>"
											+ msg.areas[i].name + "</option>");
						}
						if (para2Value != ''
								&& typeof (para2Value) != "undefined") {
							$("#ss2").val(para2Value);
							getthirdLevel(para3Value, para4Value);
						}
					}
				}
			},
			error : function(msg) {
				// alert("f:"+msg.list);
			}
		});

	};

	getdivthirdLevel = function(para3Value, para4Value) {
		$("#ss3").html("<option value=''>请选择</option>");
		$("#ss4").html("<option value=''>请选择</option>");
		jQuery.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : "/area/third?id=" + getdivAreaLevelVal(2),
			// data : "contractCode="+id,
			dataType : 'json',
			success : function(msg) {
				if (msg.areas != null) {
					var leng = msg.areas.length;
					if (leng > 0) {
						for ( var i = 0; i < leng; i++) {
							$("#ss3").append(
									"<option value='" + msg.areas[i].id + "'>"
											+ msg.areas[i].name + "</option>");
						}
						if (para3Value != ''
								&& typeof (para3Value) != "undefined") {
							$("#ss3").val(para3Value);
							getfourthLevel(para4Value);
						}
					}
				}

			},
			error : function(msg) {
				// alert("f:"+msg.list);
			}
		});

	};

	getdivfourthLevel = function(para4Value) {
		$("#ss4").html("<option value=''>请选择</option>");
		jQuery.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : "/area/fourth?id=" + getdivAreaLevelVal(3),
			// data : "contractCode="+id,
			dataType : 'json',
			success : function(msg) {
				if (msg.areas != null) {
					var leng = msg.areas.length;
					if (leng > 0) {
						for ( var i = 0; i < leng; i++) {
							$("#ss4").append(
									"<option value='" + msg.areas[i].id + "'>"
											+ msg.areas[i].name + "</option>");
						}
						if (para4Value != ''
							&& typeof (para4Value) != "undefined") 
						$("#ss4").val(para4Value);
					}
				}
			},
			error : function(msg) {
				// alert("f:"+msg.list);
			}
		});
	};
})(jQuery);
