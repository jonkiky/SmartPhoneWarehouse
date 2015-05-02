<c:if test="${empty seller.user_name}">
	<c:redirect url="/adminLogin" />
</c:if>