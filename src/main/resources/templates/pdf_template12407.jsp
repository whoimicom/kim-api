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
            font-size: 12px;
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
            top: 10px;
        }

        h3 {
            line-height: 6px;
        }

        h2 {
            position: relative;
            text-align: center;
            height: 51px;
            line-height: 31px;
            font-size: 20px;
            font-weight: bold;
            margin: 0;
            padding: 0;
        }

        h2 img {
            position: absolute;
            left: 10px;
            top: 8px;
        }

        table {
            margin: 7px;
            table-layout: fixed;
            width: 98%;
            margin: 0 auto;
        }

        table tr td {
            height: 6px;
        }

        .p-left {
            margin: 3px 0;
        }

        .partition {
            background: url("images/partition.png") center repeat-x;
            text-align: center;
        }

        p {
            margin: 0;
        }
        .fontWeight {
            font-weight: 600;
        }
        .lineHeightText {
            line-height: 20px;
        }
        .textIndent{ text-indent:2em;}
    </style>
</head>

<body style="width: 100%;">
    <h1><img width="100px;" height="60px;" src="${fundsSource.companyLogo}" /><p align="right" style="margin-top: 8px;margin-right:40px;">合同编号：${member.loan.xtSn}</p></h1>
    <h1>个人消费借款合同</h1>
    <p class="lineHeightText" style="margin-bottom:10px;">甲方（出借人）：重庆两江新区同泽小额贷款有限责任公司</p>
    <p class="lineHeightText" style="margin-bottom:15px;">乙方（借款人）：${member.realName} &nbsp;&nbsp;身份证号码：${member.memberClientele.creSn}</p>

    <p class="lineHeightText">本着平等、自愿的原则，出借人愿为借款人提供消费借款，并经协商一致，达成如下协议：</p>
    <p class="lineHeightText textIndent"><strong>第一条 借款：</strong>1、借款本金、借款期限、借款利率等基本信息以《个人消费借款借据》（下简称《借据》）为准。借贷关系自借款人在本合同上以电子签章方式签字后即可正式生效，借款起始日为借款合同签订日。2、借款发放方式：出借人将借款人所借款项支付至《借据》上借款人指定账户。
    </p>
    <p class="lineHeightText textIndent"><strong>第二条 还款：</strong>1、还款方式：借款人采用等额本息还款方式偿还借款本金及利息，还款期数及金额见《还款指引》。借款人应于每月指定还款日（“指定还款日”可为《个人消费借款申请表》中列明的“首次还款日”或“每月还款日”）当日或之前将当月应还月供金额存入指定还款账户。2、乙方提前还款，需同时满足以下几个条件：1）借款人需正常还款三个月及以上；2）应在指定还款日后1-8内电话通知甲方或甲方的合作方办理提前还款预约；3）乙方当前无逾期；4）经甲方书面同意后，乙方可提前还款。乙方因情况变化需全部或者部分提前还款时，应提前一周书面通知甲方，告知提前还款金额与时间。5）如果乙方未能于还款日前或者还款日当日存入足额资金，使得提前还款未成功的，乙方若需提前还款需要重新向甲方申请。3、甲方放款成功3日后乙方申请取消贷款按合同约定的提前结清处理。
    </p>
    <p class="lineHeightText textIndent"><strong>第三条 支付和清算：</strong>1,审核通过后由甲方或甲方合作方合作的第三方支付公司（包括但不限于中金、宝付）将借款金额汇入至借款人指定的银行卡内，若出现第三方代付失败的情况由甲方通过线下银行转账的方式将借款金额汇入借款人指定的银行卡内。2、每月指定还款日或之前，借款人应将到期的月供金额存入指定还款账户。3、月供款由甲方或甲方委托的第三方于约定还款日当天自动在还款账户中扣除。4、若借款人未能如期完全偿还任何一期的期款或费用，借款人同意出借人以任何合法手段进行债务追索和资产保全（包括但不限于从借款人所有的任何银行账户中直接进行划扣等），借款人对此不得提出异议。该授权自本合同成立时生效，效力至借款人在本合同项下义务履行完毕时止。
    </p>
    <p class="lineHeightText textIndent"><strong>第四条 借款人的声明、保证和承诺：</strong>1、借款人向出借人声明并保证：（1）借款人为获得借款所提供的所有信息完整、准确、真实并无误导性；（2）借款人签订和履行本合同不违反任何法律、法规、条列或任何法庭、仲裁机关或行政机关的命令、判决或决议；（3）借款人不得以任何形式涉及任何未决的、进行中的或有危险发生的法律行动、索赔、起诉、仲裁或行政程序等可能影响本合同履行的事件。2、借款人在合同期间无条件地配合出借人对其资信状况、借款使用情况以及偿还借款和服务费用情况进行监督检查。3、借款人个人资产、经济状况等发生实质性变化或发生任何影响本合同义务履行的实现时，应立即书面通知出借人。借款人参与可能影响其履行本合同项下义务的活动之前应经出借人的书面同意。4、未经出借人的书面同意、借款人不得将本合同或其他相关文件下的权利和义务转让给任何第三方。本合同对出借人的任何受让者、继承者继续有效。5、借款人同意出借人或其授权第三方向出借人提供的授权资料进行相关数据处理和风险管理。6、若借款人发生违约，借款人同意出借人或其授权的任何第三方有权以上门、电话、短信或网络等其他方式向借款人及《个人消费借款申请表》所填写的联系人发出还款提示。在进行催收和追索债务等工作时，可将借款人有关数据提供与相应单位和个人，因催收和追索债务产生的费用均由借款人承担。7、因借款人过错导致本合同出现效力瑕疵，给出借人造成损失的，借款人应赔偿出借人因此遭受的损失。8、借款人在其发生死亡、失踪、被监禁、丧失民事行为能力等情况时，其财产共有人、财产代管人、合法财产继承人、受遗赠人将代其继续履行本合同。9、借款人承诺按本合同的用途使用借款，并承认本合同所产生的借贷关系和其因使用借款进行消费而与第三方产生的买卖关系属于完全不同的法律关系，因此不得以在消费行为中与第三方产生的纠纷（包括不限于产品质量及售后服务纠纷）为由拒绝履行本合同。
    </p>
    <p class="lineHeightText textIndent"><strong>第五条 违约责任：</strong>（一）借款人未能在任一指定还款日全额支付当期期款将构成借款人在本合同下的违约。出借人有权根据合同相关条款追究其违约责任。（二）借款人发生以下情况，构成严重违约：1、某一笔期款的指定还款日到期后15天借款人仍未完全偿还该笔期款；2、借款人在与出借人或其他借款方合同中有严重违约行为；3、借款人在第四条第1项下作出的或与借款有关任何陈述或保证虚假、不完整、无准确或有歧义、或借款人违背第四条第2、3、4、5项所作的任何保证、承诺或同意；4、出借人合理判断借款人在借款申请时及借款存续期间存在欺诈行为或借款人可能无能力履行本合同项下付款义务；5、借款人未按照本合同约定用途使用借款的；6、借款人发生或可能发生影响出借人在本合同项下权益的任何其他情形。借款人发生以上情形，<strong>出借人有权要求其一次性履行本合同项下全部义务。</strong>（三）关于逾期：1、借款人若未在某一指定还款日全额偿还应还款额，借款人应自逾期之日起以当期本金为基数，按照每日0.5‰的比例向出借方支付逾期罚息（若超出法律法规规定的最高标准的，则以法律法规规定的最高标准为准）；2、借款人应承担出借方或债权受让方因追偿债权而产生的费用（包括但不限于调查费、诉讼费、律师费、保全申请费、保全担保费、执行费等），如果借款人存在多笔未结清借款，其中一笔借款发生逾期，出借人有权要求借款人清偿所有借款。
    </p>
    <p class="lineHeightText textIndent"><strong>第六条 收费的变更：</strong>在所适用的法律和法规允许的范围内，出借人有权不经通知及不予给出任何理由、在任何时候并且不时地决定所有您在本合同项下应支付的违约金、罚息等的金额，费率，种类和计算基础。在不影响前述规定的基础上，该等变更应自出借人规定的日期开始生效。可根据出借人认为合适的方式借记该等经变更的费用和收费至出借人的的账户和要求借款人根据付款要求支付该等经变更的费用和收费。
    </p>
    <p class="lineHeightText textIndent"><strong>第七条 还款顺序：</strong>1、单笔借款的偿还顺序为（1）本金；（2）利息；（3）借款服务费、账户管理费、资料及档案管理费（如有）
    </p>
    <p class="lineHeightText textIndent"><strong>第八条 争议解决方式：</strong>1、借款人和出借人双方在本合同履行中发生争议，应协商解决。协商不成的，可向甲方所在地或乙方所在地或发生债权转让后债权受让人所在地人民法院提起诉讼。2、借款人和出借人双方在协商、诉讼期间，对本合同项下不涉及争议的条款，仍须执行。3、因争议产生的诉讼费、保全申请费、保全担保费、保全保险费、律师费、差旅费、鉴定费、执行费等诉讼费用由乙方承担。
    </p>
    <p class="lineHeightText textIndent"><strong>第九条 其他约定：</strong>1、本合同下借款人任何付款行为应于指定的还款账户上进行或甲乙双方认可的其他方式进行。该还款行为根据第三方结算行提供的交易记录确定。2、《个人消费申请表》为本合同不可分割部分。3、借款人通讯地址、住址、工作、电话号码等个人信息发生变动后应于五日内电话或书面通知借款人。4、本合同（或申请表）约定的户籍地址、电话号码为双方通知、法律文书及争议解决时人民法院的法律文书送达地址，人民法院的法律文书向合同任何一方当事人的上述地址发出的，视为有效送达。5、若本合同的任何条款被任何司法或有权机关认定为无效或不可强制执行，该条款将被从本合同中分离出来，其余条款仍应有效。6、借款人同意，若相关法律法规和信用政策发生变化，则出借人无需提前发出书面通知，也无需得到借款人的许可，即有权修改本合同相关条款。7、本合同自借款人签署后生效。
    </p>

    <p class="lineHeightText textIndent"><strong>借款人已确认阅读并同意本合同所有条款，应借款人要求，出借人已就本合同做了相应的条款说明，借款人对本合同的含义及相应的法律后果已全部通晓并充分理解并确认同意以电子签名方式签署本合同。</strong>
    </p>
    <p style="padding-top: 6px;">
        <span>出借人：重庆两江新区同泽小额贷款有限责任公司</span>
        <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <span>借款人：</span>
        <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <span>合同签订日：${currDate}</span>
    <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
    <span>签署地：重庆市</span>
    </p>
</body>
</html>
