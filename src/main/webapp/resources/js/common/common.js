/*
 * 숫자에 천단위 콤바 붙이기 - num : 변환할 숫자
 * @return : String
 */
function commaNum(num) {
	if(typeof(num)=="string"){
		num=num.replace(/,/g,"");
	}
	
	var len, point;
	var str = "";
	
	if(num == null || num == ""){				
		str = nullConvertDash(str);
	}else{
		var parts = num.toString().split(".");
		   
		point = parts[0].length % 3;
		len = parts[0].length;   
		
		str = parts[0].substring(0, point);   
		
		while (point < len) { 
			if (str != "") str += ",";   
			str += parts[0].substring(point, point + 3);
			point += 3;   
		}
		
		if(1 < parts.length){
			for(var i=1; i<parts.length; i++){
				str = str + "." + parts[i];
			}
		}				
	}			
	
	return str;
}

/*
 * null 일 때 "-" 로 바꿔주기
 * @return : String
 */
function nullConvertDash(str) {
	
	if(str == null || str == ""){
		str = "-";
	}			
	
	return str;
}

/*
 * null 일 때 "0" 로 바꿔주기
 * @return : String
 */
function nullConvertZero(str) {
	
	if(str == null || str == ""){
		str = "0";
	}			
	
	return str;
}

/*
 * null 일 때 "" 로 바꿔주기
 * @return : String
 */
function nullConvert(str) {
			
	if(str == null || str == ""){
		str = "";
	}			
	
	return str;
}

//필드값 Number 체크 함수
function checkNumber(str) {
    var flag=true;
    if (str.length > 0) {
        for (i = 0; i < str.length; i++) {
            if (str.charAt(i) < '0' || str.charAt(i) > '9') {
                flag=false;
            }
        }
    }
    return flag;
}

/*
 * 숫자만 입력가능
 */
function numberOnly(id){
	jQuery("#"+id).val(jQuery("#"+id).val().replace(/[^0-9]/gi,""));
};

function isNull(str) {
	
	if (str == null || str == "") {
		return true;
	} 

	return false;
} 

/*
 * 숫자 체크
 */
function isNumber(obj) { 

	if (obj.value=="") return false;

	if(!isNull(obj.value) && isNaN(obj.value) == 1) {

		alert('이 항목은 숫자로 입력하세요.'); 

		obj.select(); 

		return true; 

	}

	return false; 

}

function isNumKeyCheck(obj){
	
    var keynum = event.keyCode;
    
    if((keynum < 48 || keynum > 57) &&
        (keynum != 8 && keynum != 9 && keynum != 35 && keynum != 36 && keynum != 37 && keynum != 39 && keynum != 46 && keynum !=110 && keynum !=190) &&
        (keynum < 96 || keynum > 105))
     {
    	//alert("숫자 또는 소수점만 입력 가능합니다");
    	//event.preventDefault();
    	event.returnValue = false;
     }else{ 
    	 return true;
     }
}

/*
 * 최대 길이 체크
 */
function checkMaxLength(obj, maxByte){
	
	var strValue = obj.value;
	var strLen = strValue.length;
	var totalByte = 0;
	var len = 0;
	var oneChar = "";
	var str2 = "";
	
	for(var i=0; i < strLen; i++){
		
		oneChar = strValue.charAt(i);
		
		if(escape(oneChar).length > 4){
			totalByte += 2;
		}else{
			totalByte++;
		}
		
		if(totalByte <= maxByte){
			len = i + 1;
		}
	}
	
	if(totalByte > maxByte){
		
		alert("최대 허용 길이(" +maxByte + " Byte)를 초과해서 입력 할 수 없습니다.");
		str2 = strValue.substr(0, len);
		obj.value = str2;
		checkMaxLength(obj, 4000);
	}
	
}

function checkMaxByte(obj, maxByte){
	
	var strValue = obj.value;
	var strLen = strValue.length;
	var totalByte = 0;
	var len = 0;
	var oneChar = "";
	var str2 = "";
	
	for(var i=0; i < strLen; i++){
		
		oneChar = strValue.charAt(i);
		
		if(escape(oneChar).length > 4){
			totalByte += 2;
		}else{
			totalByte++;
		}
		
		if(totalByte <= maxByte){
			len = i + 1;
		}
	}
	
	if(totalByte > maxByte){
		
		alert("최대 허용 길이(" +maxByte + " Byte)를 초과해서 입력 할 수 없습니다.");
		return true;
	}
	
	return false;
	
}

//두개의 날짜를 비교하여 차이를 알려준다.
function dateDiff(_date1, _date2) {
    var diffDate_1 = _date1 instanceof Date ? _date1 :new Date(_date1);
    var diffDate_2 = _date2 instanceof Date ? _date2 :new Date(_date2);
 
    diffDate_1 =new Date(diffDate_1.getFullYear(), diffDate_1.getMonth()+1, diffDate_1.getDate());
    diffDate_2 =new Date(diffDate_2.getFullYear(), diffDate_2.getMonth()+1, diffDate_2.getDate());
 
    var diff = Math.abs(diffDate_2.getTime() - diffDate_1.getTime());
    diff = Math.ceil(diff / (1000 * 3600 * 24));
 
    return diff;
}
