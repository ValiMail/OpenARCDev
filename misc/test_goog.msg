Delivered-To: geneshuman@gmail.com
Received: by 10.79.133.199 with SMTP id h190csp1359560ivd;
        Mon, 12 Jun 2017 12:27:04 -0700 (PDT)
X-Received: by 10.55.82.67 with SMTP id g64mr35305045qkb.41.1497295624545;
        Mon, 12 Jun 2017 12:27:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1497295624; cv=none;
        d=google.com; s=arc-20160816;
        b=BLic7EgR77tjtXRzv4Wew9T1cFtU5VbSPcwJ8dSoQqQ1b2v/5IF71TCO8BLr+t/Zd2
         iW+UPat3E3khuaqIZUi1e4pw8yirGaE8QvQWHObbyPqFXxZIW4eJGAbs+jLNlyPojRjJ
         f5XWJ/9ybzCDFarMXz3kWn4lCaa50zHuM7jqj2HtmEFKUBguhG21JrfpOKEm5kZ/FYeJ
         pjG58DnsTDZvY3QSnC9MHJv66dW1JMkgBwvPg47BI4g0g8WLr5sLMCzbscJJyxsDErdR
         j6WHW7EIy9v0NGNF3uYQt0mwqWndlROAockTvCrHUby/sVT8vkcotDOyxJvBXSH8fecO
         Q+Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=feedback-id:content-transfer-encoding:mime-version:subject
         :message-id:to:from:date:dkim-signature:dkim-signature
         :arc-authentication-results;
        bh=eGWw9q0t3C3kYf/Mu2HCWXPGjVw0TpepLhReAZptBko=;
        b=xFK6f/xezTe7l9TpyFBHHOUhExFhhj0ZnmOOlM93KxEVs4LQgvCt1Ijk5DQnDKjgBm
         /3a3Y/Xju0V43YbzVeOwVdaIbKpM0KWxlaYT8d4haSTcrzjflfcxRKuLQkVRwUximH/x
         8rqXrhvRKB9e0o6chol/DgQG2mivY9WGud2M3cdbo3PVz/X/iGmY+isV1CMT28kgiK1V
         PQNNJOHX6CrlJD4FYfElauwMKaovtyfM1NbEca2nXR1xgVLB+Mh2tzZ/7o8CKB9MT47u
         U5DAEdDpKGsYmSs41kEn8J0IYRv+EyhmhjpaQUlVk66/AORbeFnocHOAjYTwBCvZVZg8
         SKSw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@coinbase.com;
       dkim=pass header.i=@amazonses.com;
       spf=pass (google.com: domain of 0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@amazonses.com designates 54.240.11.51 as permitted sender) smtp.mailfrom=0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@amazonses.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=coinbase.com
Return-Path: <0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@amazonses.com>
Received: from a11-51.smtp-out.amazonses.com (a11-51.smtp-out.amazonses.com. [54.240.11.51])
        by mx.google.com with ESMTPS id y123si9522935qkb.242.2017.06.12.12.27.04
        for <geneshuman@gmail.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Jun 2017 12:27:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@amazonses.com designates 54.240.11.51 as permitted sender) client-ip=54.240.11.51;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@coinbase.com;
       dkim=pass header.i=@amazonses.com;
       spf=pass (google.com: domain of 0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@amazonses.com designates 54.240.11.51 as permitted sender) smtp.mailfrom=0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@amazonses.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=coinbase.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@coinbase.com;
       dkim=pass header.i=@amazonses.com;
       spf=pass (google.com: domain of 0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@amazonses.com designates 54.240.11.51 as permitted sender) smtp.mailfrom=0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@amazonses.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=coinbase.com
Authentication-Results: mx2.google.com;
       dkim=pass header.i=@coinbase.com;
       dkim=pass header.i=@amazonses.com;
       spf=pass (google.com: domain of 0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@amazonses.com designates 54.240.11.51 as permitted sender) smtp.mailfrom=0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@amazonses.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=coinbase.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple; s=7czdtvwxhuu3gaqucql53xrmpf777voz; d=coinbase.com; t=1497295624; h=Date:From:To:Message-ID:Subject:Mime-Version:Content-Type:Content-Transfer-Encoding; bh=FzZ923l2Z1OGvIwwv8eRy8N0sKb115VXXA+hFc6hXJs=; b=bVEA3EAxzlNCrDSiftOTST/36lkDXZ/UDAWK3SdfRYgSk2CdT/TqLpkXVjMvoKYj uyHBBiDBXxVsvA0PsPiGe5Jp0AhgN27PcFG/QC+EIU1cpTG7HvwxczHb453J9Z2r4g9 nSVgFbpCilWQ4SLzkVgozanUXVjGsjy63T4O4i9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple; s=224i4yxa5dv7c2xz3womw6peuasteono; d=amazonses.com; t=1497295624; h=Date:From:To:Message-ID:Subject:Mime-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID; bh=FzZ923l2Z1OGvIwwv8eRy8N0sKb115VXXA+hFc6hXJs=; b=koqsHWKb4NmB2WmWTmoryGAEwbucIu8bjTUFOZESblKib6ONd12OXEXMfKA5HdQm vmvALteK//clA41sDW+n/h2BNux3jtMouGUIn3IAMNUVYlEo/dJPkTLdb7+1DDIO+Mo i/P1+5kpxKxjWu4I8yO8vh1VA1dgeDqF0js4nG/c=
