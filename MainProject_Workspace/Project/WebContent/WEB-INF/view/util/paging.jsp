<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${pageInfo.totalRows > 0}">
<div class="row">
<div class="paging col-xs-12" style="text-align: center;">
	<%--Page 이전 페이지 구현 --%>
	<c:choose>
		<c:when test="${searchType == null}">
			<c:choose>
				<c:when test="${pageInfo.currentBlock eq 1}">
					<a class="btn disabled">◀</a>
				</c:when>
				<c:otherwise>
					<a
						href="${pageURL}?page=
${(pageInfo.currentBlock-1)*pageInfo.pagesPerBlock }">
						◀</a>
				</c:otherwise>
			</c:choose>

			<%--Page  페이지 구현 --%>
			<div class="btn-group">
			<c:choose>
			
				<c:when test="${pageInfo.currentBlock ne pageInfo.totalBlocks}">
					<c:forEach begin="1" end="${pageInfo.pagesPerBlock}"
						varStatus="num">
						<a class="btn btn-default ${(pageInfo.currentPage == ((pageInfo.currentBlock- 1) * pageInfo.pagesPerBlock + num.count))?'btn-primary disabled':''}"
							href="${pageURL}?page=${(pageInfo.currentBlock - 1) * pageInfo.pagesPerBlock + num.count }">
							${(pageInfo.currentBlock- 1) * pageInfo.pagesPerBlock + num.count }</a>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<c:forEach
						begin="${(pageInfo.currentBlock-1)*pageInfo.pagesPerBlock + 1}"
						end="${pageInfo.totalPages}" varStatus="num">
						<a class="btn btn-default ${(pageInfo.currentPage == ((pageInfo.currentBlock- 1) * pageInfo.pagesPerBlock + num.count))?'btn-primary disabled':''}"
							href="${pageURL}?page=${(pageInfo.currentBlock - 1) * pageInfo.pagesPerBlock + num.count }">
							${(pageInfo.currentBlock - 1) * pageInfo.pagesPerBlock + num.count }</a>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</div>

			<%--Page 다음 페이지 구현 --%>
			<c:choose>
				<c:when test="${pageInfo.currentBlock eq pageInfo.totalBlocks}">
					<a class="btn disabled">▶</a>
				</c:when>
				<c:otherwise>
					<a
						href="${pageURL}?page=${pageInfo.currentBlock * pageInfo.pagesPerBlock + 1 }">
						▶</a>
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>

			<c:choose>
				<c:when test="${pageInfo.currentBlock eq 1}">
					<a class="btn disabled">◀◀</a>
				</c:when>
				<c:otherwise>
					<a
						href="${pageURL}?searchType=${searchType}&searchValue=${searchValue}&page=
${(pageInfo.currentBlock-1)*pageInfo.pagesPerBlock }">
						◀</a>
				</c:otherwise>
			</c:choose>

			<%--Page  페이지 구현 --%>
			<div class="btn-group">
			<c:choose>
				<c:when test="${pageInfo.currentBlock ne pageInfo.totalBlocks}">
				
					<c:forEach begin="1" end="${pageInfo.pagesPerBlock}"
						varStatus="num">
						<a class="btn btn-default ${(pageInfo.currentPage == ((pageInfo.currentBlock- 1) * pageInfo.pagesPerBlock + num.count))?'btn-primary disabled':''}"
							href="${pageURL}?searchType=${searchType}&searchValue=${searchValue}&page=
            ${(pageInfo.currentBlock - 1) * pageInfo.pagesPerBlock + num.count }">
							${(pageInfo.currentBlock- 1) * pageInfo.pagesPerBlock + num.count }</a>
					</c:forEach>
					
				</c:when>
				<c:otherwise>
					<c:forEach
						begin="${(pageInfo.currentBlock-1)*pageInfo.pagesPerBlock + 1}"
						end="${pageInfo.totalPages}" varStatus="num">
						<a class="btn btn-default ${(pageInfo.currentPage == ((pageInfo.currentBlock- 1) * pageInfo.pagesPerBlock + num.count))?'btn-primary disabled':''}"
							href="${pageURL}?searchType=${searchType}&searchValue=${searchValue}&page=${(pageInfo.currentBlock - 1) * pageInfo.pagesPerBlock + num.count }">
							${(pageInfo.currentBlock - 1) * pageInfo.pagesPerBlock + num.count }</a>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</div>

			<%--Page 다음 페이지 구현 --%>
			<c:choose>
				<c:when test="${pageInfo.currentBlock eq pageInfo.totalBlocks}">
					<a class="btn disabled">▶▶</a>
				</c:when>
				<c:otherwise>
					<a
						href="${pageURL}?searchType=${searchType}&searchValue=${searchValue}&page=${pageInfo.currentBlock * pageInfo.pagesPerBlock + 1 }">
						▶</a>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
</div>
</div>
</c:if>