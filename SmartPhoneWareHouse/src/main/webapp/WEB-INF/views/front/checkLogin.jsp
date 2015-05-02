<c:if test="${empty buyer.user_name}">
	<c:redirect url="/login" />
</c:if>