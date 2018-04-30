(function($) {
	initflow = function(para1Value, para2Value, para3Value, para4Value) {
		var s1 = '<select name="s1" id="s1" class="select18"><option value="">请选择</option></select>';
		var s2 = '<select id="s2" name="s2" class="select18"><option value="">请选择</option></select>';
		var s3 = '<select id="s3" name="s3" class="select18"><option value="">请选择</option></select>';
		var s4 = '<select id="s4" name="s4" class="select18"><option value="">请选择</option></select>';
		$('.areapulldown').html(s1 + s2 + s3 + s4);
		getfirstLevel(para1Value, para2Value, para3Value, para4Value);
		$("#s1").bind("change", function() {
			getsecondLevel();
		});
		$("#s2").bind("change", function() {
			getthirdLevel();
		});
		$("#s3").bind("change", function() {
			getfourthLevel();
		});

	};
	getAreaLevelVal = function(level) {
		var s1_id = $("#s" + level).val();
		return s1_id;
	};
	getAreaLevelTxt = function(level) {
		var s1_txt = $("#s" + level).find("option:selected").text();
		return s1_txt;
	};
	getfirstLevel = function(para1Value, para2Value, para3Value, para4Value) {
		$("#s1").html("<option value=''>请选择</option>");
		jQuery.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : "/area/first?id=1",
			// data : "contractCode="+id,
			dataType : 'json',
			success : function(msg) {
				if (msg != null && msg.areas != null) {
					var leng = msg.areas.length;
					if (leng > 0) {
						for ( var i = 0; i < leng; i++) {
							$("#s1").append(
									"<option value='" + msg.areas[i].id + "'>"
											+ msg.areas[i].name + "</option>");
						}
						if (para1Value != ''
								&& typeof (para1Value) != "undefined") {
							$("#s1").val(para1Value);
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

	getsecondLevel = function(para2Value, para3Value, para4Value) {

		$("#s2").html("<option value=''>请选择</option>");
		$("#s3").html("<option value=''>请选择</option>");
		$("#s4").html("<option value=''>请选择</option>");

		jQuery.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : "/area/second?id=" + getAreaLevelVal(1),
			// data : "contractCode="+id,
			dataType : 'json',
			success : function(msg) {
				if (msg.areas != null) {
					var leng = msg.areas.length;
					if (leng > 0) {
						for ( var i = 0; i < leng; i++) {
							$("#s2").append(
									"<option value='" + msg.areas[i].id + "'>"
											+ msg.areas[i].name + "</option>");
						}
						if (para2Value != ''
								&& typeof (para2Value) != "undefined") {
							$("#s2").val(para2Value);
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

	getthirdLevel = function(para3Value, para4Value) {
		$("#s3").html("<option value=''>请选择</option>");
		$("#s4").html("<option value=''>请选择</option>");
		jQuery.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : "/area/third?id=" + getAreaLevelVal(2),
			// data : "contractCode="+id,
			dataType : 'json',
			success : function(msg) {
				if (msg.areas != null) {
					var leng = msg.areas.length;
					if (leng > 0) {
						for ( var i = 0; i < leng; i++) {
							$("#s3").append(
									"<option value='" + msg.areas[i].id + "'>"
											+ msg.areas[i].name + "</option>");
						}
						if (para3Value != ''
								&& typeof (para3Value) != "undefined") {
							$("#s3").val(para3Value);
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

	getfourthLevel = function(para4Value) {
		$("#s4").html("<option value=''>请选择</option>");
		jQuery.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : "/area/fourth?id=" + getAreaLevelVal(3),
			// data : "contractCode="+id,
			dataType : 'json',
			success : function(msg) {
				if (msg.areas != null) {
					var leng = msg.areas.length;
					if (leng > 0) {
						for ( var i = 0; i < leng; i++) {
							$("#s4").append(
									"<option value='" + msg.areas[i].id + "'>"
											+ msg.areas[i].name + "</option>");
						}
						if (para4Value != ''
							&& typeof (para4Value) != "undefined") 
						$("#s4").val(para4Value);
					}
				}
			},
			error : function(msg) {
				// alert("f:"+msg.list);
			}
		});
	};
})(jQuery);
