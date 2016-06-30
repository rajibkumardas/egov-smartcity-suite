
<link rel="stylesheet" href="<c:url value='/resources/global/css/egov/map-autocomplete.css' context='/egi'/>">
	  <div class="form-group">
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.department" />
			</label>
			<div class="col-sm-3 add-margin">
				<form:select path="executingDepartment" data-first-option="false" id="executingDepartment" class="form-control disablefield" required="required">
					<form:option value="">
						<spring:message code="lbl.select" />
					</form:option>
					<form:options items="${departments}" itemValue="id"	itemLabel="name" />
				</form:select>
				<form:errors path="executingDepartment" cssClass="add-margin error-msg" />
			</div>
			
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.abstractestimatedate" /><span class="mandatory"></span>
			</label>
			<div class="col-sm-3 add-margin">
				<form:input path="estimateDate" name="estimateDate" class="form-control disablefield" value="${estimateDate}"/>
				<form:errors path="estimateDate" cssClass="add-margin error-msg" />
			</div>
		</div>
		
		<div class="form-group">
		<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.natureofwork" />
			</label>
			<div class="col-sm-3 add-margin ">
			<form:select path="natureOfWork" data-first-option="false" id="natureOfWork" class="form-control disablefield" required="required">
					<form:option value="">
						<spring:message code="lbl.select" />
					</form:option>
					<form:options items="${natureOfWork}" itemLabel="name" itemValue="id" />
				</form:select>
				
				<form:errors path="natureOfWork" cssClass="add-margin error-msg" /> 
			</div>
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.estimate.ward" />
			</label>
			<div class="col-sm-3 add-margin ">
			<form:hidden path="ward" class="form-control" name="ward" value="${abstractEstimate.lineEstimateDetails.lineEstimate.ward.id}"/>
			<form:input id="wardInput" path="ward.name" class="form-control disablefield" type="text" required="required"/>
			</div>
			
		</div>
		
		<c:if test="${abstractEstimate.lineEstimateDetails != null && lineEstimateDetails.estimateNumber != ''}">
		<div class="form-group">
			
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.locality" />
			</label>
			<div class="col-sm-3 add-margin ">
			<input class="form-control disablefield" name="locality"  id="" value="${abstractEstimate.lineEstimateDetails.lineEstimate.location.name}"/>
			</div>
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.workcategory" />
			</label>
			<div class="col-sm-3 add-margin ">
				<input class="form-control disablefield" name="workCategory" id="workCategory" value="${abstractEstimate.lineEstimateDetails.lineEstimate.workCategory}"/>
			</div>
		</div>
		<c:if test="${abstractEstimate.lineEstimateDetails.lineEstimate.workCategory == 'SLUM_WORK' }">
		<div class="form-group">
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.typeofslum" />
			</label>
			<div class="col-sm-3 add-margin ">
			<input class="form-control disablefield" name="" id="typeOfSlum" value="${abstractEstimate.lineEstimateDetails.lineEstimate.typeOfSlum}"/>
			</div>
			
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.beneficiary" />
			</label>
			<div class="col-sm-3 add-margin ">
			<input class="form-control disablefield" name="" id="beneficiary" value="${abstractEstimate.lineEstimateDetails.lineEstimate.beneficiary}"/>
			</div>
		</div>
		</c:if>
		</c:if>
		<div class="form-group">
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.location" />
			</label>
		     <div class="col-sm-3 add-margin">
                  <div class="input-group">
                       <form:input path="location" name="location" type="text" id="location" class="form-control"/>
                       <span class="input-group-addon">
                           <span class="glyphicon glyphicon-globe" onclick="jQuery('#modal-6').modal('show', {backdrop: 'static'});"></span>
                       </span>
                   </div>
              </div>
		</div> 
		<div class="form-group" id="latlonDiv">
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.latitude" />
			</label>
			<div class="col-sm-3 add-margin ">
			<form:input path="latitude" name="latitude" id="latitude" class="form-control disablefield" />
			</div>
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.longitude" />
			</label>
			<div class="col-sm-3 add-margin">
				<form:input path="longitude" id="longitude" name="longitude" class="form-control disablefield" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.nameofwork" />
			</label>
			<div class="col-sm-3 add-margin ">
			<form:textarea path="name" name="name" id="workName" class="form-control disablefield" />
			<input type="hidden" id="nameOfWork" name="nameOfWork" value="${abstractEstimate.lineEstimateDetails.nameOfWork}"/>
			<form:errors path="name" cssClass="add-margin error-msg" />
			</div>
			
			<label class="col-sm-2 control-label text-right">
			    <spring:message code="lbl.workdescription" /><span class="mandatory"></span>
			</label>
			<div class="col-sm-3 add-margin">
				<form:textarea path="description" id="description" name="description" class="form-control"  maxlength="1024" required="required"/>
				<form:errors path="description" cssClass="add-margin error-msg" />
			</div>
		</div>
		