<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>ID : ${task.id} の編集ページ</h2>

        <form method="POST" action="${pageContext.request.contextPath}/update">
            <%-- <c:import url="_form.jsp" /> --%>
            <label for="content">新規タスク</label><br />
            <input type="text" name="content" value="${task.content}" />
            <br /><br />

            <input type="hidden" name="_token" value="${_token}" />
            <button type="submit">更新</button>

        </form>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>

    </c:param>
</c:import>