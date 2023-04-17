<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../include/head.jsp" %>
<main>
	<div class="container d-flex justify-content-center mt-2">
		<h3 class="fw-bold">관리자 페이지</h3>
	</div>
	<div class="container">
		<div class="container mt-5">
			<ul class="nav justify-content-center nav-fill nav-tabs text-black">
				<li class="nav-item"><a class="nav-link text-reset"
					href="<c:url value='/admin/asreturn.do' />">주문 관리</a></li>
				<li class="nav-item">
					<!-- 선택시 클래스 fw-bold --> <a
					class="nav-link text-reset active fw-bold"
					href="<c:url value='/admin/prod.do' />">상품 관리</a>
				</li>
				<li class="nav-item"><a class="nav-link text-reset"
					aria-current="page"
					href="<c:url value='/admin/mainPageModify.do' />">메인 화면 관리</a></li>
				<li class="nav-item"><a class="nav-link text-reset"
					href="<c:url value='/admin/qaprod.do' />">문의/공지관리</a>
				<li class="nav-item"><a class="nav-link text-reset"
					aria-current="page" href="<c:url value='/admin/member.do' />">회원
						관리</a></li>
				</li>
			</ul>
		</div>
	</div>
	<!-- 서브메뉴 -->
	<div class="container mt-4">
		<ul class="nav justify-content-end text-black">
			<li class="nav-item"><a
				class="nav-link active text-reset fw-bold" aria-current="page"
				href="<c:url value='/admin/prod.do' />">상품 등록</a></li>
			<li class="nav-item"><a class="nav-link text-reset"
				href="<c:url value='' />">판매량 확인</a></li>
		</ul>
	</div>
	<div class="container mt-1">
		<!-- 상품 리스트 -->
		<div class="container w-75">
			<!-- 상품 등록 -->
			<form name="prodInsert" method="post" action="prodinsert.do"
				enctype="multipart/form-data">
				<div class="form-group d-flex justify-content-around">
					<select class="category1 form-select form-select-sm"
						aria-label=".form-select-sm example" name="prodCate1">
						<option value="">1차 카테고리</option>
					</select> <select name="category_tb_code"
						class="category2 form-select form-select-sm"
						aria-label=".form-select-sm example">
						<option value="">2차 카테고리</option>
					</select>
				</div>
				<div style="display:none">
					<input type="text" name="opt_name">
					<input type="text" name="opt_stock">
					<input type="text" name="opt_price">
				</div>
				<div
					class="form-group mt-2 d-flex input-group justify-content-between align-items-center">
					<span class="input-group-text" id="basic-addon1">상품명</span>
					<input type="text" class="form-control" placeholder=""
						name="prod_name">
				</div>
				<div
					class="form-group mt-2 d-flex input-group justify-content-between align-items-center">
					<span class="input-group-text" id="basic-addon1">가격</span>
					<input type="text" class="form-control" placeholder=""
						name="prod_price">
				</div>
				<div
					class="form-group mt-2 d-flex input-group justify-content-between align-items-center">
					<span class="input-group-text" id="basic-addon1">제조사</span>
					<input type="text" class="form-control" placeholder=""
						name="prod_co">
				</div>
				<div
					class="form-group mt-2 d-flex input-group justify-content-between align-items-center">
					<span class="input-group-text" id="basic-addon1">출시일</span>
					<input type="date" class="form-control" placeholder=""
						name="prod_rdate">
				</div>
				<div
					class="form-group mt-2 d-flex input-group justify-content-between align-items-center">
					<span class="input-group-text" id="basic-addon1">재고량</span>
					<input type="text" class="form-control" placeholder=""
						name="prod_stock">
				</div>
				<div class="form-group mt-2 d-flex input-group justify-content-between align-items-center">
					<span class="input-group-text">최소 구매수량</span> 
					<input name="prod_qtymin" type="text" aria-label="최소 구매" class="form-control">
					<span class="input-group-text">최대 구매수량</span> 
					<input name="prod_qtymax" type="text" aria-label="최대 구매" class="form-control">
				</div>
				<div
					class="form-group mt-2 d-flex input-group justify-content-between align-items-center">
					<span class="input-group-text" id="basic-addon1">예약상품 여부</span>
					<input name="prod_reserv" type="radio" value="1">Y
					<input name="prod_reserv" type="radio" value="2">N
				</div>
				<div class="form-group mt-2">
					<div class="input-group mb-3">
						<input name="prod_file1" type="file" class="form-control">
						<label class="input-group-text" for="inputGroupFile02">썸네일</label>
					</div>
				</div>
				<div class="form-group mt-2">
					<div class="input-group mb-3">
						<input name="prod_file2" type="file" class="form-control">
						<label class="input-group-text" for="inputGroupFile02">메인사진</label>
					</div>
				</div>
				<div class="form-group mt-2">
					<div class="input-group mb-3">
						<input name="prod_file3" type="file" class="form-control">
						<label class="input-group-text" for="inputGroupFile02">상세정보</label>
					</div>
				</div>
				<table id="optTable" class="d-grid gap-1 mt-2 table form-group">
				</table>
				<div class="d-grid gap-1 mt-2">
					<div class="input-group mb-3">
					<input id="prodOptbtn" type="button" class="btn btn-outline-secondary btn-sm form-control" value="옵션추가">
					<input id="prodOptx5" type="button" class="btn btn-outline-secondary btn-sm form-control" value="옵션삭제">
					</div>
				</div>
				<div class="d-grid gap-1 mt-2">
					<input type="submit" onclick="return prodcheck()" class="btn btn-outline-secondary btn-lg form-control" value="상품등록">
				</div>
			</form>
		</div>
		<script>
        $("#prodOptbtn").on("click", function() {
				var html = "";
				
				html += "<tr>";
				html += "<td class='form-group mt-1 d-flex input-group justify-content-between align-items-center'>";
				html += "<span class='input-group-text' id='basic-addon1'>옵션명</span>";
				html += "<input type='text' class='form-control'name='opt_name'>";
				html += "<span class='input-group-text' id='basic-addon1'>재고</span>";
				html += "<input type='text' class='form-control' name='opt_stock'>";
				html += "<span class='input-group-text' id='basic-addon1'>가격</span>";
				html += "<input type='text' class='form-control' name='opt_price'>";
				html += "</tr>";
				
				$("#optTable").append(html);
				console.log(html);
			})
	        $(document).on("click", "#prodOptx5", function() {
	        	$("#optTable tr:last").remove();
	        });
		</script>
		<!-- <script>
	        $("#prodOptbtn").on("click", function() {
	            $("#prodOpt1").show();
	            $("#prodOpt2").show();
	            $("#prodOpt3").show();
	            $("#prodOpt4").show();
	            $("#prodOpt5").show();
	        });
	        $(document).on("click", "#prodOptx1", function() {
	        	$("#prodOpt1").hide();
	        });
	        $(document).on("click", "#prodOptx2", function() {
	        	$("#prodOpt2").hide();
	        });
	        $(document).on("click", "#prodOptx3", function() {
	        	$("#prodOpt3").hide();
	        });
	        $(document).on("click", "#prodOptx4", function() {
	        	$("#prodOpt4").hide();
	        });
	        $(document).on("click", "#prodOptx5", function() {
	        	$("#prodOpt5").hide();
	        });
		</script> -->
	</div>
