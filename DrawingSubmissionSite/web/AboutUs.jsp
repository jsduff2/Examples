<?xml version="1.0" encoding="UTF-8"?>
<!--
    Document   : AboutUs
    Created on : Apr 19, 2009, 12:15:28 PM
    Author     : jsduff2
-->
<jsp:root version="2.1" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html" xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:webuijsf="http://www.sun.com/webui/webuijsf">
    <jsp:directive.page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"/>
    <f:view>
        <webuijsf:page id="AboutUs">
            <webuijsf:html id="html1">
                <webuijsf:head id="head1">
                    <webuijsf:link id="link1" url="/resources/layout.css"/>
                </webuijsf:head>
                <webuijsf:body id="body1" style="-rave-layout: grid">
                    <webuijsf:form id="form1"/>
                    <div id="container" style="height: 262px">
                        <div align="center" id="header" style="background-image: url(./resources/BlueMonster.JPG); height: 130px; width: 760px">
                        About Us:
                    </div>
                        <div align="center" id="leftBar" style="height: 120px">
                            <h:panelGrid id="gridPanel1" style="height: 96px">
                                <webuijsf:hyperlink binding="#{Home.hyperlink1}" id="hyperlink1" text="Home" url="/faces/Home.jsp"/>
                                <webuijsf:hyperlink id="hyperlink2" text="About Us" url="/faces/AboutUs.jsp"/>
                                <webuijsf:hyperlink id="hyperlink4" text="Contact Us" url="/faces/ContactUs.jsp"/>
                                <webuijsf:hyperlink id="hyperlink6" text="Current Submissions" url="/faces/CurrentSubmissions.jsp"/>
                                <webuijsf:hyperlink id="hyperlink5" text="Log In" url="/faces/LogIn.jsp"/>
                                <webuijsf:hyperlink id="hyperlink3" text="Submit Drawing" url="/faces/SubmitDrawing.jsp"/>
                            </h:panelGrid>
                        </div>
                        <div align="center" id="content" style="height: 120px">
                            Web Monster Drawing Submission System was started in 2009.
                        </div>
                        <div align="center" id="rightBar" style="font-size: 14px; font-style: normal; height: 120px">Visit Often:<br/>
                            Please visit our website regularly to see the newest submissions.
                        </div>
                        <div align="center" id="footer">
                            <webuijsf:panelGroup id="groupPanel1" separator="|">
                                <webuijsf:hyperlink id="hyperlink8" text="Security"/>
                                <webuijsf:hyperlink actionExpression="#{Home.hyperlink9_action}" id="hyperlink9" text="Privacy"/>
                                <webuijsf:hyperlink id="hyperlink7" text="Terms"/>
                            </webuijsf:panelGroup>
                        </div>
                    </div>
                </webuijsf:body>
            </webuijsf:html>
        </webuijsf:page>
    </f:view>
</jsp:root>