Date: Mon, 12 Jun 2017 19:27:03 +0000
From: Coinbase <no-reply@coinbase.com>
To: geneshuman@gmail.com
Message-ID: <0100015c9dc61506-d9cfceea-8391-4ab2-9629-6ff2f6784df7-000000@email.amazonses.com>
Subject: Reminder to verify your bank account
Mime-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SES-Outgoing: 2017.06.12-54.240.11.51
Feedback-ID: 1.us-east-1.TQLiVf/rBjClwRiRLqnvdJT2gxVOHcgDf6Da6aS84zo=:AmazonSES

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Coinbase</title>

</head>

<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0" style="margin: 0pt auto; padding: 0px; background:#F9F9F9;">
  <table id="main" width="100%" height="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#F9F9F9">
    <tbody>
      <tr>
        <td valign="top">
          <table class="innermain" cellpadding="0" width="440" cellspacing="0" border="0" bgcolor="#F9F9F9" align="center" style="margin:0 auto; table-layout: fixed;">
            <tbody>
            <!-- START of MAIL Content -->
              <tr>
                <td colspan="4">

                <!-- Logo start here -->
                  <table class="logo" width="100%" cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                      <tr>
                        <td colspan="2" height="30"></td>
                      </tr>
                      <tr>
                        <td valign="top" align="center">
                          <a href="https://www.coinbase.com" style="display:inline-block; cursor:pointer; text-align:center;">
                            <img src="https://s3.amazonaws.com/app-public/Coinbase-notification/coinbase_logo_blue@2x.png" height="23" width="106" border="0" alt="Coinbase">
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2" height="20"></td>
                      </tr>
                    </tbody>
                  </table>
                <!-- Logo end here -->

                <!-- Main CONTENT -->
                  <table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff" style=" border-width:1px; border-color:#EFEFEF; border-style:solid; box-shadow: 0 0 5px #E6E6E6;">
                    <tbody>

                      <tr>
                        <td height="60"></td>
                      </tr>
                      <tr style="font-family: Arial, Helvetica, sans-serif; color:#666666; font-size:14px; line-height:20px; margin-top:20px;">
                        <td class="content" colspan="2" valign="top" align="center" style="padding-left:40px; padding-right:40px;">

                          <table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
  <tbody>

    <tr>
      <td align="left">
        <p style="color:#666666; font-size:15px; line-height:22px;">
          You recently linked your bank account <strong>FIRST HAWAIIAN BANK ****3432</strong> to Coinbase and started the verification process. The two small credits we made should now appear on your bank statement.
        </p>
      </td>
    </tr>
    <tr><td height="20" &nbsp;=""></td></tr>
    <tr>
      <td align="left">
        <p style="color:#666666; font-size:15px; line-height:22px; font-weight:bold;">Here are the next steps:</p>
        <ol>
          <li style="color:#666666; font-size:15px; line-height:22px;">
            Sign in to your bank&#39;s website and find the amount of the two small deposits.
          </li>
          <li style="color:#666666; font-size:15px; line-height:22px;">
            <a href="https://www.coinbase.com/payment_methods">Sign in to Coinbase and click &#39;Verify&#39; on the appropriate account.</a>
          </li>
          <li style="color:#666666; font-size:15px; line-height:22px;">
            Enter the two amounts.
          </li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>

                        </td>
                      </tr>
                      <tr>
                        <td height="60"></td>
                      </tr>
                    </tbody>
                  </table>
                <!-- Main CONTENT end here -->

                <!-- PROMO column start here -->
                    <!-- Show referral promo 25% of the time-->
                    <table id="promo" width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tbody>
                        <tr>
                          <td height="20"></td>
                        </tr>
                        <tr>
                          <td valign="top"align="center">
                            <a href="https://www.coinbase.com/invite_friends?src=mcc1" style="display:inline-block; cursor:pointer;">
                              <img src="https://s3.amazonaws.com/app-public/Coinbase-notification/Free_bitcoin@2x.png" width="249" height="36" border="0" alt="Earn free bitcoin by inviting your friends to Coinbase.">
                            </a>
                          </td>
                        </tr>
                        <tr>
                          <td height="20"></td>
                        </tr>
                        <tr>
                          <td height="1" bgcolor="#E8E8E8"></td>
                        </tr>
                      </tbody>
                    </table>

                <!-- PROMO column end here -->

                <!-- FOOTER start here -->
                  <table width="100%" cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                      <tr>
                        <td height="10">&nbsp;</td>
                      </tr>
                      <tr>
                        <td valign="top" align="center">
                          <span style="font-family:Verdana, Arial, Helvetica, sans-serif; color:#C9C8C8; font-size:9px;">&copy;
                            <a href="https://www.coinbase.com/" target="_blank" style="color:#C9C8C8 !important;">Coinbase</a> 2017
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td height="50">&nbsp;</td>
                      </tr>
                    </tbody>
                  </table>
                <!-- FOOTER end here -->
                </td>
              </tr>
            </tbody>
          </table>
        </td>
      </tr>
    </tbody>
  </table>
</body>
</html>
