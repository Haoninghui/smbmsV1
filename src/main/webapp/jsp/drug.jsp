<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/jsp/common/head.jsp"%>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>用户管理页面</span>
    </div>
    <div class="search">
        <form method="get" action="${pageContext.request.contextPath }/jsp/drug.do">
            <input name="method" value="query" class="input-text" type="hidden">
<%--            <input	value="search" type="submit" id="searchbutton">--%>
        </form>
    </div>

        <!--用户-->
    <table class="providerTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">
            <th width="10%">drug id</th>
            <th width="35%">drug name</th>
            <th width="45%">drug url</th>
            <th width="10%">drug biomarker</th>

        </tr>
        <c:forEach var="drug" items="${drugList}" varStatus="status">
            <tr>
                <td>
                    <span>${drug.id}</span>
                </td>
                <td>
                    <span>${drug.name}</span>
                </td>
                <td>
                    <span>${drug.drugUrl}</span>
                </td>
                <td>
                    <span>${drug.biomarker}</span>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</section>

<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/userlist.js"></script>
