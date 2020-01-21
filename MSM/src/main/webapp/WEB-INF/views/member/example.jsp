<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta id = "_csrf" name = "_csrf" content = "${_csrf.token}" />
<title>Material Design Bootstrap</title>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.10.1/css/mdb.min.css" rel="stylesheet">
</head>
<body>

<form action = "/member/step3" method = "post" role = "form" id = "usercheck" name ="member">
		<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}" />
			<div class = "form-group">
				<label for = "mId">아이디</label>
				<input type = "text" class = "form-control" id = "mId" name = "mId" placeholder = "ID"/>
				<div class = "eheck_font" id = "id_check"></div>				
			</div>
</form>

<!-- Validator 유효성 검증 -->
<!-- 
<div class="panel-body">
    <div class="row">
        <div class="col-lg-6">
            <form:form role="form" commandName="registerRequest" action="/member/step3" method="post">
                <div class="form-group input-group">
                    <form:input type="text" class="form-control" placeholder="ID" path="mId"/>
                    <form:errors path="mId"/>
                </div>
                <div class="form-group input-group">
                    <form:input type="mEmail" class="form-control" placeholder="Email" path="mEmail"/>
                    <form:errors path="mEmail"/>
                </div>
                <div class="form-group input-group">
                    <form:input type="text" class="form-control" placeholder="Name" path="mName"/>
                    <form:errors path="mName"/>
                </div>
                <div class="form-group input-group">
                    <form:password class="form-control" placeholder="Password" path="mPw"/>
                    <form:errors path="mPw"/>
                </div>
                <div class="form-group input-group">
                    <form:password class="form-control" placeholder="Password Check" path="checkPw"/>
                    <form:errors path="checkPw"/>
                </div>
                <button type="submit" class="btn btn-default">가입하기</button>
                <button type="reset" class="btn btn-default">취소하기</button>
            </form:form>
        </div>
    </div>
</div>
 -->




<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.10.1/js/mdb.min.js"></script>
<script>

//아이디 정규식
var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;

$(document).ready(function(){
	// ID 중복 확인
	$("#mId").blur(function(){
		if($('#mId').val() == ''){
			$("#id_check").text('아이디를 입력하세요.');
			$("#id_check").css("color", "red");
		} else if (idJ.test($("#mId").val()) != true){
			$("#id_check").text('4-12자의 영문, 숫자만 사용 가능합니다.');
			$("#id_check").css("color", "red");
		} else if ($("#mId").val() != ''){
			$.ajax({
				async : true,
				type : 'POST',
				data : mId,
				datatype : 'json',
				url : "/member/idCheck",
				contentType : "application/json; charset=UTF-8",
				success : function(data){
					if(data.cnt > 0 ){
						$("#id_check").text('중복된 아이디입니다.');
						$("#usercheck").attr('disabled', true);
					} else {
						if(idJ.test(mId)){
							$('#id_check').text('사용 가능한 ID입니다.');
							$('#id_check').css('color', 'blue');
							$('#usercheck').attr('disabled', false);
						}
						else if (mId = ''){
							$('#id_check').text('ID를 입력해주세요.');
							$('#id_check').css('color', 'blue');
							$('#usercheck').attr('disabled', true);
						}
						else {
							$('#id_check').text('ID는 소문자와 숫자 4-12 자리만 가능합니다.');
							$('#id_check').css('color', 'red');
							$('#usercheck').attr('disabled', true);
						}
					}
				}
			});
		}
	});
});
</script>
</body>
</html>