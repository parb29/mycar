<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="qna.bean.QnaQBean"%>
<%
	QnaQBean article = (QnaQBean) request.getAttribute("article");
	String nowPage = (String) request.getAttribute("nowPage");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mycar 렌터카</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
	function modifyboard() {
		modifyform.submit();
	}
</script>
<style type="text/css">
h2 {
	font-size: 24pt;
	text-align: center;
	font-family: Pretendard !important;
}

table {
	margin: 0 auto;
	padding: 0;
	width: 95%;
	max-width: 700px;
	font-family: Pretendard !important;
}

.td_left {
	width: 20%;
	font-size: 18pt;
	text-align: center;
	font-family: Pretendard !important;
}

.td_right {
	width: 80%;
	font-family: Pretendard !important;
}

#hrOne {
	border: 1px solid black;
	max-width: 700px;
}

#hrTwo {
	border: 1px solid gray;
	max-width: 700px;
}
hr {
	max-width: 700px;
	font-family: Pretendard !important;
}
#commandCell {
	text-align: center;
	font-family: Pretendard !important;
}

#writeForm {
	width: 90%;
	margin: 0 auto;
	font-family: Pretendard !important;
}
textarea {
	width: 100%;
	height: 6.25em;
	border: none;
	resize: none;
	font-family: Pretendard !important;
}
.btn-default {
	color: #f5f5f5 !important;
	background-color: #1e1a1b !important;
	border-color: #1e1a1b !important;
}
</style>
</head>
<body>
	<jsp:include page="/view/main/mycarClHeader.jsp"></jsp:include>
	<!-- 게시판 등록 -->

	<section id="writeForm">
		<h2>게시판글수정</h2>
		<br />
		<hr id="hrOne">
		<br />
		<form
			action="qnaQClUpdatePro.qn?QNUM=<%=article.getQNUM()%>&page=<%=nowPage%>"
			method="post" name="modifyform">
			<input type="hidden" name="QNUM" value="<%=article.getQNUM()%>" />
			<table>
				<tr>
					<td class="td_left"><label for="QTITLE">제 목</label></td>
					<td class="td_right"><input name="QTITLE" type="text"
						class="form-control" id="QTITLE" value="<%=article.getQTITLE()%>"
						title="제목 입력 칸" alt="제목 입력 칸" /></td>
				</tr>
			</table>
			<br />
			<hr />
			<br />
			<table>
				<tr>
					<td class="td_left"><label for="QCON">내 용</label></td>
					<td><textarea id="QCON" name="QCON" cols="50" rows="15"
							class="form-control" title="내용 입력 칸" alt="내용 입력 칸"><%=article.getQCON()%></textarea></td>
				</tr>
			</table>
			<br />
			<hr />
			<br />
			<section id="commandCell">
		<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#update" title="수정">게시글 수정</button>
		<div class="modal fade" id="update" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title"></h4>
					</div>
					<div class="modal-body">정말로 수정 하시겠습니까?</div>
					<div class="modal-footer">
						<button type="button"
							onclick="location.href='javascript:modifyboard()'"
							class="btn btn-secondary btn btn-sm" title="수정">수정</button>
						<button type="button" class="btn btn-secondary btn btn-sm"
							data-dismiss="modal" title="취소">취소</button>
					</div>
				</div>
			</div>
		</div>&nbsp;&nbsp;
				<a href="qnaQClDetail.qn?QNUM=<%=article.getQNUM()%>&page=<%=nowPage%>" class="btn btn-default btn-sm"
					title="뒤로가기 버튼" alt="뒤로가기 버튼">뒤로</a>
			</section>
		</form>
	</section>
	<jsp:include page="/view/main/mycarFooter.jsp"></jsp:include>
</body>
</html>