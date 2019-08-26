isNull = function(object) {
	try {
		if (typeof object == "boolean") {
			return false;
		} else {
			return (object == null || typeof object == "undefined"
					|| object === "" || object == "undefined");
		}
	} catch (e) {
		alert("isNull: " + object + "::" + e.message);
		WebSquare.exception.printStackTrace(e);
	}
};

// 신규 비밀번호 체크
function getPwContent(key) {
	var pwd = key;
	var passed = validatePassword(pwd);
	return passed;
}

// 비밀번호 안정성 체크
function validatePassword(pw, options) {
	var o = {
		length : [ 6, 16 ],
		lower : 1,
		upper : 1,
		alpha : 1, /* lower + upper */
		numeric : 1,
		special : 1,
		custom : [/* regexes and/or functions */],
		badWords : [],
		badSequenceLength : 5,
		noQwertySequences : true,
		spaceChk : true,
		noSequential : false
	};

	// space bar check
	if (o.spaceChk && /\s/g.test(pw)) {
		return "<p style='line-height:200%;'><span style='color:#E3691E; font-weight:bold;'>사용불가</span> : 비밀번호 재작성 필요"
				+ "<br/>"
				+ "<span style='color:#999; font-weight:bold;'>영문 대소문자, 숫자 및 특수문자 사용</span></p>";
	}

	// password 길이 체크
	if (pw.length < o.length[0])
		return "<p style='line-height:200%;'><span style='color:#E3691E; font-weight:bold;'>사용불가</span>"
				+ "<br/>"
				+ "<span style='color:#999; font-weight:bold;'>비밀번호는 "
				+ o.length[0] + "자 이상 입력하셔야 합니다.</span></p>";

	if (pw.length > o.length[1])
		return "<p style='line-height:200%;'><span style='color:#E3691E; font-weight:bold;'>사용불가</span>"
				+ "<br/>"
				+ "<span style='color:#999;'>비밀번호는 "
				+ o.length[1]
				+ "자 이내로 입력하셔야 합니다.</span></p>";

	// bad sequence check
	if (o.badSequenceLength && pw.length >= o.length[0]) {
		var lower = "abcdefghijklmnopqrstuvwxyz", upper = lower.toUpperCase(), numbers = "0123456789", qwerty = "qwertyuiopasdfghjklzxcvbnm", start = o.badSequenceLength - 1, seq = "_"
				+ pw.slice(0, start);
		for (i = start; i < pw.length; i++) {
			seq = seq.slice(1) + pw.charAt(i);
			if (lower.indexOf(seq) > -1 || upper.indexOf(seq) > -1
					|| numbers.indexOf(seq) > -1
					|| (o.noQwertySequences && qwerty.indexOf(seq) > -1)) {
				return "<p style='line-height:200%;'>비밀번호 안전도 <span style='color:#E5E5E5'>|</span> <span style='color:#E3691E; font-weight:bold;'>낮음</span> "
						+ "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;'>―</span>"
						+ "<span style='color:#E5E5E5; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>―</span>"
						+ "<span style='color:#E5E5E5; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>―</span>"
						+ "<br/>"
						+ "<span style='color:#999; font-weight:bold;'>안전도가 높은 비밀번호를 권장합니다.</span></p>";
			}
		}
	}

	// password 정규식 체크
	var re = {
		lower : /[a-z]/g,
		upper : /[A-Z]/g,
		alpha : /[A-Z]/gi,
		numeric : /[0-9]/g,
		special : /[\W_]/g
	}, rule, i;

	var lower = (pw.match(re['lower']) || []).length > 0 ? 1 : 0;
	var upper = (pw.match(re['upper']) || []).length > 0 ? 1 : 0;
	var numeric = (pw.match(re['numeric']) || []).length > 0 ? 1 : 0;
	var special = (pw.match(re['special']) || []).length > 0 ? 1 : 0;

	// 숫자로만 이루어지면 낮음
	if ((pw.match(re['numeric']) || []).length == pw.length) {
		return "<p style='line-height:200%;'><span style='color:#E3691E; font-weight:bold;'>사용불가</span> : 비밀번호 재작성 필요"
				+ "<br/>"
				+ "<span style='color:#999; font-weight:bold;'>영문 대소문자, 숫자 및 특수문자 사용</span></p>";
	}

	// 숫자, 알파벳(대문자, 소문자), 특수문자 2가지 조합
	else if (lower + upper + numeric + special <= 2) {
		return "<p style='line-height:200%;'>비밀번호 안전도 <span style='color:#E5E5E5'>|</span> <span style='color:#E3691E; font-weight:bold;'>낮음</span> "
				+ "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;'>―</span>"
				+ "<span style='color:#E5E5E5; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>―</span>"
				+ "<span style='color:#E5E5E5; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>―</span>"
				+ "<br/>"
				+ "<span style='color:#999; font-weight:bold;'>안전도가 높은 비밀번호를 권장합니다.</span></p>";
	}
	// 숫자, 알파벳(대문자, 소문자), 특수문자 4가지 조합
	else if (lower + upper + numeric + special <= 3) {
		return "<p style='line-height:200%;'>비밀번호 안전도 <span style='color:#E5E5E5'>|</span> <span style='color:#E3691E; font-weight:bold;'>적정</span> "
				+ "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;'>―</span>"
				+ "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>―</span>"
				+ "<span style='color:#E5E5E5; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>―</span>"
				+ "<br/>"
				+ "<span style='color:#999; font-weight:bold;'>안전하게 사용하실 수 있는 비밀번호 입니다.</span></p>";
	}
	// 숫자, 알파벳(대문자, 소문자), 특수문자 4가지 조합
	else {
		return "<p style='line-height:200%;'>비밀번호 안전도 <span style='color:#E5E5E5'>|</span> <span style='color:#E3691E; font-weight:bold;'>높음</span> "
				+ "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;'>―</span>"
				+ "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>―</span>"
				+ "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>―</span>"
				+ "<br/>"
				+ "<span style='color:#999; font-weight:bold;'>예측하기 힘든 비밀번호로 더욱 안전합니다.</span></p>";
	}

	// enforce the no sequential, identical characters rule

	if (o.noSequential && /([\S\s])\1/.test(pw))
		return "no sequential";

	// enforce word ban (case insensitive)
	for (i = 0; i < o.badWords.length; i++) {
		if (pw.toLowerCase().indexOf(o.badWords[i].toLowerCase()) > -1)
			return "bad word";
	}

	// enforce custom regex/function rules
	for (i = 0; i < o.custom.length; i++) {
		rule = o.custom[i];
		if (rule instanceof RegExp) {
			if (!rule.test(pw))
				return "custom";
		} else if (rule instanceof Function) {
			if (!rule(pw))
				return "custom";
		}
	}
};

$(document).ready(function() {
	$("#ch_new_pw").off("focus").on("focus", function() {
		var value = $(this).val(); 
		$('.js-mytooltip-pw').myTooltip('updateContent', getPwContent(value));
		}); 
	
	$("#ch_new_pw").off("click").on("click", function() {
		var value = $(this).val(); 
		if(!isNull(value)) { 
			$('.js-mytooltip-pw').myTooltip('updateContent', getPwContent(value)); 
			}
		});
	
	$("#ch_new_pw").off("keyup").on("keyup", function() {
		$("#ch_new_pw").blur(); 
		$("#ch_new_pw").focus(); 
		});
	
	//비밀번호 안정성 tooltip
	$('.js-mytooltip-pw').myTooltip({
		'offset': 30, 
		'theme': 'light', 
		'customClass': 'mytooltip-content', 
		'content': 
		'<p>t</p>' 
	});
});	
	
