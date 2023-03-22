<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../inc_common.jsp" %>
<%@ include file="../../inc_doctype.jsp" %>
<jsp:useBean id="constant" scope="page" class="com.dragon.plat.common.Constant"></jsp:useBean>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Untitled Document</title>
    <style>
        @page {
            margin: 10px 20px;
            padding: 0 10px;
        }
    * {
        font-size: 12px;
        font-family: "SimSun";
    }

    body {
        margin: 0;
        padding: 0;
    }

    h2 {
        position: relative;
        text-align: center;
        height: 71px;
        line-height: 71px;
        font-size: 20px;
        font-weight: bold;
        margin: 0;
        padding: 0;
    }

    h2 img {
        position: absolute;
        left: 10px;
        top: 10px;
    }

    table {
        margin: 2px;
        table-layout: fixed;
        width: 98%;
    }

    table {
        word-break: break-all;
    }

    table tr {
        height: 20px;
        padding: 0px;
    }

    td {
        padding: 0px;
    }

    .zhang {
        background: url(${fundsSource.companySeal});
        width: 153px;
        height: 105px;
        right: 10px;
        bottom: 10px;
        position: absolute;
    }

    .p-left {
        margin: 3px 0;
    }

    .partition {
        text-align: center;
    }

    p {
        line-height: 14px;
        margin: 2px;
    }

    h3 {
        margin: 2px;
        height: 14px;
    }

    .lineHeightText {
        line-height: 20px;
    }

    .textIndent {
        text-indent: 2em;
    }
    </style>
</head>

<body style="width: 100%;">
<div style="padding:15px 0;border-bottom:1px solid #f00;overflow: hidden;position: relative;text-align: right;">
    <!-- <img style="position: absolute;left:10px;top:0px;" width="50px;" height="50px;" src="${fundsSource.companyLogo}" /> -->
    <font style="bottom:30px;right:10px;color:black;font-size:1.5em;font-weight:bold;">客服热线
        <c:choose>
            <c:when test="${member.loan.channel eq '087'}">0238-9696-722</c:when>
            <c:when test="${member.loan.channel eq '083'}">023-86003522</c:when>
            <c:otherwise>4000-353-999</c:otherwise>
        </c:choose>
<%--        <c:if test="${member.loan.channel eq '087'}">0238-9696-722</c:if>--%>
<%--        <c:if test="${member.loan.channel != '087'}">4000-353-999</c:if>--%>
    </font>
</div>
<h2>服务费支付指引</h2>
<p>
<h3 style="line-height: 20px">尊敬的<u>&nbsp;${member.realName}&nbsp; </u><c:if test="${member.gender eq '0'}">先生</c:if>
    <c:if test="${member.gender eq '1'}">女士</c:if><br/>
    &nbsp;&nbsp;非常感谢您选择${fundsSource.companyName}（简称“道积”）的分期服务。希望我们的服务在提高您生活品质的同时，让您的生活更加便利、现代。<br/>
    &nbsp;&nbsp;以下是您服务费支付详情：<br/>
    &nbsp;&nbsp;您于${currDate}签订编号为${member.loan.applySn}的《服务合同》，服务费支付金额见下表</h3></p>
<table border="1" cellspacing="0" cellpadding="0" style="margin-top: 100px;">
    <tr>
        <td><h3 style="text-align: center;">支付期数</h3></td>
        <td><h3 style="text-align: center;">支付日期</h3></td>
        <td><h3 style="text-align: center;">每月支付金额（元）</h3></td>
    </tr>
    <c:forEach var="repayment" items="${repaymentDates}" varStatus="paystatus">
    <tr>
        <td><p style="text-align: center;">${repayment.period}</p></td>
        <td><p style="text-align: center;">${repayment.repaymenDate}</p></td>
        <td><p style="text-align: center;">${repayment.repaymenMoney}</p></td>
    </tr>
    </c:forEach>
    <!--<tr>
        <td><p style="text-align: center;">1</p></td>
        <td><p style="text-align: center;">${member.loan.downDate}</p></td>
        <td><p style="text-align: center;">${member.loan.perMonthMoney}</p></td>1
    </tr>
    <tr>
        <td><p style="text-align: center;">2</p></td>
        <td><p style="text-align: center;">${member.loan.perMonthDate}</p></td>
        <td><p style="text-align: center;">${member.loan.perMonthMoney}</p></td>1
    </tr>
    <tr>
        <td><p style="text-align: center;">3</p></td>
        <td><p style="text-align: center;">${member.loan.lastDate}</p></td>
        <td><p style="text-align: center;">${member.loan.perMonthMoney}</p></td>1
    </tr>-->
