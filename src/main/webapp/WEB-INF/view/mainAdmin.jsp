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
    z-index: 10;
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
    z-index: 5;
}
::-webkit-scrollbar {
    display: none;
}
#appName{
    font-size: 50px;
    font-weight: 900;
    font-style: italic;
    text-align: center;
    margin-bottom: 100px;
    color: #101010;
}
#wiseHubLabel{
    font-size: 20px;
    font-weight: 700;
    position: relative;
    padding: 0px 0px 0px 18px;
    color: #c3c3c3;
}
#wiseHubLabel:hover{
    cursor: pointer;
}
#addAccountLabel:hover{
    cursor: pointer;
}
#logoutLabel:hover{
    cursor: pointer;
}
#addAccountLabel{
    font-size: 20px;
    font-weight: 700;
    margin-top: 70px;
    padding: 0px 0px 0px 18px;
    position: relative;
    color: #c3c3c3;
}
#houseIcon{
    position: absolute;
    top: -3px;
}
#wiseHubButton{
    margin-left: 40px;
}
#addAccountButton{
    margin-left: 40px;
}
#addAccountIcon{
    position: absolute;
    top: -2px;
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
    top: -1px;
}
.entryBox{
    width: 110px;
    height: 150px;
    padding: 15px 0px 20px 0px;
    border: 3px solid gray;
    float: left;
    margin-left: 60px;
    margin-bottom: 60px;
    /* box-shadow: rgba(0, 0, 0, 0.15) 0px 15px 25px, rgba(0, 0, 0, 0.05) 0px 5px 10px; */
    /* box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
    box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px; */
    border-radius: 8px;
    position: relative;
    display: none;
}
.entryContent{
    text-align: center;
    font-size: 20px;
}
hr{
    margin:  0px; !important;
}
#plusIcon:hover{
    cursor: pointer;
}
#closeNewEntryIcon {
    position: absolute; 
    top: -23px; 
    left: -23px;
}
/*#settingsSetDaysForm{
    padding: 0px 10px 0px 10px;
}*/
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
</style>
<script type="text/javascript">
    $(document).ready(function(){

        /*Load entries by default when signing in as administrator.*/
        $('#rightPartContent').empty();
        $('#wiseHubLabel').css('color', '#fafafa');
        $('#addAccountLabel').css('color', '#c3c3c3');
        loadEntries();

        $('#addAccountLabel').click(function(){
            var elementID = 'addAccount';
            if(doesElementExist(elementID) == false) {
                $('#rightPartContent').empty();
                $('#wiseHubLabel').css('color', '#c3c3c3');
                $('#addAccountLabel').css('color', '#fafafa');
                displayAddAccountPage();
            }
        });

        $('#wiseHubLabel').click(function(){
            var elementID = 'addNewEntry';
            if(doesElementExist(elementID) == false) {
               $('#rightPartContent').empty();
               $('#wiseHubLabel').css('color', '#fafafa');
               $('#addAccountLabel').css('color', '#c3c3c3');
               loadEntries();
            }
        });

        $('#logoutLabel').click(function(){
            $('#logoutLabel').css('color', '#fafafa');
            $('#addAccountLabel').css('color', '#c3c3c3');
            $('#wiseHubLabel').css('color', '#c3c3c3');
            location.href = "http://localhost:8025/logout";
        });

        function doesElementExist(elementID) {
            if($('#' + elementID).length == 0) {
                return false;
            } else {
                return true;
            }
        }

        function loadEntries() {

            $.ajax({
                type : "GET",
                dataType : "json",
                async: false,
                contentType : "application/json",
                url : "http://localhost:8026/admin/<%=session.getAttribute("userPK")%>/entries",
                success : function(responseData) {
                    $('#rightPartContent').append("<div class='entryBox' id='addNewEntry' style='padding-top:45px;'><div class='entryContent'><svg id='plusIcon' xmlns='http://www.w3.org/2000/svg' width='46' height='46' fill='currentColor' class='bi bi-plus-square' viewBox='0 0 16 16'><path d='M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z'/><path d='M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z'/></svg></div></div>");
                    for(var i=0; i<responseData.list.length; i++) {
                        $('#rightPartContent').append("<div class='entryBox'><input id='entryId' type='hidden' value='" + responseData.list[i].entryId + "'><div class='entryContent'>" + responseData.list[i].entryName + "<div style='position: absolute; bottom: 0px;'><hr><div style='font-style: italic; font-size: 13px;'>Date created: " + responseData.list[i].dateCreated + "</div></div></div></div>");
                    }

                    $('#addNewEntry').click(function(){
                        alertify.prompt("Please enter the name:", "New Entry", 
                            function(evt, value){
                                var isUnique = isNewEntryNameUnique(value);
                                if (isUnique) {
                                    // we add the new entry to the database.
                                    addNewEntry(value);
                                    // we remove the priviously displayed entries.
                                    $('.entryBox').remove();
                                    // we reload the entries, now including the newly created one.
                                    loadEntries();
                                    alertify.success("New Entry was successfully added!", 3);
                                } else {
                                    alertify.error('Entry could not be added (an entry with similar name already exists).', 5);
                                }
                            })
                        .setHeader('Create a new Entry')
                        .set({transition:'slide'});
                    });

                    $('#rightPartBox').css('margin-left', '300px');
                    $('#rightPartBox').css('padding-top', '150px');
                    $('#rightPartBox').css('padding-bottom', '40px');
                    $('#rightPartBox').css('padding-left', '40px');
                    $('#rightPartContent').css('width', '875px');
                    $('#rightPartContent').css('height', '450px');
                    $('#rightPartContent').css('margin-left', 0);
                    $('#rightPartContent').css('margin-right', 0);

                    $('.entryBox').hover(function(){
                        $(this).css('cursor', 'pointer');
                    });

                    $('.entryBox').fadeIn(700);

                    $('.entryBox').hover(function(){
                        $(this).css('box-shadow', 'rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px');
                        $(this).css('padding-left', '3px');
                        $(this).css('padding-right', '3px');
                        $(this).css('border', 'none');
                    }, function(){
                        $(this).css('box-shadow', 'none');
                        $(this).css('border', '3px solid gray');
                    });

                    waitUserClick();

                },
                error : function() {
                }
            });

        }

        function waitUserClick() {
            $('.entryBox').click(function(){
                if ($(this).attr('id') == 'addNewEntry') {
                    return;
                }

                $('#rightPartBox').css('padding', '100px 0px 50px 0px');
                $('#wiseHubLabel').css('color', '#c3c3c3');
                $('#rightPartBox').css('position', 'absolute');
                $('#rightPartBox').css('width', '100%');
                $('#rightPartContent').css('width', '550px');
                $('#rightPartBox').css('height', '100%');
                $('#rightPartContent').css('height', '100%');
                $('#rightPartContent').css('display', 'block');
                $('#rightPartContent').css('margin-left', 'auto');
                $('#rightPartContent').css('margin-right', 'auto');
                $('#rightPartBox').css('margin-left', '100px');
                $('#settingsSetDaysForm').css('width', '100%');

                var entryID = $(this).find('#entryId').val();
                var unwantedString = 'Date created:';
                var entryNameOg = $(this).find('div.entryContent').text();
                var entryName = entryNameOg.substring(0, entryNameOg.indexOf(unwantedString));
                var settings = getSettings(parseInt(entryID));
                $('.entryBox').remove();

                /*Title*/
                $('#rightPartContent').append("<div style='font-weight: 400;font-size: 35px;text-align: center;'><span id='settingsTitle' >Settings for " + entryName + "</span></div><br><br>");

                /*Beginning of the form and go bottom button*/
                $('#rightPartContent').append('<form id="settingsSetDaysForm" enctype="multipart/form-data"><div style="position: fixed; right: 200px; bottom: 100px; z-index: 10;"> <a href="#bottom"> <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16"> <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V4.5z"/></svg></a></div></form>');

                /*Set beginning date input*/
                $('#settingsSetDaysForm').append('<div class="daysTextParts" style="float: left;">When does Week 1 begin: <input id="setdate" type="date" class="daysInputFields" required="required" style="width:150px; right: 0px; font-size: 15px;" name="week1_begin_date" ></div><br><br><br>');
                if (settings.week1BeginDate != null) {
                    $('input[name="week1_begin_date"]').val(settings.week1BeginDate);
                }

                /*Set settings related to Assessed Lab*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Assessed Lab:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="assessedL_step1_preDaysUntilReady" ></div><br><div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="assessedL_step2_preModSend"></div><br><div class="daysTextParts">How many days should the lecturer have for correcting this assignment: <input type="text" class="daysInputFields" required="required" maxlength="2" name="assessedL_step3_postCorrectionDays"></div><br><div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="assessedL_step4_postModSend"></div><br> <div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline: <input type="text" class="daysInputFields" required="required" maxlength="2" name="assessedL_step5_gradesUpload"></div><br><br>');

                $('[name="assessedL_step1_preDaysUntilReady"]').val(settings.assessedLStep1PreDaysUntilReady * -1);
                $('[name=assessedL_step2_preModSend]').val(settings.assessedLStep2PreModSend * -1);
                $('[name=assessedL_step3_postCorrectionDays]').val(settings.assessedLStep3PostCorrectionDays);
                $('[name=assessedL_step4_postModSend]').val(settings.assessedLStep4PostModSend);
                $('[name=assessedL_step5_gradesUpload]').val(settings.assessedLStep5GradesUpload);

                /*Set settings related to Debate*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Debate:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2"  name="debate_step1_preDaysUntilReady"></div><br> <div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload: <input type="text" class="daysInputFields" required="required" maxlength="2" name="debate_step2_preModSend"></div><br> <div class="daysTextParts">How many days should the lecturer have for correcting this assignment: <input type="text" class="daysInputFields" required="required" maxlength="2" name="debate_step3_postCorrectionDays"></div><br> <div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="debate_step4_postModSend"></div><br><div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline: <input type="text" class="daysInputFields" required="required" maxlength="2" name="debate_step5_gradesUpload"></div><br><br>');

                $('[name="debate_step1_preDaysUntilReady"]').val(settings.debateStep1PreDaysUntilReady * -1);
                $('[name=debate_step2_preModSend]').val(settings.debateStep2PreModSend * -1);
                $('[name=debate_step3_postCorrectionDays]').val(settings.debateStep3PostCorrectionDays);
                $('[name=debate_step4_postModSend]').val(settings.debateStep4PostModSend);
                $('[name=debate_step5_gradesUpload]').val(settings.debateStep5GradesUpload);

                /*Set settings related to Demo Teaching*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Demo Teaching:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="demoT_step1_preDaysUntilReady"></div><br> <div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload: <input type="text" class="daysInputFields" required="required" maxlength="2" name="demoT_step2_preModSend"></div><br> <div class="daysTextParts">How many days should the lecturer have for correcting this assignment: <input type="text" class="daysInputFields" required="required" maxlength="2" name="demoT_step3_postCorrectionDays"></div><br> <div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="demoT_step4_postModSend"></div><br><div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline:<input type="text" class="daysInputFields" required="required" maxlength="2" name="demoT_step5_gradesUpload"></div><br><br>');

                $('[name="demoT_step1_preDaysUntilReady"]').val(settings.demoTStep1PreDaysUntilReady * -1);
                $('[name=demoT_step2_preModSend]').val(settings.demoTStep2PreModSend * -1);
                $('[name=demoT_step3_postCorrectionDays]').val(settings.demoTStep3PostCorrectionDays);
                $('[name=demoT_step4_postModSend]').val(settings.demoTStep4PostModSend);
                $('[name=demoT_step5_gradesUpload]').val(settings.demoTStep5GradesUpload);
                
                /*Set settings related to Final Exam*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Final Exam:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="finalExam_step1_preDaysUntilReady"></div><br> <div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload: <input type="text" class="daysInputFields" required="required" maxlength="2" name="finalExam_step2_preModSend"></div><br><div class="daysTextParts">How many days should the lecturer have for correcting this assignment: <input type="text" class="daysInputFields" required="required" maxlength="2" name="finalExam_step3_postCorrectionDays"></div><br><div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="finalExam_step4_postModSend"></div><br><div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline:<input type="text" class="daysInputFields" required="required" maxlength="2" name="finalExam_step5_gradesUpload"></div><br><br>');

                $('[name="finalExam_step1_preDaysUntilReady"]').val(settings.finalExamStep1PreDaysUntilReady * -1);
                $('[name=finalExam_step2_preModSend]').val(settings.finalExamStep2PreModSend * -1);
                $('[name=finalExam_step3_postCorrectionDays]').val(settings.finalExamStep3PostCorrectionDays);
                $('[name=finalExam_step4_postModSend]').val(settings.finalExamStep4PostModSend);
                $('[name=finalExam_step5_gradesUpload]').val(settings.finalExamStep5GradesUpload);

                /*Set settings related to Oral Examination*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Oral Examination:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="oralExam_step1_preDaysUntilReady"></div><br><div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="oralExam_step2_preModSend"></div><br><div class="daysTextParts">How many days should the lecturer have for correcting this assignment:<input type="text" class="daysInputFields" required="required" maxlength="2" name="oralExam_step3_postCorrectionDays"></div><br> <div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="oralExam_step4_postModSend"></div><br> <div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline:<input type="text" class="daysInputFields" required="required" maxlength="2" name="oralExam_step5_gradesUpload"></div><br><br>');

                $('[name="oralExam_step1_preDaysUntilReady"]').val(settings.oralExamStep1PreDaysUntilReady * -1);
                $('[name=oralExam_step2_preModSend]').val(settings.oralExamStep2PreModSend * -1);
                $('[name=oralExam_step3_postCorrectionDays]').val(settings.oralExamStep3PostCorrectionDays);
                $('[name=oralExam_step4_postModSend]').val(settings.oralExamStep4PostModSend);
                $('[name=oralExam_step5_gradesUpload]').val(settings.oralExamStep5GradesUpload);

                /*Set settings related to Portfolio*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Portfolio:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="portfolio_step1_preDaysUntilReady"></div><br><div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="portfolio_step2_preModSend"></div><br><div class="daysTextParts">How many days should the lecturer have for correcting this assignment:<input type="text" class="daysInputFields" required="required" maxlength="2"  name="portfolio_step3_postCorrectionDays"></div><br><div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="portfolio_step4_postModSend"></div><br><div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline: <input type="text" class="daysInputFields" required="required" maxlength="2" name="portfolio_step5_gradesUpload"></div><br><br>');

                $('[name="portfolio_step1_preDaysUntilReady"]').val(settings.portfolioStep1PreDaysUntilReady * -1);
                $('[name=portfolio_step2_preModSend]').val(settings.portfolioStep2PreModSend * -1);
                $('[name=portfolio_step3_postCorrectionDays]').val(settings.portfolioStep3PostCorrectionDays);
                $('[name=portfolio_step4_postModSend]').val(settings.portfolioStep4PostModSend);
                $('[name=portfolio_step5_gradesUpload]').val(settings.portfolioStep5GradesUpload);

                /*Set settings related to Presentation*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Presentation:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="presentation_step1_preDaysUntilReady"></div><br><div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload: <input type="text" class="daysInputFields" required="required" maxlength="2" name="presentation_step2_preModSend"></div><br><div class="daysTextParts">How many days should the lecturer have for correcting this assignment:<input type="text" class="daysInputFields" required="required" maxlength="2" name="presentation_step3_postCorrectionDays"></div><br><div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="presentation_step4_postModSend"></div><br><div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline:<input type="text" class="daysInputFields" required="required" maxlength="2" name="presentation_step5_gradesUpload"></div><br><br>');

                $('[name="presentation_step1_preDaysUntilReady"]').val(settings.presentationStep1PreDaysUntilReady * -1);
                $('[name=presentation_step2_preModSend]').val(settings.presentationStep2PreModSend * -1);
                $('[name=presentation_step3_postCorrectionDays]').val(settings.presentationStep3PostCorrectionDays);
                $('[name=presentation_step4_postModSend]').val(settings.presentationStep4PostModSend);
                $('[name=presentation_step5_gradesUpload]').val(settings.presentationStep5GradesUpload);

                /*Set settings related to Project*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Project:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="project_step1_preDaysUntilReady"></div><br><div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="project_step2_preModSend"></div><br><div class="daysTextParts">How many days should the lecturer have for correcting this assignment:<input type="text" class="daysInputFields" required="required" maxlength="2" name="project_step3_postCorrectionDays"></div><br><div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="project_step4_postModSend"></div><br> <div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline: <input type="text" class="daysInputFields" required="required" maxlength="2" name="project_step5_gradesUpload"></div><br><br>');

                $('[name="project_step1_preDaysUntilReady"]').val(settings.projectStep1PreDaysUntilReady * -1);
                $('[name=project_step2_preModSend]').val(settings.projectStep2PreModSend * -1);
                $('[name=project_step3_postCorrectionDays]').val(settings.projectStep3PostCorrectionDays);
                $('[name=project_step4_postModSend]').val(settings.projectStep4PostModSend);
                $('[name=project_step5_gradesUpload]').val(settings.projectStep5GradesUpload);

                /*Set settings related to Quiz*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Quiz:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="quiz_step1_preDaysUntilReady"></div><br><div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="quiz_step2_preModSend"></div><br><div class="daysTextParts">How many days should the lecturer have for correcting this assignment:<input type="text" class="daysInputFields" required="required" maxlength="2" name="quiz_step3_postCorrectionDays"></div><br><div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="quiz_step4_postModSend"></div><br><div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline:<input type="text" class="daysInputFields" required="required" maxlength="2" name="quiz_step5_gradesUpload"></div><br><br>');

                $('[name="quiz_step1_preDaysUntilReady"]').val(settings.quizStep1PreDaysUntilReady * -1);
                $('[name=quiz_step2_preModSend]').val(settings.quizStep2PreModSend * -1);
                $('[name=quiz_step3_postCorrectionDays]').val(settings.quizStep3PostCorrectionDays);
                $('[name=quiz_step4_postModSend]').val(settings.quizStep4PostModSend);
                $('[name=quiz_step5_gradesUpload]').val(settings.quizStep5GradesUpload);

                /*Set settings related to Report*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Report:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="report_step1_preDaysUntilReady"></div><br><div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="report_step2_preModSend"></div><br><div class="daysTextParts">How many days should the lecturer have for correcting this assignment:<input type="text" class="daysInputFields" required="required" maxlength="2" name="report_step3_postCorrectionDays"></div><br><div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="report_step4_postModSend"></div><br><div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline:<input type="text" class="daysInputFields" required="required" maxlength="2" name="report_step5_gradesUpload"></div><br><br>');

                $('[name="report_step1_preDaysUntilReady"]').val(settings.reportStep1PreDaysUntilReady * -1);
                $('[name=report_step2_preModSend]').val(settings.reportStep2PreModSend * -1);
                $('[name=report_step3_postCorrectionDays]').val(settings.reportStep3PostCorrectionDays);
                $('[name=report_step4_postModSend]').val(settings.reportStep4PostModSend);
                $('[name=report_step5_gradesUpload]').val(settings.reportStep5GradesUpload);

                /*Set settings related to Self Reflection*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Self Reflection:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="selfReflect_step1_preDaysUntilReady"></div><br><div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="selfReflect_step2_preModSend"></div><br><div class="daysTextParts">How many days should the lecturer have for correcting this assignment:<input type="text" class="daysInputFields" required="required" maxlength="2" name="selfReflect_step3_postCorrectionDays"></div><br><div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="selfReflect_step4_postModSend"></div><br><div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline:<input type="text" class="daysInputFields" required="required" maxlength="2" name="selfReflect_step5_gradesUpload"></div><br><br>');

                $('[name="selfReflect_step1_preDaysUntilReady"]').val(settings.selfReflectStep1PreDaysUntilReady * -1);
                $('[name=selfReflect_step2_preModSend]').val(settings.selfReflectStep2PreModSend * -1);
                $('[name=selfReflect_step3_postCorrectionDays]').val(settings.selfReflectStep3PostCorrectionDays);
                $('[name=selfReflect_step4_postModSend]').val(settings.selfReflectStep4PostModSend);
                $('[name=selfReflect_step5_gradesUpload]').val(settings.selfReflectStep5GradesUpload);

                /*Set settings related to Other*/
                $('#settingsSetDaysForm').append('<div class="assessmentLabels daysTextParts">Other:</div><br><div class="daysTextParts">This assessment should be ready in how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="other_step1_preDaysUntilReady"></div><br><div class="daysTextParts">This assessment should be sent to the moderator, how many days before the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="other_step2_preModSend"></div><br><div class="daysTextParts">How many days should the lecturer have for correcting this assignment:<input type="text" class="daysInputFields" required="required" maxlength="2" name="other_step3_postCorrectionDays"></div><br><div class="daysTextParts">The feedback given for this assessment should be sent to the moderator how many days after the upload:<input type="text" class="daysInputFields" required="required" maxlength="2" name="other_step4_postModSend"></div><br><div class="daysTextParts">The grades for this assessment should be uploaded in how many days after the deadline:<input type="text" class="daysInputFields" required="required" maxlength="2" name="other_step5_gradesUpload"></div><br><br>');

                $('[name="other_step1_preDaysUntilReady"]').val(settings.otherStep1PreDaysUntilReady * -1);
                $('[name=other_step2_preModSend]').val(settings.otherStep2PreModSend * -1);
                $('[name=other_step3_postCorrectionDays]').val(settings.otherStep3PostCorrectionDays);
                $('[name=other_step4_postModSend]').val(settings.otherStep4PostModSend);
                $('[name=other_step5_gradesUpload]').val(settings.otherStep5GradesUpload);

                /*File Input 
                inspired by https://stackoverflow.com/questions/2855589/replace-input-type-file-by-an-image*/
                $('#settingsSetDaysForm').append('<div class="daysTextParts">Select Coursework Map file (should be Excel) <span id="image-upload"><label for="file-input"> <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="red" class="bi bi-file-earmark-plus" viewBox="0 0 16 16" id="fileUploadImage"><path d="M8 6.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V11a.5.5 0 0 1-1 0V9.5H6a.5.5 0 0 1 0-1h1.5V7a.5.5 0 0 1 .5-.5z"/><path d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5L14 4.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5h-2z"/></svg></label><input id="file-input" type="file" accept=".xlsx, .xls" name="excelFile"></span></div><br><br>');

                /*Set time when email will be sent*/
                $('#settingsSetDaysForm').append(' <div class="daysTextParts">Pick the time when notifications should be send:<input type="time" class="daysInputFields" required="required" name="time_to_send_notif" style="width:150px; right: 0px; font-size: 15px;" id="settime"></div><br><br><div style="text-align: center;"><input type="submit" id="submitButton" value="Upload tasks"></div><div id="bottom" style="display: hidden;"></div>');

                $('[name="time_to_send_notif"]').val(settings.timeToSendNotif);

                $('.daysInputFields').click(function(){
                    if ($(this).attr("id") == 'setdate' || $(this).attr("id") == 'settime' || $(this).attr("id") == 'file-input') {
                        return;
                    }
                    $(this).attr('value', '');
                    $(this).val('');
                });
                $('.daysInputFields').mouseleave(function(){
                    if ($(this).attr("id") == 'setdate' || $(this).attr("id") == 'settime' || $(this).attr("id") == 'file-input') {
                        return;
                    }
                    var inputDayValue = $(this).val();
                    if ($(this).val() === '') {
                        $(this).attr('value', 0);
                        $(this).val(0);
                    } else {
                        $(this).attr('value', inputDayValue);
                    }
                    $(this).blur(); /* removes focus from element */ 
                });
                $('#file-input').change(function(){
                    if($('#file-input')[0].files.length === 0) {
                        $('#fileUploadImage').css('fill', 'red');
                    }else {
                        $('#fileUploadImage').css('fill', 'green');
                    }
                }); 

                /*Submit settings form*/
                $('#settingsSetDaysForm').submit(function(event){
                    event.preventDefault();
                    var isValid = validateForm();
                    if (isValid) {
                        var settingsObj = {
                            settingsId : settings.settingsId,
                            week1BeginDate : $('#setdate').val(),
                            timeToSendNotif : $('#settime').val(),
                            assessedLStep1PreDaysUntilReady : $('[name="assessedL_step1_preDaysUntilReady"]').val() * -1,
                            assessedLStep2PreModSend : $('[name=assessedL_step2_preModSend]').val() * -1,
                            assessedLStep3PostCorrectionDays : $('[name=assessedL_step3_postCorrectionDays]').val(),
                            assessedLStep4PostModSend : $('[name=assessedL_step4_postModSend]').val(),
                            assessedLStep5GradesUpload : $('[name=assessedL_step5_gradesUpload]').val(),
                            debateStep1PreDaysUntilReady : $('[name="debate_step1_preDaysUntilReady"]').val() * -1,
                            debateStep2PreModSend : $('[name=debate_step2_preModSend]').val() * -1,
                            debateStep3PostCorrectionDays : $('[name=debate_step3_postCorrectionDays]').val(),
                            debateStep4PostModSend : $('[name=debate_step4_postModSend]').val(),
                            debateStep5GradesUpload : $('[name=debate_step5_gradesUpload]').val(),
                            demoTStep1PreDaysUntilReady : $('[name="demoT_step1_preDaysUntilReady"]').val() * -1,
                            demoTStep2PreModSend : $('[name=demoT_step2_preModSend]').val() * -1,
                            demoTStep3PostCorrectionDays : $('[name=demoT_step3_postCorrectionDays]').val(),
                            demoTStep4PostModSend : $('[name=demoT_step4_postModSend]').val(),
                            demoTStep5GradesUpload : $('[name=demoT_step5_gradesUpload]').val(),
                            finalExamStep1PreDaysUntilReady : $('[name="finalExam_step1_preDaysUntilReady"]').val() * -1,
                            finalExamStep2PreModSend : $('[name=finalExam_step2_preModSend]').val() * -1,
                            finalExamStep3PostCorrectionDays : $('[name=finalExam_step3_postCorrectionDays]').val(),
                            finalExamStep4PostModSend : $('[name=finalExam_step4_postModSend]').val(),
                            finalExamStep5GradesUpload : $('[name=finalExam_step5_gradesUpload]').val(),
                            oralExamStep1PreDaysUntilReady : $('[name="oralExam_step1_preDaysUntilReady"]').val() * -1,
                            oralExamStep2PreModSend : $('[name=oralExam_step2_preModSend]').val() * -1,
                            oralExamStep3PostCorrectionDays : $('[name=oralExam_step3_postCorrectionDays]').val(),
                            oralExamStep4PostModSend : $('[name=oralExam_step4_postModSend]').val(),
                            oralExamStep5GradesUpload : $('[name=oralExam_step5_gradesUpload]').val(),
                            portfolioStep1PreDaysUntilReady : $('[name="portfolio_step1_preDaysUntilReady"]').val() * -1,
                            portfolioStep2PreModSend : $('[name=portfolio_step2_preModSend]').val() * -1,
                            portfolioStep3PostCorrectionDays : $('[name=portfolio_step3_postCorrectionDays]').val(),
                            portfolioStep4PostModSend : $('[name=portfolio_step4_postModSend]').val(),
                            portfolioStep5GradesUpload : $('[name=portfolio_step5_gradesUpload]').val(),
                            presentationStep1PreDaysUntilReady : $('[name="presentation_step1_preDaysUntilReady"]').val() * -1,
                            presentationStep2PreModSend : $('[name=presentation_step2_preModSend]').val() * -1,
                            presentationStep3PostCorrectionDays : $('[name=presentation_step3_postCorrectionDays]').val(),
                            presentationStep4PostModSend : $('[name=presentation_step4_postModSend]').val(),
                            presentationStep5GradesUpload : $('[name=presentation_step5_gradesUpload]').val(),
                            projectStep1PreDaysUntilReady : $('[name="project_step1_preDaysUntilReady"]').val() * -1,
                            projectStep2PreModSend : $('[name=project_step2_preModSend]').val() * -1,
                            projectStep3PostCorrectionDays : $('[name=project_step3_postCorrectionDays]').val(),
                            projectStep4PostModSend : $('[name=project_step4_postModSend]').val(),
                            projectStep5GradesUpload : $('[name=project_step5_gradesUpload]').val(),
                            quizStep1PreDaysUntilReady : $('[name="quiz_step1_preDaysUntilReady"]').val() * -1,
                            quizStep2PreModSend : $('[name=quiz_step2_preModSend]').val() * -1,
                            quizStep3PostCorrectionDays : $('[name=quiz_step3_postCorrectionDays]').val(),
                            quizStep4PostModSend : $('[name=quiz_step4_postModSend]').val(),
                            quizStep5GradesUpload : $('[name=quiz_step5_gradesUpload]').val(),
                            reportStep1PreDaysUntilReady : $('[name="report_step1_preDaysUntilReady"]').val() * -1,
                            reportStep2PreModSend : $('[name=report_step2_preModSend]').val() * -1,
                            reportStep3PostCorrectionDays : $('[name=report_step3_postCorrectionDays]').val(),
                            reportStep4PostModSend : $('[name=report_step4_postModSend]').val(),
                            reportStep5GradesUpload : $('[name=report_step5_gradesUpload]').val(),
                            selfReflectStep1PreDaysUntilReady : $('[name="selfReflect_step1_preDaysUntilReady"]').val() * -1,
                            selfReflectStep2PreModSend : $('[name=selfReflect_step2_preModSend]').val() * -1,
                            selfReflectStep3PostCorrectionDays : $('[name=selfReflect_step3_postCorrectionDays]').val(),
                            selfReflectStep4PostModSend : $('[name=selfReflect_step4_postModSend]').val(),
                            selfReflectStep5GradesUpload : $('[name=selfReflect_step5_gradesUpload]').val(),
                            otherStep1PreDaysUntilReady : $('[name="other_step1_preDaysUntilReady"]').val() * -1,
                            otherStep2PreModSend : $('[name=other_step2_preModSend]').val() * -1,
                            otherStep3PostCorrectionDays : $('[name=other_step3_postCorrectionDays]').val(),
                            otherStep4PostModSend : $('[name=other_step4_postModSend]').val(),
                            otherStep5GradesUpload : $('[name=other_step5_gradesUpload]').val()
                        };
                        uploadData(settingsObj);
                        alertify.success('Settings and excel data were successfully uploaded.', 4);
                    } else {
                        return;
                    }
                });

                function validateForm() {
                    var elements = $('.daysInputFields');
                    /* we exclude the 1 date and 1 time fields */
                    for(var i=1; i<elements.length - 1; i++) {
                        if(isNaN($(elements[i]).val()) || $(elements[i]).val() < 0) {
                            alertify.error('One or more inputs related to days do not consist of a valid numeric number.', 5);
                            return false;
                        }
                    }
                    if($('#file-input')[0].files.length === 0){
                        alertify.error('An excel-type file is required.', 3);
                        return false;
                    }
                    return true;
                }

                /*
                In order to send a formData object, it is necessary to write:
                "processData: false, contentType: false". As far as I understand it
                prevents jQuery from transforming your object to a string (which is not
                what we want in this situation).
                Solution found -> https://stackoverflow.com/questions/16501524/ajax-formdata-illegal-invocation
                Also see information regarding FormData ->
                https://developer.mozilla.org/en-US/docs/Web/API/FormData/FormData
                */
                function uploadData(settingsObj) {
                    var formData = new FormData();
                    formData.append('settingsJSON', JSON.stringify(settingsObj));
                    formData.append('excelFile', $('#file-input')[0].files[0]);
                    $.ajax({
                        type : "POST",
                        dataType : "json",
                        url : "http://localhost:8026/admin/uploadData",
                        data : formData,
                        processData: false,
                        contentType: false,
                        success : function(){
                        },
                        error : function(){}
                    });
                }

            });
        }

        function isNewEntryNameUnique(newName) {
            var obj = {
                userPK : <%=session.getAttribute("userPK")%>,
                newEntryName : newName
            };
            var isUnique;
            $.ajax({
                type : "POST",
                dataType : "json",
                contentType : "application/json;",
                data : JSON.stringify(obj),
                async: false,
                url : "http://localhost:8026/admin/isEntryNameUnique",
                success : function(response){
                    isUnique = response.unique ? true : false;
                },
                error : function(){

                }
            });
            return isUnique;
        }

        function addNewEntry(newName) {
            var obj = {
                userPK : <%=session.getAttribute("userPK")%>,
                newEntryName : newName
            };
            $.ajax({
                type : "POST",
                dataType : "json",
                contentType : "application/json;",
                data : JSON.stringify(obj),
                async : false,
                url : "http://localhost:8026/admin/entries"
            });
        }

        function getSettings(entryID) {
            var response;
            $.ajax({
                type : "POST",
                dataType : "json",
                contentType : "application/json",
                async : false,
                data : JSON.stringify( { id : entryID } ),
                url : "http://localhost:8026/admin/getSettings",
                success : function(responseData){
                    response = responseData;
                },
                error : function(){}
            });
            return response;
        }

        function displayAddAccountPage() {
            $('#rightPartContent').append('<div id="addAccount"><div style="font-weight:400; font-size: 35px; text-align: center; margin-bottom: 50px;">Create Account</div><form id="addAccountForm"><span class="accountLabels">USERNAME:</span><input type="text" id="username" name="username" autocomplete="off" class="accountFields accountFieldsInputs" placeholder="Fanis"><br><br><span class="accountLabels">PASSWORD:</span> <input type="password" id="password" name="password" autocomplete="off" class="accountFields accountFieldsInputs" placeholder="my example password"><br><br><span class="accountLabels">EMAIL:</span><input type="text" id="email" name="email" autocomplete="off" class="accountFields accountFieldsInputs" placeholder="fanis@mail.com"><br><br><span class="accountLabels">ACCOUNT TYPE:</span><input type="radio" name="accountType" id="lecturerRadioB" class="accountLabels accountRadios" style="right: 165px; top: 300px;" value="Lecturer"><span class="accountLabels accountRadios" style="right: 57px;">Lecturer</span><br><input type="radio" name="accountType" class="accountLabels accountRadios" style="right: 165px; top: 338px;" id="adminRadioB" value="Administrator"><span class="accountLabels accountRadios">Administrator</span><br><br><br><input type="submit" value="ADD USER" class="accountLabels" style="margin-left: auto; margin-right:auto; display:block;"></form></div>');
            $('#rightPartContent').css('display', 'block');
            $('#rightPartContent').css('margin-left', 'auto');
            $('#rightPartContent').css('margin-right', 'auto');
            $('#rightPartBox').css('margin-left', '100px');
            $('#rightPartContent').css('width', '550px');
            $('#rightPartBox').css('padding-top', '100px');

            $('#addAccountForm').submit(function(event){
                event.preventDefault();
                var isAccountFormValid = validateAccountFromData();
                if (isAccountFormValid) {
                    var isUsernameUnique = isAccountUsernameUnique();
                    if(isUsernameUnique) {
                        addAccount();
                        alertify.success('Account successfully added.', 3);
                    } else {
                        alertify.error('Username is already in use by another account. Account could not be created.', 5);
                    }
                }
            });
        }

        function validateAccountFromData() {
            var username = $('#username').val();
            if(username.length < 6) {
                alertify.warning('Username should be at least 6 characters long.', 5);
                return;
            }
            if(username.length > 30) {
                alertify.warning('Username should be at most 30 characters long.', 5);
                return;
            }
            var password = $('#password').val();
            if (password.length < 8 || password.length > 128) {
                alertify.warning('Password length should be between 8 and 128 characters long.', 5);
                return;
            }
            var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            var email = $('#email').val();
            if(!email.match(mailformat) || (!email.includes('outlook') && !email.includes('athtech'))) {
                 alertify.warning('An outlook/athtech email account should be provided.', 5);
                 return;
            }
            if($('#lecturerRadioB').is(':checked') == false && $('#adminRadioB').is(':checked') == false) {
                alertify.warning('One of the account types should be selected.', 5);
                return;
            }
            return true;
        }

        function addAccount() {
            var userTypeValue = $('[name="accountType"]').val() === 'Lecturer' ? 'LECTURER' : 'ADMIN';
            var accountData = {
                username : $('#username').val(),
                password : $('#password').val(),
                email : $('#email').val(),
                userType : userTypeValue
            };
            $.ajax({
                type: "POST",
                dataType : "json",
                contentType : "application/json",
                data : JSON.stringify(accountData),
                url : "http://localhost:8028/users/addUserAccount",
                success : function(){
                    alertify.success('Account was successfully added.', 3);
                },
                error : function(){}
            });
        }

        function isAccountUsernameUnique() {
            var isUsernameUnique;
            var username = {
                username : $('#username').val()
            };
            $.ajax({
                type : "POST",
                dataType : "json",
                contentType : "application/json",
                async : false,
                data : JSON.stringify(username),
                url : "http://localhost:8028/users/isUsernameUnique",
                success : function(response){
                    isUsernameUnique = response.unique;
                },
                error : function(){}
            });
            return isUsernameUnique;
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
                <div id="wiseHubLabel">
                    <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16" id="houseIcon">
                      <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                      <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                    </svg><span id="wiseHubButton">My WiseHub</span>
                </div>
                <div id="addAccountLabel">
                    <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-person-plus-fill" viewBox="0 0 16 16" id="addAccountIcon">
                      <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                      <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
                    </svg>
                    <span id="addAccountButton">Add Account</span>
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