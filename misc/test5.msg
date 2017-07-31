MIME-Version: 1.0
Return-Path: <jqd@d1.example.org>
ARC-Seal: a=rsa-sha1;
    b=4aSdpG91pnuWdSUXPchtTfnFSWkenWJh1zIKLwT2EVkCNJ+/5clRA5sFonDxmdOrcEgzrh
    jiJuxnZVYXdIkvW9rMe5BOG5walucWYuNkuO7ph0kRX8DRITxwiZYhFgk8OkCITDYNF6h5vr
    rMF5vOKCaWnpiGTUlPqBOgakyN9F0=; cv=none; d=example.org; i=1; s=dummy;
    t=12345
ARC-Message-Signature: a=rsa-sha256;
    b=SMBCg/tHQkIAIzx7OFir0bMhCxk/zaMOx1nyOSAviXW88ERohOFOXIkBVGe74xfJDSh9ou
    ryKgNA4XhUt4EybBXOn1dlrMA07dDIUFOUE7n+8QsvX1Drii8aBIpiu+O894oBEDSYcd1R+z
    sZIdXhOjB/Lt4sTE1h5IT2p3UctgY=;
    bh=dHN66dCNljBC18wb03I1K6hlBvV0qqsKoDsetl+jxb8=; c=relaxed/relaxed;
    d=example.org; h=from:to:date:subject:mime-version:arc-authentication-results;
    i=1; s=dummy; t=12345
ARC-Authentication-Results: i=1; lists.example.org;
    spf=pass smtp.mfrom=jqd@d1.example;
    dkim=pass (1024-bit key) header.i=@d1.example;
    dmarc=pass
Received: from segv.d1.example (segv.d1.example [72.52.75.15])
    by lists.example.org (8.14.5/8.14.5) with ESMTP id t0EKaNU9010123
    for <arc@example.org>; Thu, 14 Jan 2015 15:01:30 -0800 (PST)
    (envelope-from jqd@d1.example)
Authentication-Results: lists.example.org;
    spf=pass smtp.mfrom=jqd@d1.example;
    dkim=pass (1024-bit key) header.i=@d1.example;
    dmarc=pass
MIME-Version: 1.0
Return-Path: <jqd@d1.example.org>
Received: by 10.157.52.162 with SMTP id g31csp5274520otc;
        Tue, 3 Jan 2017 12:32:02 -0800 (PST)
X-Received: by 10.36.31.84 with SMTP id d81mr49584685itd.26.1483475522271;
        Tue, 03 Jan 2017 12:32:02 -0800 (PST)
Message-ID: <C3A9E208-6B5D-4D9F-B4DE-9323946993AC@d1.example.org>
Date: Thu, 5 Jan 2017 14:39:01 -0800
From: Gene Q Doe <gqd@d1.example.org>
To: arc@dmarc.org
Subject: Example 2
Content-Type: multipart/alternative; boundary=001a113e15fcdd0f9e0545366e8f

--001a113e15fcdd0f9e0545366e8f
Content-Type: text/plain; charset=UTF-8

This is a test message

--001a113e15fcdd0f9e0545366e8f
Content-Type: text/html; charset=UTF-8

<div dir="ltr">This is a test message</div>

--001a113e15fcdd0f9e0545366e8f--