Authentication-Results: lists.example.org;
  spf=pass smtp.mfrom=jqd@d1.example;
  dkim=pass (1024-bit key) header.i=@d1.example;
  dmarc=pass
MIME-Version: 1.0
Received: by 10.157.11.240 with SMTP id 103csp420860oth;
    Fri, 6 Jan 2017 14:27:31 -0800 (PST)
ARC-Seal: a=rsa-sha256;
   b=eEDEWXmmpxnX0f3j86ZGcurPDtlkx6oV3UzSv6ltqzJ4pTiScRA8F5nL+bd9anV5vXVnOC
   WYT1oCpveHVdtpSr52tWEO4RSx+eCUuFsvVHRyq7yM8Ex8v2xhaLWqNWvb7NH38LunxZfjV4
   TuqD0pt+if/XL2X+ctewoCSAVDhT8=; cv=none; d=example.org; i=1; s=dummy;
   t=12345
ARC-Message-Signature: a=rsa-sha256;
   b=XWeK9DxQ8MUm+Me5GLZ5lQ3L49RdoFv7m7VlrAkKb3/C7jjw33TrTY0KYI5lkowvEGnAtm
   5lAqLz67FxA/VrJc2JiYFQR/mBoJLLz/hh9y77byYmSO9tLfIDe2A83+6QsXHO3K6PxTz7+v
   rCB4wHD9GADeUKVfHzmpZhFuYOa88=;
   bh=KWSe46TZKCcDbH4klJPo+tjk5LWJnVRlP5pvjXFZYLQ=; c=relaxed/relaxed;
   d=example.org; h=mime-version:date:from:to:subject;
   i=1; s=dummy; t=12345
ARC-Authentication-Results: i=1; lists.example.org;
    spf=pass smtp.mfrom=jqd@d1.example;
    dkim=pass (1024-bit key) header.i=@d1.example;
    dmarc=pass
Received: from segv.d1.example (segv.d1.example [72.52.75.15])
    by lists.example.org (8.14.5/8.14.5) with ESMTP id t0EKaNU9010123
    for <arc@example.org>; Thu, 14 Jan 2015 15:01:30 -0800 (PST)
    (envelope-from jqd@d1.example)
Received: by 10.157.14.6 with HTTP; Tue, 3 Jan 2017 12:22:54 -0800 (PST)
Message-ID: <54B84785.1060301@d1.example.org>
Date: Thu, 14 Jan 2015 15:00:01 -0800
From: John Q Doe <jqd@d1.example.org>
To: arc@dmarc.org
Subject: Example 1

Hey gang,
This is a test message.
--J.
