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
        *{font-size:12px;font-family: "SimSun";}
        body{margin:0;padding:0;}
        h1{position: relative;text-align: center;height:50px;line-height:50px;font-size:18px;font-weight:lighter;margin:0;padding:0;}
        h1 img{position: absolute;left:10px;top:10px;}
        table{width: 100%;margin:0 auto; }
        table td{border:1px solid #999;}
        p{line-height: 13px;}
        .textIndent {
            text-indent: 2em;
        }
    </style>
</head>
<body style="width: 100%;">
<h1>服务合同<!--<img width="50px;" height="50px;" src="${fundsSource.companyLogo}" />--></h1>
<p align="right" style="margin-top: 8px;margin-right:40px;">合同编号：${member.loan.applySn}</p>
<div><span>甲方：${fundsSource.companyName}</span><br/>
    <span>乙方：${member.realName}（身份证号：${member.creSn}）</span><br/>

    <p style="line-height: 20px"><span>本着平等、自愿的原则，甲乙双方经协商一致，达成如下协议：
        </span><br/><strong>第一条 分期信息：</strong>借款本金、利率、借款期限以乙方与重庆两江新区宝升小额贷款股份有限公司于${currDate}签订的《借款合同》信息为准。
    </p>
    <p style="line-height: 20px"><strong>第二条 服务条款：</strong>
        1、甲方为乙方提供分期服务咨询。2、甲方为乙方分期借款对接第三方机构提供银行卡验卡服务。3、甲方协助乙方按照出借人的要求搜集整理各项资料，并将乙方相关资料报送给出借人。4、甲方协助乙方办理借款手续，促成其与出借人签订借款协议。5、甲方为乙方借款成功后提供借款后的监督及履约管理、还款信息的查询、个人账户及信息的管理及变更维护、重要信息的推送、款项结清证明、还款渠道维护、短信渠道维护、款项差错更正等服务。
    </p>
    <p style="line-height: 20px"><strong>第三条 收费条款：</strong>1、收费内容：综合服务费（包含咨询费、客户服务费、异议处理费、短信提醒费、账户管理费、档案管理费）。2、收费标准：综合服务费=贷款金额*${srviceRat}*分期期数。3、收费方式：按“分期期数”进行分摊收取，具体支付时间及金额以《服务费支付指引》为准。4、乙方提前还款：(1)需同时满足以下几个条件：1）借款人需正常还款三个月及以上（若乙方未正常还款三个月要求结清，甲方有权全额收取乙方前三个月综合服务费、2）应在指定还款日后1-8日内电话通知甲方办理提前还款预约；3）乙方当前无逾期；4）通过甲方客服电话（4000-353-999）、微信服务端等渠道申请确认。（2）提前结清服务费（包含手续费和成本补偿费）：乙方应当支付提前还款手续费、成本补偿费，手续费按借款本金×7.25%（最低200元）计收，成本补偿费按月息3%且等额本息计算方式下剩余贷款本金减去等本等息计算方式下剩余贷款本金之差。（3）如果乙方未能于还款日前或者还款日当日存入足额资金，使得提前还款未成功的，乙方若需提前还款需要重新向甲方申请。5、乙方在贷款申请通过出借方放款成功后3日内取消贷款需向甲方支付50元服务费，发放成功3日后申请取消贷款按合同约定的提前结清处理。
    </p>

    <p style="line-height: 20px"><strong>第四条 支付和清算：</strong>1、每月指定还款日或之前，乙方应将到期的期款（包含各类应付款项和违约款项）存入指定还款账户。2、期款由甲方或甲方合作的代扣机构通过第三方结算行（还款账户开户行）于指定还款日当天自动在还款账户中扣除。3、若乙方未能如期完全偿还任何一期的期款或费用，乙方同意甲方以任何合法手段进行债务追索和资产保全（包括但不限于从乙方所有的任何银行账户中直接进行划扣等），乙方对此不得提出异议。该授权自本合同成立时生效，效力至乙方在本合同项下义务履行完毕时止。
    </p>

    <p style="line-height: 20px"><strong>第五条 乙方的声明、保证和承诺：</strong>1、乙方向甲方声明并保证：（1）乙方为获得借款所提供的所有信息完整、准确、真实并无误导性；（2）乙方签订和履行本合同不违反任何法律、法规、条例或任何法庭、仲裁机关或行政机关的命令、决议、判决或裁决。
        2、若乙方发生违约，乙方同意甲方或其授权的第三方以上门、电话、短信或网络等方式向乙方发出提示。在进行催收和追索债务等工作时，可将乙方有关数据提供予相应的第三方，因催收和追索债务产生的费用（包括但不限于调查费、鉴定费、律师费、差旅费）均由乙方承担。
    </p>

    <p style="line-height: 20px"><strong>第六条 违约责任：</strong>（一）乙方发生以下情形，甲方有权提前终止合同并一次性收取合同项下剩余款项：1、乙方在第五条第1项下作出的、或与借款有关任何陈述或保证虚假、不完整、不准确或有歧义、或乙方违背第五条第2项所作的任何保证、承诺或同意；2、乙方违反与借款人签订的《借款合同》约定的行为；3、甲方合理判断乙方在签署本合同时以及合同存续期间存在欺诈行为或乙方可能无能力履行本合同项下付款义务；4、乙方发生或可能发生影响甲方在本合同项下权益的任何其他情形；（二）乙方违反与借款人签订的《借款合同》，发生逾期还款情形时，甲方有权自逾期之日起以当期逾期期款（逾期本金、利息、服务费等所有逾期费用之和）为基数按照逾期天数每日5‰的比例收取逾期服务费，除此之外，每逾期一期加收20元逾期管理费。
    </p>

    <p style="line-height: 20px"><strong>第七条 收费的变更：</strong>在合同履行过程中，因政策变化原因导致本合同项下记载款项计算方式发生改变，甲方有权单方根据相关政策调整相应款项的计算方式（此处款项包括但不限于本合同项下乙方应支付的所有违约金、逾期管理费等的金额，费率，种类和/或计算基础）。该变更内容不必通知乙方并不必取得乙方同意，自甲方规定实际实施之日起生效，自生效日起甲方按照新的计算方式计算并收取相应款项。
    </p>

    <p style="line-height: 20px"><strong>第八条 争议解决方式：</strong>1、若本合同履行中发生争议，双方应协商解决。协商不成的，可向甲方或乙方所在地人民法院提起诉讼。2、在协商、诉讼期间，对本合同项下不涉及争议的条款，双方仍须执行。3、因此产生的诉讼费、保全申请费、保全担保费、保全保险费、律师费、差旅费、鉴定费、执行费等诉讼费用由乙方承担。
    </p>

    <p style="line-height: 20px"><strong>第九条 其他约定：</strong>1、乙方通讯地址、住址、工作、电话号码等个人信息发生变动后应于3日内电话或书面通知甲方。2、若本合同的任何条款被任何司法或有权机关认定为无效或不可强制执行，该条款将被从本合同中分离出来，其余条款仍应有效。3、本合同自乙方签署后生效。4、乙方在本合同下的任何通知和文件以及法院送达的各类诉讼文书等法律文书的送达地址为：
        <strong>
        <span>借款人：${member.realName}</span>&nbsp;&nbsp;
        <span>地址：${member.paramMap.censusProvince}${member.paramMap.censusCity}${member.paramMap.censusDistrict}${member.memberClientele.censusAddrDetail}</span>&nbsp;&nbsp;
        <span>联系电话：${member.mobile}</span>&nbsp;&nbsp;
        <span>电子邮箱：${member.email}</span></strong>。
        <span>乙方保证提供的上述信息真实可靠，合同相对方或法院按乙方提供的送达地址发送相关通知或文件或各类诉讼文书等法律文书，无论是否签收，均视为送达，受送达人拒收的，不影响送达的效力。若约定的送达地址发生变化，乙方应将变更信息提前3日书面通知合同相对方，未按约定方式变更的，原约定送达地址仍为有效送达地址。</span>
    </p>
        <p style="line-height: 20px" class="textIndent"><strong>乙方已阅读本合同所有条款，应乙方要求，甲方已就本合同做了相应的条款说明，乙方对本合同的含义及相应的法律后果已全部通晓并充分理解。</strong></p>
    </div>
    <p style="margin-top: 10px;">
        <span>甲方签章：</span>
        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <span>乙方签章：</span>
        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <span>合同签订日期：${currDate}</span>
         <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
<%--        <span>合同签订地：重庆市渝北区</span>--%>
    </p>
</body>
</html>