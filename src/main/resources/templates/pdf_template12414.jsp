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
            padding: 0px, 10px;
        }

        * {
            font-size: 10px;
            font-family: "SimSun";
        }

        body {
            margin: 0;
            padding: 0;
        }

        h1 {
            position: relative;
            text-align: center;
            height: 71px;
            line-height: 71px;
            font-size: 18px;
            font-weight: bold;
            margin: 0;
            padding: 0;
        }

        h1 img {
            position: absolute;
            left: 10px;
            top: 0px;
        }

        table {
            border: 1px solid #999;
            margin: 8px;
            margin: 0 auto;
        }

        table td {
            border: 1px solid #999;
        }

        .zhang {
            background:url($ {
                fundsSource.companySeal
            }

            );
            width:153px;
            height:105px;
            right:10px;
            bottom:10px;
            position: absolute;
        }

        p {
            line-height: 12px;
            margin:6px auto;
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
    <h1>个人消费借款申请表<img  width="100px;" height="60px;" src="${fundsSource.companyLogo}" /></h1>
    <p >请确保您填写的申请资料完整、正确，审批人员可能会与您电话核实相关资料&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;申请编号：${member.loan.xtSn}</p>
    <table cellspacing="0" cellpadding="0" border="1" style="width: 100%;table-layout:fixed;">
        <tr>
            <td rowspan="3" colspan="1">您的个人基本信息</td>
            <td colspan="1">姓    名<font color="red">*</font></td>
            <td colspan="1">${member.realName}</td>
            <td colspan="1">性     别<font color="red">*</font></td>
            <td colspan="2">${member.paramMap.gender}</td>
            <td colspan="2">出生年月日(yyyyMMdd)<font color="red">*</font></td>
            <td colspan="1">${member.birthday}</td>
            <td colspan="1">民族</td>
            <td colspan="1"><span>${member.nationality}</span></td>
        </tr>
        <tr>
            <td colspan="1">居民身份证<font color="red">*</font></td>
            <td colspan="4"><span>${member.creSn}</span></td>
            <td colspan="2">发证机关所在地</td>
            <td colspan="3"><span>${member.memberClientele.bodies}</span></td>
        </tr>
        <tr>
            <td colspan="1">居民身份证版本</td>
            <td colspan="1">二代身份证</td>
            <td colspan="1">居民身份证有效期</td>
            <td colspan="2"><span>${member.memberClientele.creValid}</span></td>
            <td colspan="2">申请地</td>
            <td colspan="3"><span>重庆市</span></td>
        </tr>
        <tr>
            <td colspan="11" style="text-align:center;background-color:#cdcdff;">消费借款信息</td>
        </tr>
        <tr>
            <td rowspan="2" colspan="1">分期信息</td>
            <td colspan="2">借款金额</td>
            <td colspan="1"><span>${member.loan.loanAmt}</span></td>
            <td colspan="1">分期期数（月）</td>
            <td colspan="1"><span>${member.loan.periods}</span></td>
            <td colspan="2">借款用途</td>
            <td colspan="3"><span>${member.loan.borrowReason}</span></td>
        </tr>
        <tr>
            <td colspan="2">月借款利率</td>
            <td colspan="1"><span>${monthRat}</span></td>
            <td colspan="1">还款方式</td>
            <td colspan="1">等额本息</td>
            <td colspan="2">首次还款日</td>
            <td colspan="1"><span>${member.loan.downDate}</span></td>
            <td colspan="1">每月还款日</td>
            <td colspan="1"><span>${member.loan.perMonthDate}</span></td>
        </tr>
        <tr>
            <td rowspan="2" colspan="1">指定还款账户</td>
            <td colspan="2">指定还款账户户名</td>
            <td colspan="3"><span>${member.loan.repaymentName}</span></td>
            <td colspan="2">指定还款账户账号</td>
            <td colspan="3"><span>${member.loan.repaymentAccount}</span></td>
        </tr>
        <tr>
            <td colspan="2">指定还款账户开户行</td>
            <td colspan="8"><span>${member.paramMap.repaymentBank}</span></td>
        </tr>
        <tr>
            <td colspan="1">第三方代扣条款</td>
            <td colspan="10">               本人(自然人）作为授权人（以下简称“乙方”）授权重庆两江新区同泽小额贷款有限责任公司（以下简称“同泽公司”）或同泽公司委托的第三方公司（包括但不限于银联、易极付、中金支付等)以及第三方公司委托的其他机构，每月从本人提供的以上账户中自动扣划当月的借款本金、借款利息及借款服务费。为执行上述约定以保障各方的权益，本人特此授权及承诺如下：本人已指定本人名下的以上所列账户为付款账户（以下简称“被扣款方账户”）；本人同意该账户同时可用于因提前还款等引起的资金往来；本人同意由同泽公司或其合作方通过第三方支付公司及第三方支付公司的合作银行（本授权书中为被扣款方开户银行）从以上指定账户中主动扣收本人应付款项，届时被扣款方开户银行无须获得本人的同意也无须事先通知本人，并无需本人向被扣款方开户银行进行扣款授权。由本人与同泽公司或其合作方关于资金代扣而产生的任何法律纠纷均与第三方支付公司无关，第三方支付公司不承担任何责任。本人承担因被扣款方账户余额不足或被查封冻结导致无法按时足额扣款而导致的任何法律责任。本人保证上述资金扣收符合国家法律法规，本人不会利用上述扣收操作开展任何违法犯罪活动。本人同意因本人提供信息不真实或不完整所造成的任何法律责任由本人承担；本人同意为完成资金代扣操作，同泽公司或其合作方有权合理使用并向第三方支付有限公司及第三方支付有限公司的合作银行（本授权书中为被扣款方开户银行）披露本授权书全部内容及其他为完成资金代扣操作而必要的本人信息。本人应妥善保管账户信息，因本人故意或过失致使本人的信息泄漏产生的任何损失，均由本人自行承担。本授权书自签署之日起即持续有效，直至本人与同泽公司一致书面（或通过电话或微信)同意变更（对于本授权书的变更仅限于变更被扣款方账户信息，但变更后账户必须同本人相同）、终止本授权书并由同泽公司将变更、终止本授权书的说明（以下简称“说明”）向第三方支付有限公司提供并由第三方支付有限公司实际收到说明之日，本授权书变更、终止。
            </td>
        </tr>
        <tr>
            <td colspan="11" style="text-align:center;background-color:#cdcdff;">其他信息</td>
        </tr>
        <tr>
            <td rowspan="3" colspan="1">您的工作信息</td>
            <td colspan="1">工作状态</td>
            <td colspan="1"><span></span></td>
            <td colspan="1">单位名称</td>
            <td colspan="3"><span>${member.memberClientele.companyName}</span></td>
            <td colspan="1">单位性质</td>
            <td colspan="3"><span></span></td>
        </tr>
        <tr>
            <td colspan="1">单位地址</td>
            <td colspan="1">省/直辖市</td>
            <td colspan="2"><span>${member.paramMap.companyProvince}</span></td>
            <td colspan="1">市</td>
            <td colspan="1"><span>${member.paramMap.companyCity}</span></td>
            <td colspan="1">区/县/镇</td>
            <td colspan="3"><span>${member.paramMap.companyDistrict}</span></td>
        </tr>
        <tr>
            <td colspan="1">单位详细地址</td>
            <td colspan="9"><span>${member.paramMap.companyProvince}${member.paramMap.companyCity}${member.paramMap.companyDistrict}${member.memberClientele.companyAddrDetail}</span></td>
        </tr>
        <tr>
            <td colspan="1" rowspan="2">您的户籍地址</td>
            <td colspan="1">户籍地址</td>
            <td colspan="1">省/直辖市</td>
            <td colspan="2"><span>${member.paramMap.censusProvince}</span></td>
            <td colspan="1">市</td>
            <td colspan="1"><span>${member.paramMap.censusCity}</span></td>
            <td colspan="1">区/县/镇</td>
            <td colspan="3"><span>${member.paramMap.censusDistrict}</span></td>
        </tr>
         <tr>
            <td colspan="1">户籍详细地址</td>
            <td colspan="9"><span>${member.paramMap.censusProvince}${member.paramMap.censusCity}${member.paramMap.censusDistrict}${member.memberClientele.censusAddrDetail}</span></td>
        </tr>
        <tr>
            <td rowspan="2" colspan="1">您的现居住地址</td>
            <td colspan="1">现居地址</td>
            <td colspan="1">省/直辖市</td>
            <td colspan="2"><span>${member.paramMap.liveProvince}</span></td>
            <td colspan="1">市</td>
            <td colspan="1"><span>${member.paramMap.liveCity}</span></td>
            <td colspan="1">区/县/镇</td>
            <td colspan="3"><span>${member.paramMap.liveDistrict}</span></td>
        </tr>
        <tr>
            <td colspan="1">现居地址详细地址</td>
            <td colspan="9"><span>${member.paramMap.liveProvince}${member.paramMap.liveCity}${member.paramMap.liveDistrict}${member.memberClientele.liveAddrDetail}</span></td>
        </tr>
        <tr>
            <td colspan="1">您的联系方式</td>
            <td colspan="3">联系电话</td>
            <td colspan="3"><span>${member.mobile}</span></td>
            <td colspan="1">QQ号/微信号</td>
            <td colspan="1"><span>${member.qq}</span></td>
            <td colspan="1">Email 地址：</td>
            <td colspan="1"><span>${member.email}</span></td>
        </tr>
        <tr>
            <td rowspan="3" colspan="1">联系人资料</td>
            <td colspan="1">父母姓名</td>
            <td colspan="2"><span>${contactothersHb.parentsName}</span></td>
            <td colspan="1">电话号码</td>
            <td colspan="4"><span>${contactothersHb.parentsTel}</span></td>
            <td colspan="1">与您的关系</td>
            <td colspan="1"><span>${contactothersHb.parentsRel}</span></td>
        </tr>
        <tr>
            <td colspan="1">亲属姓名</td>
            <td colspan="2"><span>${contactothersHb.family1Name}</span></td>
            <td colspan="1">电话号码</td>
            <td colspan="4"><span>${contactothersHb.family1Tel}</span></td>
            <td colspan="1">与您的关系</td>
            <td colspan="1"><span>${contactothersHb.family1Relation}</span></td>
        </tr>
        <tr>
            <td colspan="1">联系人姓名</td>
            <td colspan="2"><span>${contactothersHb.contactName}</span></td>
            <td colspan="1">电话号码</td>
            <td colspan="4"><span>${contactothersHb.contactTel}</span></td>
            <td colspan="1">与您的关系</td>
            <td colspan="1"><span>${contactothersHb.contactRel}</span></td>
        </tr>
        <tr>
            <td colspan="11" style="text-align:center;background-color:#cdcdff;">申明及签署</td>
        </tr>
        <tr>
            <td rowspan="2" colspan="8">本人具有完全民事行为能力签署本申请表并承担相应责任。本人已仔细阅读并完全了解本申请表及《个人消费借款合同》，并且自愿遵守合同相关规定。本人保证在此表上填写、确认的内容及向重庆两江新区同泽小额贷款有限责任公司（以下简称“公司”）提供的所有相关资料全部真实、有效。如本人提供虚假资料，将承担由此引起的一切责任及损失。本人在此同意公司按照相关法律法规的规定，基于贷前审查、信用评估、贷后管理及违约追究等业务需求获取本人的相关信息（包括但不限于个人身份信息、实名认证信息、通讯录信息、微信账号相关信息、GPS位置信息）。本人同意并授权“公司”基于前述业务需求，使用采集到的本人个人相关信息，或将前述信息提供给与“公司”开展相关业务合作的公司使用。若本人违反与“公司”的约定，本人同意“公司”或“公司”合作的律师事务所、催收公司等合法设立的机构采取包括但不限于电话、短信、邮寄、网络通知或到访等方式向本人发出提示，或向可能向本人传达信息的联系人等披露本人的违约信息。本人同意如单方面取消申请或不具备借款条件，申请不获批准，本表格及所有提交的资料无须退还本人，由公司处理。公司有权拒绝本借款申请而无须给予任何原因解释。</td>
            <td colspan="1">申请人签字：</td>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td colspan="3" align="right">日期：${currDate}</td>
        </tr>
    </table>

</body>
</html>
