<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>여행 병아리들을 위한 여행계획사이트 티피~~</title>

<%@ include file="/inc/asset.jsp" %>

  <style>
    form {
      outline: 0;
      float: left;
      -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
      box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
      -webkit-border-radius: 4px;
      border-radius: 4px;
    }

    form > .textbox {
      outline: 0;
      height: 42px;
      width: 244px;
      line-height: 42px;
      padding: 0 16px;
      background-color: rgba(255, 255, 255, 0.8);
      color: #212121;
      border: 0;
      float: left;
      -webkit-border-radius: 4px 0 0 4px;
      border-radius: 4px 0 0 4px;
    }

    form > .textbox:focus {
      outline: 0;
      background-color: #FFF;
    }

    form > .button {
      outline: 0;
      background: none;
      background-color: rgba(38, 50, 56, 0.8);
      float: left;
      height: 42px;
      width: 42px;
      text-align: center;
      line-height: 42px;
      border: 0;
      color: #FFF;
      font: normal normal normal 14px/1 FontAwesome;
      font-size: 16px;
      text-rendering: auto;
      text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
      -webkit-transition: background-color .4s ease;
      transition: background-color .4s ease;
      -webkit-border-radius: 0 4px 4px 0;
      border-radius: 0 4px 4px 0;
    }

    form > .button:hover {
      background-color: rgba(0, 150, 136, 0.8);
    }
  </style>

</head>
<body>
<!-- template.jsp -->
<%@ include file="/inc/header.jsp" %>

<section class="main-section">
  <div class="con1">
    <div class="con1-title">나만의 여행 플래너 TP!</div>
    <div class="cont1-desc">쉽고 빠르게 여행을 계획하세요.</div>
    <form method="post">
      <input type="text" class="textbox" placeholder="도시명으로 검색">
      <input title="Search" value="" type="submit" class="button">
    </form>
    <div class="hot-keyword">최근검색: 부산 인천 강원도</div>
  </div>
  <c:if test="${not empty id}">
    <div>
      <span><img src="https://www.earthtory.com/res/img/common/mobile/img_profile.png" alt="회원사진"></span>
      <div class="member_name">회원이름</div>
      <table class="table table-bordered">
        <tr>
          <td>클립보드</td>
          <td>여행일정</td>
          <td>리뷰</td>
          <td>Q&A</td>
        </tr>
        <tr>
          <td>0</td>
          <td>3</td>
          <td>1</td>
          <td>2</td>
        </tr>
      </table>
      <div class="make-schedule"><img src="https://www.earthtory.com/res/img/main/ico_plan.png">일정 만들기</div>
    </div>
  </c:if>
<%--이름정하기........................................--%>
<%--zzz--%>
<%--어스토리 마이리얼트립 스투비플래너 클룩 트리플 프립--%>
<%--어스 리얼 플래너--%>
<%--마이트래블플래너--%>
<%--유어리얼트립--%>
<%--  travel plan--%>
<%--  tp--%>
<%--  sist--%>
<%--  SisTravel--%>
<%--  Schedule--%>

<%--트래블러--%>
<%--티피(아귀엽다) > Travel Plan * 여행 병아리들을 위한 여행계획사이트 티피~~--%>
<%--TCP--%>
</section>


<%@ include file="/inc/init.jsp" %>
<%@ include file="/inc/footer.jsp" %>
<script>

</script>
</body>
</html>















