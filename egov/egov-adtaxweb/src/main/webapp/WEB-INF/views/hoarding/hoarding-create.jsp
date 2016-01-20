<!-- #-------------------------------------------------------------------------------
# eGov suite of products aim to improve the internal efficiency,transparency, 
#    accountability and the service delivery of the government  organizations.
# 
#     Copyright (C) <2015>  eGovernments Foundation
# 
#     The updated version of eGov suite of products as by eGovernments Foundation 
#     is available at http://www.egovernments.org
# 
#     This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     any later version.
# 
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
#     You should have received a copy of the GNU General Public License
#     along with this program. If not, see http://www.gnu.org/licenses/ or 
#     http://www.gnu.org/licenses/gpl.html .
# 
#     In addition to the terms of the GPL license to be adhered to in using this
#     program, the following additional terms are to be complied with:
# 
# 	1) All versions of this program, verbatim or modified must carry this 
# 	   Legal Notice.
# 
# 	2) Any misrepresentation of the origin of the material is prohibited. It 
# 	   is required that all modified versions of this material be marked in 
# 	   reasonable ways as different from the original version.
# 
# 	3) This license does not grant any rights to any user of the program 
# 	   with regards to rights under trademark law for use of the trade names 
# 	   or trademarks of eGovernments Foundation.
# 
#   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
#------------------------------------------------------------------------------- -->
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="row">
	<div class="col-md-12">
		<c:if test="${not empty message}">
			<div class="alert alert-success" role="alert"><spring:message code="${message}"/></div>
		</c:if>
		<form:form id="advertisementform" method="post" class="form-horizontal form-groups-bordered" 
		modelAttribute="advertisementPermitDetail" commandName="advertisementPermitDetail" enctype="multipart/form-data">
		<form:hidden path="previousapplicationid" value="${previousapplicationid.id}"/>
	<div class="panel panel-primary" data-collapsed="0">
		<div class="panel-heading">
			<ul class="nav nav-tabs" id="settingstab">
				<li class="active"><a data-toggle="tab"
					href="#hoardingdetails" data-tabidx="0" aria-expanded="false"><spring:message code="lbl.advertisement.details"/></a></li>
			</ul>
		</div>
		<div class="panel-body custom-form">
			<div class="tab-content">
				<div class="tab-pane fade active in" id="hoardingdetails">	
					<jsp:include page="createLegacyAdvertisement.jsp"></jsp:include>
					<jsp:include page="document-update.jsp"></jsp:include>
				
				</div>
			</div>
		</div>
		<jsp:include page="../workflow/commonWorkflowMatrix.jsp"/>
		<div class="buttonbottom" align="center">
			<jsp:include page="../workflow/commonWorkflowMatrix-button.jsp" />
		</div>
	</form:form>
	</div>
</div>
<script>
//this is to reset the sub combobox upon field error
var subcategory = '${advertisementPermitDetail.advertisement.subCategory.id}';
var adminBoundry = '${advertisementPermitDetail.advertisement.ward.id}';
var revenueBoundary = '${advertisementPermitDetail.advertisement.locality.id}';
</script>
<script src="<c:url value='/resources/global/js/jquery/plugins/exif.js' context='/egi'/>"></script>
<script src="<c:url value='/resources/app/js/hoarding.js'/>"></script>
