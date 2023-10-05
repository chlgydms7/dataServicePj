		<input type="hidden" name="start" id="start" value="${paging.start }" />
		<input type="hidden" name="end" id="end" value="${paging.end }" />
		<input type="hidden" name="startPage" id="startPage" value="${paging.startPage }" />
		<input type="hidden" name="endPage" id="endPage" value="${paging.endPage }" />
		<input type="hidden" name="cntPerPage" id="cntPerPage" value="${paging.cntPerPage }" />
		<input type="hidden" name="nowPage" id="nowPage" value="" />
		<input type="hidden" name="end" id="end" value="${paging.end }" />
				<!-- 페이징 start -->
				<div class="pagination">
					<c:if test="${paging.startPage != 1 }">
						<%-- <a class="pre_next" href="/boardList?nowPage=${paging.startPage-1 }&cntPerPage=${paging.cntPerPage}">&lt;</a> --%>
						<a class="pre" onclick="paging(${paging.startPage-1});">&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<span class="nowPage">${p }</span>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<%-- <a class="restPage" href="/boardList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a> --%>
								<a class="restPage" onclick="paging(${p});">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<%-- <a class="pre_next" href="/boardList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a> --%>
						<a class="next" onclick="paging(${paging.endPage+1});">&gt;</a>
					</c:if>
			   </div>
			   <!-- 페이징 end -->