<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width", initial-scale=1>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- Alertify related links --> 
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
<!-- bootstrap links -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- Moment.js library -->
<script src="https://unpkg.com/moment@2.9.0/moment.js"></script>
<title>WiseTask | Main</title>
<style type="text/css">
*{
	box-sizing: border-box;
	margin: 0px;
	padding: 0px;
	font-family: 'Lato', sans-serif;
}
body{
	background-color: #f6f6f6;
}
/* disables horizontal scroll that was created due to unexplained white space on the right */
html{
	max-width: 100%;
    overflow-x: hidden;
}
a:hover, a:visited, a:link, a:active {
    text-decoration: none; /*removes default underline*/
    color: inherit; /*remove default color #60657b #fafafa*/
    cursor: pointer;
}
#navigatorPartBox{
	height: 100%;
	width: 300px;
	background-color: #323439;
	position: absolute;
	padding: 100px 50px 0px 50px;
}
#navigatorPartContent{
	color: white;
}
#rightPartBox{
	margin-left: 300px;
	padding: 150px 0px 0px 40px;
}
#rightPartContent{
	overflow: auto; /* stop from collapsing */
	width: 875px;
	height: 450px;
	/* display: block;
	margin-left: auto;
	margin-right: auto; */
	position:relative;
}
#appName{
	font-size: 50px;
	font-weight: 900;
	font-style: italic;
	text-align: center;
	margin-bottom: 100px;
	color: #101010;
}
#wisetaskLabel{
	font-size: 20px;
	font-weight: 700;
	position: relative;
	padding: 0px 0px 0px 18px;
	color: #c3c3c3;
}
#wisetaskLabel:hover{
	cursor: pointer;
}
#setDatesLabel:hover{
	cursor: pointer;
}
#logoutLabel:hover{
	cursor: pointer;
}
#setDatesLabel{
	font-size: 20px;
	font-weight: 700;
	margin-top: 70px;
	padding: 0px 0px 0px 18px;
	position: relative;
	color: #c3c3c3;
}
#houseIcon{
	position: absolute;
	top: 3px;
}
#wisetaskButton{
	margin-left: 40px;
}
#setDatesButton{
	margin-left: 40px;
}
#setDatesIcon{
	position: absolute;
	top: 3px;
}
#logoutLabel{
	font-size: 20px;
	font-weight: 700;
	margin-top: 70px;
	padding: 0px 0px 0px 18px;
	position: relative;
	color: #c3c3c3;
}
#logoutButton{
	margin-left: 40px;
}
#logoutIcon{
	position: absolute;
	top: 3px;
}
.entryBox{
	width: 110px;
	height: 150px;
	padding: 20px 0px 20px 0px;
	border: 3px solid gray;
	float: left;
	margin-left: 60px;
	margin-bottom: 60px;
	display: none;
	border-radius: 8px;
	position: relative;
}
.entryContent{
	text-align: center;
	font-size: 20px;
}
#nameEntryBox{
	background-color: white;
	text-align: center;
	font-size: 20px;
	border: 3px solid black;
	padding: 20px 20px 5px 20px;
}
#plusIcon:hover{
	cursor: pointer;
}
#closeNewEntryIcon {
	position: absolute; 
	top: -23px; 
	left: -23px;
}
#settingsSetDaysForm{
	padding: 0px 10px 0px 10px;
}
.daysTextParts{
	font-size: 18px;
	position: relative;
	width: 100%;
	padding-right: 200px;
}
.assessmentLabels{
	font-weight: bold;
	font-style: italic;
	font-size: 19px;
}
.daysInputFields{
	position: absolute;
	right: 50px;
	top: 0px;
	width: 27px;
	text-align: center;
	font-size: 20px;
}
#image-upload>input {
	display: none;
}
#image-upload{
	position: absolute;
	right: 50px;
	top: 0px;		
}
/* removes default input text stylings */
.accountFieldsInputs{
	background: none;
	color: inherit;
	border: none;
	padding: 0;
	font: inherit;
	outline: inherit;
}
.accountFields{
	border-bottom: 2px solid black;
	position: absolute;
	right: 20px;
	text-align: center;
}
.accountRadios{
	position: absolute;
	right: 0px;
}
.accountLabels{
	font-size: 25px;
	font-weight: 350;
}
::placeholder {
	opacity: 0.5;
	font-style: italic;
}
/* table stylings for "set dates" page */
.myrow {
	clear: both;
}
.col {
	width: 170px;
	height: 28px;
	display: block;
	float: left;
	text-align: center;
	font-size: 16px;
}
.tbHeader {
	font-size: 20px;
	font-style: italic;
	border-right: none;
	margin-bottom: 20px;
	font-weight: bold;
}
.modNameCol {
	padding-top: 2px;
}
.asmtTypeCol {
	padding-top: 2px;
}
.asmtWeight {
	padding-top: 2px;
	width: 130px;
}
.asmtWeek {
    padding-top: 2px;
    width: 100px;
    margin-right: 6px;
}
.curriculCol {
	padding-top: 2px;
}
.minDateCol {
}
.maxDateCol {
	
}
form:nth-child(even) {
	background-color: #D3D3D3;
}
.setDatesButtons{
	width: 100px;
	margin-left: 30px;
}
::-webkit-scrollbar {
	display: none;
}
#submitCheck>input {
	display: none;
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#rightPartContent').css('width', '1400px');
		$('#rightPartContent').css('display', 'block');
		$('#rightPartContent').css('margin-left', 'auto');
		$('#rightPartContent').css('margin-right', 'auto');
		$('#rightPartBox').css('margin-left', '200px');
		$('#rightPartBox').css('padding-bottom', '20px');
		$('#rightPartBox').css('position', 'absolute');
		$('#rightPartBox').css('width', '100%');
		$('#rightPartBox').css('height', '100%');
		$('#rightPartContent').css('height', '100%');
		$('#navigatorPartBox').css('z-index', '5');

		// display the TODO page by default
		$('#rightPartContent').empty();
		$('#wisetaskButton').css('color', '#fafafa');
		$('#setDatesButton').css('color', '#c3c3c3');
		$('#houseIcon').css('color', '#fafafa');
		$('#setDatesIcon').css('color', '#c3c3c3');
		displayTODOpage();
		
		$('#wisetaskLabel').click(function(){
			$('#rightPartContent').empty();
			$('#wisetaskButton').css('color', '#fafafa');
			$('#setDatesButton').css('color', '#c3c3c3');
			$('#houseIcon').css('color', '#fafafa');
			$('#setDatesIcon').css('color', '#c3c3c3');
			displayTODOpage();
		});

		$('#setDatesLabel').click(function(){
			$('#rightPartContent').empty();
			$('#wisetaskButton').css('color', '#c3c3c3');
			$('#setDatesButton').css('color', '#fafafa');
			$('#houseIcon').css('color', '#c3c3c3');
			$('#setDatesIcon').css('color', '#fafafa');
			displaySetDatesPage();
		});

		$('#logoutLabel').click(function(){
            $('#logoutLabel').css('color', '#fafafa');
            $('#addAccountLabel').css('color', '#c3c3c3');
            $('#wiseHubLabel').css('color', '#c3c3c3');
            location.href = "http://localhost:8025/logout";
        });

		function retrievePendingTasksToSet() {
			var tasksToSet = [];
			$.ajax({
				type : "GET",
				dataType : "json",
				contentType : "application/json",
				async : false,
				url : "http://localhost:8027/lecturers/retrieveDaysToSet/" + <%=session.getAttribute("userPK")%>,
				success : function(responseData) {
					tasksToSet = responseData.pendingTasksToSetList;
				},
				error : function(){}
			});
			return tasksToSet;
		}

		function displayTODOpage() {
			$('#rightPartContent').css('width', '850px');
			$('#rightPartBox').css('padding', '150px 0px 100px 0px');
			$('#rightPartContent').append("<div class='myrow' style='display: inline-block; border-bottom: 4px solid black; width:850px;'><span class='col tbHeader'>Module</span><span class='col tbHeader'>Assignment</span><span class='col tbHeader' style='width: 100px;'>Curriculum</span><span class='col tbHeader' style='width: 130px;'>Days Left</span><span class='col tbHeader' style='width: 170px;'>Task</span></div>");
			var tasksToDo = retrieveTasksToDo();
			for(var i=0; i<tasksToDo.length; i++) {
				var taskToDo = tasksToDo[i];
				var assessmentTypeTemp = taskToDo.assessmentType;
				var assessmentTypeFormatted = assessmentTypeTemp.replace('_', ' ');

				var taskDescTemp = taskToDo.taskDescription.split(".");
				var taskDesc = taskDescTemp[0];
				var taskDescModified = modifyTaskDesc(taskDesc);

				var dateToDoArrayTemp = taskToDo.dateToSend.split("-");
				var dateToDoYear = dateToDoArrayTemp[0];
				var dateToDoMonth = dateToDoArrayTemp[1];
				var dateToDoDay = dateToDoArrayTemp[2];
				var dateToDoArray = [];
				dateToDoArray.push(dateToDoYear);
				dateToDoArray.push(dateToDoMonth);
				dateToDoArray.push(dateToDoDay);

				var todayDate = moment().toDate();
				var todayDateF = moment(todayDate).format('YYYY-MM-DD');
				var todayDateArrayTemp = todayDateF.split("-");
				var todayDateYear = todayDateArrayTemp[0];
				var todayDateMonth = todayDateArrayTemp[1];
				var todayDateDay = todayDateArrayTemp[2];
				var todayDateArray = [];
				todayDateArray.push(todayDateYear);
				todayDateArray.push(todayDateMonth);
				todayDateArray.push(todayDateDay);

				console.log("todayDateArray = " + todayDateArray);
				console.log("dateToDoArray = " + dateToDoArray);

				var todayDateArrayM = moment(todayDateArray);
				var dateToDoArrayM = moment(dateToDoArray);

				var daysLeftToDo = dateToDoArrayM.diff(todayDateArrayM, 'days');

				$('#rightPartContent').append("<form id='myform" + i + "' style='width: 850px;overflow:hidden;'><span class='col modNameCol' style='overflow: auto;height:70px;padding-top: 2px;'>" + taskToDo.moduleName + "</span><span class='col asmtTypeCol' style='padding-top:20px;'>" + assessmentTypeFormatted + "</span><span class='col curriculCol' style='width: 100px;padding-top:20px;'>" + taskToDo.curriculum + "</span><span class='col asmtWeek' style='width: 130px;padding-top:20px;'>" + daysLeftToDo + "</span><span class='col asmtWeight' style='width: 170px;text-align:left;height:70px;overflow: auto;'>" + taskDescModified + "</span><span id='submitCheck' style='width:100px;display: block;text-align:center;float:left;padding-top: 15px;'><label for='submitButton" + i + "'><svg xmlns='http://www.w3.org/2000/svg' width='35' height='35' fill='green' class='bi bi-check-lg' viewBox='0 0 16 16'><path d='M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z'/></svg></label><input id='submitButton" + i + "' type='image'/></span><input type='hidden' name='taskID' value='" + taskToDo.taskId + "'></form>");

			}

			if(tasksToDo.length == 0) {
				$('#rightPartContent').append('<div style="text-align:center;">There are no tasks to do at this moment.</div>');
			}

			$('form').submit(function(event){
				event.preventDefault();
				var taskID = this.querySelector('input[name="taskID"]').value;
				console.log(taskID);
				$.ajax({
					type : "PUT",
					dataType : "json",
					contentType : "application/json",
					url : "http://localhost:8027/lecturers/changeTaskVisibility/" + taskID,
					success : function(){},
					error : function(){}
				});
				alertify.success('Task is set as finished!', 3);
				$('#rightPartContent').empty();
				displayTODOpage();
			});

		}

		function modifyTaskDesc(taskDesc) {
			var modifiedDesc;
			switch(taskDesc){
				case "Today is the last day to finish creating the assessment":
					modifiedDesc = "Finish creating the assessment.";
				break;
				case "Today the assessment should be sent to the moderator for verification":
					modifiedDesc = "Send the assessment to the moderator for verification.";
				break;
				case "Today is the last day for assessing the papers given for the assessment":
					modifiedDesc = "Assess the students' performance for the assessment.";
				break;
				case "Today the feedback of the assessment should be sent to the moderator":
					modifiedDesc = "The feedback of the assessment should be sent to the moderator.";
				break;
				case "Today the feedback of the assessment should be uploaded/sent to the students":
					modifiedDesc = "The feedback of the assessment should be uploaded/sent to the students.";
				break;
				case "Today the assessment should be uploaded (or sent to the students)":
					modifiedDesc = "The assessment should be uploaded (or sent to the students).";
				break;
				case "Today is the deadline of the assessment":
					modifiedDesc = "Deadline of the assessment.";
				break;
			}
			return modifiedDesc;
		}

		function retrieveTasksToDo() {
			var tasksToDo = [];
			$.ajax({
				type : "GET",
				dataType : "json",
				contentType : "application/json",
				async : false,
				url : "http://localhost:8027/lecturers/getTasksToDo/" + <%=session.getAttribute("userPK")%>,
				success : function(responseData){
					tasksToDo = responseData.tasksToDo;
				},
				error : function(){}
			});
			return tasksToDo;
		}

		function displaySetDatesPage() {
			$('#rightPartBox').css('padding-bottom', '40px;');
			$('#rightPartContent').css('width', '1400px');
			$('#rightPartContent').css('display', 'block');
			$('#rightPartContent').css('margin-left', 'auto');
			$('#rightPartContent').css('margin-right', 'auto');
			var tasksToSetTemp = retrievePendingTasksToSet();
			/*For some reason it seems that the data are returned in the opposite order. This fixes the problem.*/
			var tasksToSet = tasksToSetTemp.reverse();
			$('#rightPartContent').append("<div class='myrow' style='display: inline-block; border-bottom: 4px solid black; width: 1216px;'><span class='col tbHeader'>Module</span><span class='col tbHeader'>Assignment</span><span class='col tbHeader' style='width:130px;'>Weight</span><span class='col tbHeader'>Curriculum</span><span class='col tbHeader' style='width:100px;'>Week</span><span class='col tbHeader'>Upload Date</span><span class='col tbHeader'>Deadline Date</span></div>");
			for(var i=0; i<tasksToSet.length; i++) {
				var task = tasksToSet[i];
				/* 
				   Calculate the min and max Dates from using the week1_begin_date set by the admin, 
				   and the assessment_weeks taken from the assessments. That way, the user will be 
				   able to set upload and deadline dates from a valid range.
				*/
				var assessmentWeeks = task.assessmentWeeks;
				var inPlace = [];
				for(var j=0; j<assessmentWeeks.length; j++) {
					if(assessmentWeeks.charAt(j) == '1') {
						var temp = j + 1;
						inPlace.push(temp);
					}
				}
				// Where is the position of the first occurance and the last respectively.
				var startsAt = inPlace[0];
				var endsAt = inPlace[inPlace.length - 1];
				
				// Below variables are used for the purpose of displaying the 'Week' list column.
				var startsAtTemp = startsAt;
				var endsAtTemp = endsAt;

				var beginningDate = task.week1BeginDate;
				var minDate = moment(beginningDate, 'YYYY-MM-DD').add(--startsAt, 'weeks');
				var afterAWeek = moment(minDate, 'YYYY-MM-DD').add(1, 'weeks');
				var maxDate = moment(afterAWeek, 'YYYY-MM-DD').subtract(1, 'days');

				var minDateFormatted =moment(minDate._d).format('YYYY-MM-DD');
				var maxDateFormatted = moment(maxDate._d).format('YYYY-MM-DD');

				/* 
				In the case that an assessment's duration is more that one week, then we should also
				store exta minDates and maxDates regarding the deadline, since it will not be at the
				same week as in the previous case.
				*/
				var minDateDeadlineWeek;
				var maxDateDeadlineWeek;

				var minDateDeadlineWeekFormatted;
				var maxDateDeadlineWeekFormatted

				var isPendingTaskDatesSameWeek;
				if (inPlace.length === 1) {
					isPendingTaskDatesSameWeek = true;
				} else {
					minDateDeadlineWeek = moment(beginningDate, 'YYYY-MM-DD').add(--endsAt, 'weeks');
					var afterAWeekD = moment(minDateDeadlineWeek, 'YYYY-MM-DD').add(1, 'weeks');
					maxDateDeadlineWeek = moment(afterAWeekD, 'YYYY-MM-DD').subtract(1, 'days');
					isPendingTaskDatesSameWeek = false;
					minDateDeadlineWeekFormatted = moment(minDateDeadlineWeek._d).format('YYYY-MM-DD');
				    maxDateDeadlineWeekFormatted = moment(maxDateDeadlineWeek._d).format('YYYY-MM-DD');
				}

				var week;
				if(startsAtTemp !== endsAtTemp) {
					week = 'W' + startsAtTemp + ' - W' + endsAtTemp;
				} else {
					week = 'W' + startsAtTemp;
				}

				var assessmentTypeTemp = task.assessmentType;
				var assessmentTypeFormatted = assessmentTypeTemp.replace('_', ' ');

				$('#rightPartContent').append("<form id='myform" + i + "' style='width: 1216px;'><span class='col modNameCol' style='overflow: auto;'>" + task.moduleName + "</span><span class='col asmtTypeCol' style='overflow: auto;'>" + assessmentTypeFormatted + "</span><span class='col asmtWeight'>" + task.assessmentWeight + "%</span><span class='col curriculCol' style='overflow: auto;'>" + task.curriculum + "</span><span class='col asmtWeek' style='overflow: auto;'>" + week + "</span><input type='hidden' name='assessmentID' value='" + task.assessmentId + "'></form>");

				if (isPendingTaskDatesSameWeek) {
					$('#myform'+i).append("<span class='col minDateCol'><input type='date' min='" + minDateFormatted + "' max='" + maxDateFormatted + "' name='uploadDate'></span><span class='col maxDateCol'><input type='date' min='" + minDateFormatted + "' max='" + maxDateFormatted + "' name='deadlineDate'></span><span class='setDatesButtons'><input type='submit' value='set dates'></span>");
				} else {
					$('#myform'+i).append("<span class='col minDateCol'><input type='date' min='" + minDateFormatted + "' max='" + maxDateFormatted + "' name='uploadDate'></span><span class='col maxDateCol'><input type='date' min='" + minDateDeadlineWeekFormatted + "' max='" + maxDateDeadlineWeekFormatted + "' name='deadlineDate'></span><span class='setDatesButtons'><input type='submit' value='set dates'></span>");
				}

			}

			$('form').submit(function(event){
				/*Query selector solution found in -> https://stackoverflow.com/questions/15148659/how-can-i-use-queryselector-on-to-pick-an-input-element-by-name*/
				event.preventDefault();
				var dataToSend = {
					uploadDate : this.querySelector('input[name="uploadDate"]').value,
					deadlineDate : this.querySelector('input[name="deadlineDate"]').value,
					assessmentID : this.querySelector('input[name="assessmentID"]').value
				};
				var isValid = checkFormValidity(dataToSend);
				if (!isValid) {
					return;
				} else {
					$.ajax({
						type : "PUT",
						contentType : "application/json",
						data : JSON.stringify(dataToSend),
						async : false,
						url : "http://localhost:8027/lecturers/uploadSettedDates",
						success : function(){
							alertify.success('Dates were successfully placed for the particular assessment.', 4);
							$('#rightPartContent').empty();
							displaySetDatesPage();
							setEmailsToBeSent(dataToSend.assessmentID, dataToSend.uploadDate, dataToSend.deadlineDate);
						},
						error : function(){}
					});
				}

			});

			function checkFormValidity(dataToSend) {
				var isValid = true;
				if(dataToSend.uploadDate == '' || dataToSend.deadlineDate == '') {
					isValid = false;
					alertify.warning('Dates are not being provided.', 3);
				}
				var uploadM = moment(dataToSend.uploadDate);
				var deadlineM = moment(dataToSend.deadlineDate);
				if(uploadM.isAfter(deadlineM)) {
					isValid = false;
					alertify.error('The upload date should be set prior to the deadline date of the assessment.', 5);
				}
				return isValid;
			}
		}

		function setEmailsToBeSent(assessmentID, uploadDate, deadlineDate) {
			/*We retrieve the entry id in which the assessment belongs to.*/
			var entryId;
			$.ajax({
				type : "GET",
				dataType : "json",
				contentType : "application/json",
				url : "http://localhost:8026/admin/getEntryFKOfAssessment/" + assessmentID,
				async : false,
				success : function(responseData){
					entryId = responseData.entryID;
				},
				error : function(){}
			});
			/*We retrieve the settings of the previously mentioned entry.*/
			var settingsOfEntry;
			var entryIdObj = {
				id : entryId
			};
			$.ajax({
				type : "POST",
				dataType : "json",
				contentType : "application/json",
				data : JSON.stringify(entryIdObj),
				url : "http://localhost:8026/admin/getSettings",
				async : false,
				success : function(responseData){
					settingsOfEntry = responseData;
				},
				error : function(){}
			});
			/*We retrieve details of the assessment that we are using later for the purpose of creating the messages that will be displayed on the emails.*/
			var assessmentObj;
			$.ajax({
				type : "GET",
				dataType : "json",
				contentType : "application/json",
				url : "http://localhost:8026/admin/assessments/" + assessmentID,
				async : false,
				success : function(responseData){
					assessmentObj = responseData;
				},
				error : function(){}
			});
			/*Based on the type of the assessment e.g. assessed lab, we specifically get the respective settings (regarding the days).*/
			var settingsDays;
			switch(assessmentObj.assessmentType) {
				case "ASSESSED_LAB":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.assessedLStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.assessedLStep2PreModSend,
						postCorrectionDays : settingsOfEntry.assessedLStep3PostCorrectionDays,
						postModSend : settingsOfEntry.assessedLStep4PostModSend,
						gradesUpload : settingsOfEntry.assessedLStep5GradesUpload
					};
				break;
				case "DEBATE":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.debateStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.debateStep2PreModSend,
						postCorrectionDays : settingsOfEntry.debateStep3PostCorrectionDays,
						postModSend : settingsOfEntry.debateStep4PostModSend,
						gradesUpload : settingsOfEntry.debateStep5GradesUpload
					};
				break;
				case "DEMO_TEACHING":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.demoTStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.demoTStep2PreModSend,
						postCorrectionDays : settingsOfEntry.demoTStep3PostCorrectionDays,
						postModSend : settingsOfEntry.demoTStep4PostModSend,
						gradesUpload : settingsOfEntry.demoTStep5GradesUpload
					};
				break;
				case "FINAL_EXAM":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.finalExamStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.finalExamStep2PreModSend,
						postCorrectionDays : settingsOfEntry.finalExamStep3PostCorrectionDays,
						postModSend : settingsOfEntry.finalExamStep4PostModSend,
						gradesUpload : settingsOfEntry.finalExamStep5GradesUpload
					};
				break;
				case "ORAL_EXAMINATION":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.oralExamStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.oralExamStep2PreModSend,
						postCorrectionDays : settingsOfEntry.oralExamStep3PostCorrectionDays,
						postModSend : settingsOfEntry.oralExamStep4PostModSend,
						gradesUpload : settingsOfEntry.oralExamStep5GradesUpload
					};
				break;
				case "PORTFOLIO":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.portfolioStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.portfolioStep2PreModSend,
						postCorrectionDays : settingsOfEntry.portfolioStep3PostCorrectionDays,
						postModSend : settingsOfEntry.portfolioStep4PostModSend,
						gradesUpload : settingsOfEntry.portfolioStep5GradesUpload
					};
				break;
				case "PRESENTATION":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.presentationStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.presentationStep2PreModSend,
						postCorrectionDays : settingsOfEntry.presentationStep3PostCorrectionDays,
						postModSend : settingsOfEntry.presentationStep4PostModSend,
						gradesUpload : settingsOfEntry.presentationStep5GradesUpload
					};
				break;
				case "PROJECT":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.projectStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.projectStep2PreModSend,
						postCorrectionDays : settingsOfEntry.projectStep3PostCorrectionDays,
						postModSend : settingsOfEntry.projectStep4PostModSend,
						gradesUpload : settingsOfEntry.projectStep5GradesUpload
					};
				break;
				case "QUIZ":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.quizStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.quizStep2PreModSend,
						postCorrectionDays : settingsOfEntry.quizStep3PostCorrectionDays,
						postModSend : settingsOfEntry.quizStep4PostModSend,
						gradesUpload : settingsOfEntry.quizStep5GradesUpload
					};
				break;
				case "REPORT":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.reportStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.reportStep2PreModSend,
						postCorrectionDays : settingsOfEntry.reportStep3PostCorrectionDays,
						postModSend : settingsOfEntry.reportStep4PostModSend,
						gradesUpload : settingsOfEntry.reportStep5GradesUpload
					};
				break;
				case "SELF_REFLECTION":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.selfReflectStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.selfReflectStep2PreModSend,
						postCorrectionDays : settingsOfEntry.selfReflectStep3PostCorrectionDays,
						postModSend : settingsOfEntry.selfReflectStep4PostModSend,
						gradesUpload : settingsOfEntry.selfReflectStep5GradesUpload
					};
				break;
				case "OTHER":
					settingsDays = {
						preDaysUntilReady : settingsOfEntry.otherStep1PreDaysUntilReady,
						preModSend : settingsOfEntry.otherStep2PreModSend,
						postCorrectionDays : settingsOfEntry.otherStep3PostCorrectionDays,
						postModSend : settingsOfEntry.otherStep4PostModSend,
						gradesUpload : settingsOfEntry.otherStep5GradesUpload
					};
				break;
			}

			/*Based on the settings previously mentioned, we calculate the following dates (by always using the upload and the deadline dates that were set by the user).*/

			var preDaysUntilReadyDate = moment(uploadDate, 'YYYY-MM-DD').add(settingsDays.preDaysUntilReady, 'days');
			var preDaysUntilReadyDateFormatted = moment(preDaysUntilReadyDate._d).format('YYYY-MM-DD');

			var preModSendDate = moment(uploadDate, 'YYYY-MM-DD').add(settingsDays.preModSend, 'days');
			var preModSendDateFormatted = moment(preModSendDate._d).format('YYYY-MM-DD');

			var postCorrectionDaysDate = moment(deadlineDate, 'YYYY-MM-DD').add(settingsDays.postCorrectionDays, 'days');
			var postCorrectionDaysDateFormatted = moment(postCorrectionDaysDate._d).format('YYYY-MM-DD');

			var postModSendDate = moment(deadlineDate, 'YYYY-MM-DD').add(settingsDays.postModSend, 'days');
			var postModSendDateFormatted = moment(postModSendDate._d).format('YYYY-MM-DD');

			var gradesUploadDate = moment(deadlineDate, 'YYYY-MM-DD').add(settingsDays.gradesUpload, 'days');
			var gradesUploadDateFormatted = moment(gradesUploadDate._d).format('YYYY-MM-DD');

			/*We are retrieving the module in which, the assessment belongs to. That is because we want to display some additional information on the email.*/
			var moduleOfAssessment;
			$.ajax({
				type: "GET",
				dataType: "json",
				contentType: "application/json",
				async: false,
				url : "http://localhost:8026/admin/getModuleOfAssessment/" + assessmentID,
				success : function(responseData) {
					moduleOfAssessment = responseData;
				},
				error : function(){}
			});

			/*This is the javascript object which includes the required date for inserting the new tasks records in the database.*/  
			var taskDetailsAndAsmntIdObj = {
				assessmentID : parseInt(assessmentID)
			};

			for(var counter = 0; counter < 7; ++counter) {

				switch(counter) {
					case 0:
						taskDetailsAndAsmntIdObj.taskDescription = 'Today is the last day to finish creating the assessment.\nAssessment Details:\nType: ' + assessmentObj.assessmentType.replace('_', ' ') + '\nWeight: ' + assessmentObj.assessmentWeight + '%\nModule Name: ' + moduleOfAssessment.moduleName + '\nModule Code: ' + moduleOfAssessment.moduleCode + '\nModule Curriculum: ' + moduleOfAssessment.curriculum + '.\nModule Moderator: ' + moduleOfAssessment.moderatorLecturer;
						taskDetailsAndAsmntIdObj.dateToSend = preDaysUntilReadyDateFormatted;
					break;
					case 1:
						taskDetailsAndAsmntIdObj.taskDescription = 'Today the assessment should be sent to the moderator for verification.\nAssessment Details:\nType: ' + assessmentObj.assessmentType.replace('_', ' ') + '\nWeight: ' + assessmentObj.assessmentWeight + '%\nModule Name: ' + moduleOfAssessment.moduleName + '\nModule Code: ' + moduleOfAssessment.moduleCode + '\nModule Curriculum: ' + moduleOfAssessment.curriculum + '.\nModule Moderator: ' + moduleOfAssessment.moderatorLecturer;
						taskDetailsAndAsmntIdObj.dateToSend = preModSendDateFormatted;
					break;
					case 2:
						taskDetailsAndAsmntIdObj.taskDescription = 'Today is the last day for assessing the papers given for the assessment.\nAssessment Details:\nType: ' + assessmentObj.assessmentType.replace('_', ' ') + '\nWeight: ' + assessmentObj.assessmentWeight + '%\nModule Name: ' + moduleOfAssessment.moduleName + '\nModule Code: ' + moduleOfAssessment.moduleCode + '\nModule Curriculum: ' + moduleOfAssessment.curriculum + '\nModule Moderator: ' + moduleOfAssessment.moderatorLecturer;
						taskDetailsAndAsmntIdObj.dateToSend = postCorrectionDaysDateFormatted;
					break;
					case 3:
						taskDetailsAndAsmntIdObj.taskDescription = 'Today the feedback of the assessment should be sent to the moderator.\nAssessment Details:\nType: ' + assessmentObj.assessmentType.replace('_', ' ') + '\nWeight: ' + assessmentObj.assessmentWeight + '%\nModule Name: ' + moduleOfAssessment.moduleName + '\nModule Code: ' + moduleOfAssessment.moduleCode + '\nModule Curriculum: ' + moduleOfAssessment.curriculum + '\nModule Moderator: ' + moduleOfAssessment.moderatorLecturer;
						taskDetailsAndAsmntIdObj.dateToSend = postModSendDateFormatted;
					break;
					case 4:
						taskDetailsAndAsmntIdObj.taskDescription = 'Today the feedback of the assessment should be uploaded/sent to the students.\nAssessment Details:\nType: ' + assessmentObj.assessmentType.replace('_', ' ') + '\nWeight: ' + assessmentObj.assessmentWeight + '%\nModule Name: ' + moduleOfAssessment.moduleName + '\nModule Code: ' + moduleOfAssessment.moduleCode + '\nModule Curriculum: ' + moduleOfAssessment.curriculum + '\nModule Moderator: ' + moduleOfAssessment.moderatorLecturer;
						taskDetailsAndAsmntIdObj.dateToSend = gradesUploadDateFormatted;
					break;
					case 5:
						taskDetailsAndAsmntIdObj.taskDescription = 'Today the assessment should be uploaded (or sent to the students).\nAssessment Details:\nType: ' + assessmentObj.assessmentType.replace('_', ' ') + '\nWeight: ' + assessmentObj.assessmentWeight + '%\nModule Name: ' + moduleOfAssessment.moduleName + '\nModule Code: ' + moduleOfAssessment.moduleCode + '\nModule Curriculum: ' + moduleOfAssessment.curriculum + '\nModule Moderator: ' + moduleOfAssessment.moderatorLecturer;
						taskDetailsAndAsmntIdObj.dateToSend = uploadDate;
					break;
					case 6:
						taskDetailsAndAsmntIdObj.taskDescription = 'Today is the deadline of the assessment.\nAssessment Details:\nType: ' + assessmentObj.assessmentType.replace('_', ' ') + '\nWeight: ' + assessmentObj.assessmentWeight + '%\nModule Name: ' + moduleOfAssessment.moduleName + '\nModule Code: ' + moduleOfAssessment.moduleCode + '\nModule Curriculum: ' + moduleOfAssessment.curriculum + '\nModule Moderator: ' + moduleOfAssessment.moderatorLecturer;
						taskDetailsAndAsmntIdObj.dateToSend = deadlineDate;
					break;
				}
				/*We are calling a webservice responsible for saving our new task.*/
				$.ajax({
					type : "POST",
					dataType : "json",
					contentType : "application/json",
					data : JSON.stringify(taskDetailsAndAsmntIdObj),
					async : false,
					url : "http://localhost:8027/lecturers/tasks",
					success : function(){},
					error : function(){}
				});
			}
		}

	});
</script>
</head>
<body>		
	<div id="navigatorPartBox">
		<div id="navigatorPartContent">
			<div id="appName">
				WiseTask
			</div>
			<div id=wisetaskLabel>
				<svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16" id="houseIcon">
					  <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
					  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
				</svg>
				<span id="wisetaskButton">My WiseTask</span>
			</div>
			<div id=setDatesLabel>
				<svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-calendar2-week" viewBox="0 0 16 16" id="setDatesIcon">
					  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
					  <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4zM11 7.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
					</svg>
				<span id="setDatesButton">Set Dates</span>
			</div>
			<div id="logoutLabel">
				<svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16" id="logoutIcon">
				  <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
				  <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
				</svg>
				<span id="logoutButton">Log out</span>
			</div>
		</div>
	</div>
	<div style="width: 300px; float: left;">.</div>
	<div id="rightPartBox">
		<div id="rightPartContent">
		</div>
	</div>
</body>
</html>