</main>
<!-- 유효성검사 -->
<script>
	function prodcheck(){
		if(prodInsert.prodCate1.value == ""){
			alert("1차카테고리를 선택해주세요");
			prodInsert.prodCate1.focus();
			return false;
		}
		if(prodInsert.category_tb_code.value == ""){
			alert("2차카테고리를 선택해주세요");
			prodInsert.category_tb_code.focus();
			return false;
		}
		if(prodInsert.prod_name.value.length == 0){
			alert("상품이름을 입력해주세요");
			prodInsert.prod_name.focus();
			return false;
		}
		if(prodInsert.prod_price.value.length == 0){
			alert("상품가격을 입력해주세요");
			prodInsert.prod_price.focus();
			return false;
		}
		if(prodInsert.prod_co.value.length == 0){
			alert("상품제조사를 입력해주세요");
			prodInsert.prod_co.focus();
			return false;
		}
		if(prodInsert.prod_rdate.value.length == 0){
			alert("상품출시일을 선택해주세요");
			prodInsert.prod_rdate.focus();
			return false;
		}
		if(prodInsert.prod_stock.value.length == 0){
			alert("상품재고량을 입력해주세요");
			prodInsert.prod_stock.focus();
			return false;
		}
		if(prodInsert.prod_qtymin.value.length == 0){
			alert("상품최소구매수량을 입력해주세요");
			prodInsert.prod_qtymin.focus();
			return false;
		}
		if(prodInsert.prod_qtymax.value.length == 0){
			alert("상품최대구매수량을 입력해주세요");
			prodInsert.prod_qtymax.focus();
			return false;
		}

		flag = false;
		for( i = 0; i < prodInsert.prod_reserv.length; i++ ){
			if( prodInsert.prod_reserv[i].checked ){
				flag = true;
			}
		}
		if( flag == false ){
			alert("예약상품 여부를 선택해주세요");
			return false;
		}
		if(!confirm("등록하시겠습니까?")){
			alert("상품등록을 취소했습니다.");
			return false;
		}else{
			alert("상품등록을 완료했습니다.");
			return true;
		}
	}
</script>
<!-- 카테고리 -->
<script>
	// 데이터
	var jsonData = JSON.parse('${category}');
	console.log(jsonData);

	var cate1Arr = new Array();
	var cate1Obj = new Object();

	for (var i = 0; i < jsonData.length; i++) {
		if (jsonData[i].level == "1") {
			cate1Obj = new Object();
			cate1Obj.cate_code = jsonData[i].cate_code;
			cate1Obj.cate_name = jsonData[i].cate_name;
			cate1Arr.push(cate1Obj);
		}
	}

	var cateSelect1 = $("select.category1");

	for (var i = 0; i < cate1Arr.length; i++) {
		cateSelect1.append("<option value='" + cate1Arr[i].cate_code + "'>"	+ cate1Arr[i].cate_name + "</option>");
	}

	$(document).on(
	"change",
	"select.category1",
	function() {
		var cate2Arr = new Array();
		var cate2Obj = new Object();

		for (var i = 0; i < jsonData.length; i++) {
			if (jsonData[i].level == "2") {
				cate2Obj = new Object();
				cate2Obj.cate_code = jsonData[i].cate_code;
				cate2Obj.cate_name = jsonData[i].cate_name;
				cate2Obj.cate_refcode = jsonData[i].cate_refcode;

				cate2Arr.push(cate2Obj);
			}
		}
		var cateSelect2 = $("select.category2");
		cateSelect2.children().remove();

		$("option:selected", this).each(function() {
			var selectVal = $(this).val();
			cateSelect2
					.append("<option value='"+ selectVal +"'>2차 카테고리</option>");

			for (var i = 0; i < cate2Arr.length; i++) {
				if (selectVal == cate2Arr[i].cate_refcode) {
					cateSelect2.append("<option value='" + cate2Arr[i].cate_code + "'>"+ cate2Arr[i].cate_name + "</option>");
				}
			}
		});
	});
</script>
<%@ include file="../include/foot.jsp" %>