</table>
<h3>说明：</h3>
<p>1、若每月支付日大于当月总天数，则当月支付日为当月最后一日。</p>
<p>2、您可以通过以下方式进行支付：</p>
<p>（1）银行代扣支付：请您保证在每个支付日前将足够的服务费额存入您指定的账户以便划扣。如您的银行代扣账户有变动，请致电客服热线进行变更。若银行代扣失败，请按方式（2）进行还款。</p>
<table border="1" cellspacing="0" cellpadding="0">
    <tr>
        <td><h3>银行账户户名</h3></td>
        <td><h3>${member.loan.repaymentName}</h3></td>
    </tr>
    <tr>
        <td><h3>银行账号</h3></td>
        <td><h3>${member.loan.repaymentAccount}</h3></td>
    </tr>
    <tr>
        <td><h3>银行账户开户行</h3></td>
        <td><h3>${member.paramMap.repaymentBank}</h3></td>
    </tr>
</table>
<p>（2）拨打<c:choose>
    <c:when test="${member.loan.channel eq '087'}">0238-9696-722</c:when>
    <c:when test="${member.loan.channel eq '083'}">023-86003522</c:when>
    <c:otherwise>4000-353-999</c:otherwise>
</c:choose>客服热线进行咨询。</p>
<!--<table border="1" cellspacing="0" cellpadding="0">
    <tr>
        <td><h3>收款人账户名称</h3></td>
        <td><h3>重庆红犇科技有限公司</h3></td>
    </tr>
    <tr>
        <td><h3>收款人账号</h3></td>
        <td><h3>15000098633734</h3></td>
    </tr>
    <tr>
        <td><h3>收款人开户行</h3></td>
        <td><h3>平安银行重庆分行沙坪坝支行</h3></td>
    </tr>
</table>-->
<p>本人已阅读且知晓上述所有内容，并承诺按时还款。</p>
<h3 style="text-align: right;margin-top: 40px;">申请人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日期：${currDate}&nbsp;&nbsp;&nbsp;&nbsp;</h3>
<br/>
<c:choose>
    <c:when test="${member.loan.channel eq '087'}"> </c:when>
    <c:when test="${member.loan.channel eq '083'}"> </c:when>
    <c:otherwise>
        <div style="width: 100%; height: 75px;">
            <div style="float:left;width: 25%; text-align: center;">
                <p>惠花APP-安卓版</p>
                <img src="images/android_qrcode.jpg" width="80px;" height="80px;"/>
            </div>
            <div style="float:left;width: 25%;text-align: left;">
                <p>惠花APP-IOS版</p>
                <img src="images/ios_qrcode.jpg" width="80px;" height="80px;"/>
            </div>
        </div>

        <div style="padding-left: 10px;">
            <div style="padding-left: 33px;font-size: 1em;margin-top: 35px;">在线还款、账单查询、预约业务、快来扫码下载吧！</div>
            <div style="padding-left: 33px;font-size: 1em;margin-top: 10px;">
                扫描上方的二维码下载惠花APP在线自助操作，掌握第一手贷款及合同相关信息若您还有其他疑问和建议，欢迎致电全国客服热线：4000-353-999
            </div>
        </div>
    </c:otherwise>
</c:choose>
</body>
</html>