Authentication-Results: lists.example.org;
			spf=pass smtp.mfrom=jqd@d1.example;
			dkim=pass (1024-bit key) header.i=@d1.example;
			dmarc=pass
MIME-Version: 1.0
Date: Thu, 14 Jan 2015 15:00:01 -0800
From: John Q Doe <jqd@d1.example.org>
To: arc@dmarc.org
Subject: Example 1

Hey gang,  
This is a test message.
--J.
