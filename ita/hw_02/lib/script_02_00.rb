# ========================================================================
# Script 		=	__02__
# ========================================================================
# Description 	=	"SSH kyes"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


$ git clone https://github.com/MashaZanin/qa.git
Cloning into 'qa'...
remote: Counting objects: 11, done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 11 (delta 0), reused 11 (delta 0)
Unpacking objects: 100% (11/11), done.
$ git push
Everything up-to-date
$ cd ~/.ssh
$ cd
$ ssh-keygen -t rsa -C "mariazanin@comcast.net"
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/vmzanim/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /Users/vmzanim/.ssh/id_rsa.
Your public key has been saved in /Users/vmzanim/.ssh/id_rsa.pub.
The key fingerprint is:
1b:44:5d:ab:b1:00:54:7d:37:a3:16:93:21:69:dd:de mariazanin@comcast.net
The key's randomart image is:
+--[ RSA 2048]----+
|     .o.oo.+o+   |
|       o  =.*.=  |
|        o....* + |
|       . . +o . E|
|        S o.     |
|         o       |
|        .        |
|                 |
|                 |
+-----------------+
$ pbcopy < ~/.ssh/id_rsa.pub
$ ssh -T git@github.com
Identity added: /Users/vmzanim/.ssh/id_rsa (/Users/vmzanim/.ssh/id_rsa)
Connection closed by 204.232.175.90
$ rm -rf qa
$ ls
Desktop		Dropbox		Movies		Public		SELECT
Documents	Google Drive	Music		QA HW		USE
Downloads	Library		Pictures	QAcourse
$ git clone git@github.com:MashaZanin/qa.git
Cloning into 'qa'...
remote: Counting objects: 11, done.
remote: Compressing objects: 100% (4/4), done.
Receiving objects: 100% (11/11), done.
remote: Total 11 (delta 0), reused 11 (delta 0)