echo off
CLS
ECHO.
ECHO  	         		             ****** DIKKAT !!! *******
ECHO  		        ****** Bu Dosyayi Yonetici Olarak Calistirmadan Isleme Baslama *******
ECHO   			   ******  Tum Islemleri Okuyarak Yaparsan Patlamayiz :))) *******
ECHO.
ECHO .....................................................................................
ECHO  			10 Yillik Sertifika Olusturma Merkezine Hos Geldiniz
ECHO .....................................................................................
ECHO.
ECHO 				   ******UGUR YILDIZ*******
ECHO.
ECHO 1 - Sertifika Olusturmaya Basla..
ECHO 2 - Cikis Yap..
ECHO.
SET /P M= 1 veya 2 tuslarindan biri ile secim yaptiktan sonra ENTER'a basin:
IF %M%==1 GOTO CertCreateStart
IF %M%==2 GOTO CIK
:CIK
exit
:CertCreateStart
mkdir C:\UCertificate
ECHO *** Sertifika Bilgileriniz Asagida Yer Almaktadir *** |more >> C:\UCertificate\SertifikaBilgileri_OkuBeni!!.txt
ECHO 		 *** UGUR YILDIZ *** |more >> C:\UCertificate\SertifikaBilgileri_OkuBeni!!.txt
ECHO.
cls
ECHO.
ECHO Sertifika Adi Giriniz : 
SET /P CERTNAME=
ECHO.
PowerShell New-SelfSignedCertificate -certstorelocation cert:\currentuser\my -dnsname %CERTNAME% -KeyLength 2048 -NotAfter (Get-Date).AddYears(10)  |more >> C:\UCertificate\SertifikaBilgileri_OkuBeni!!.txt
ECHO.
cls
ECHO.
ECHO.
ECHO  		    Sertifikan Icin Bi Sifre Olustur Enter Yap :)) 
ECHO  		 ***** Aman Dikkat Sifrende Turkce Karakter Olmasin *****
ECHO.
ECHO.  
ECHO Sertifika Sifresi Giriniz : 
SET /P CERTPASS=
ECHO.
ECHO.
ECHO.
ECHO.
ECHO Sertifika Adi = %CERTNAME% |more >> C:\UCertificate\SertifikaBilgileri_OkuBeni!!.txt
ECHO Sertifika Sifresi = %CERTPASS% |more >> C:\UCertificate\SertifikaBilgileri_OkuBeni!!.txt
ECHO *** Tesekkurler *** |more >> C:\UCertificate\SertifikaBilgileri_OkuBeni!!.txt
ECHO.
cls
ECHO 		 	***** Simdi Acacagim Dosyadan Bakabilirsin Tum Bilgilere..  :)) *****
ECHO. 
timeout /5
ECHO. 
start C:\UCertificate\SertifikaBilgileri_OkuBeni!!.txt
cls
ECHO  	             ***** Acilan Dosyadaki Thumbprint Keyini Yazalim Lutfen :)) *****
ECHO  		 ***** (Ctrl + C ile kopyalayip Mouse Sag Tik Ile Kopyalasanda Olur) *****
ECHO.
ECHO Thumbprint Key :
SET /P CERTTHUM=
ECHO.
ECHO.
PowerShell  $CertPassword = ConvertTo-SecureString -String "%CERTPASS%" -Force -AsPlainText; Export-PfxCertificate -Cert Cert:\CurrentUser\My\%CERTTHUM% -FilePath C:\UCertificate\%CERTNAME%.pfx -Password $CertPassword 
PowerShell Export-Certificate -Cert Cert:\CurrentUser\My\%CERTTHUM% -FilePath C:\UCertificate\%CERTNAME%.cer 
ECHO.
cls
start C:\UCertificate
ECHO  		 ***** Sertifikalari Olusturdugum Klasoru Actim Ordan Alip Import Islemine Devam Edebilirsin  *****
ECHO  			***** Import Ederken Lazim Olacak Sifreni Yazim Tekrar Suraya Unutma Diye *****
ECHO Sertifika Sifresi = %CERTPASS% 
ECHO  		 ***** (Ctrl + C ile kopyalayip Mouse Sag Tik Ile Kopyalasanda Olur) *****
ECHO.    
ECHO 				  ******Menu Icin Bir Tusa Basiniz*******
ECHO 				   	******UGUR YILDIZ*******
ECHO 					  *** Tesekkurler *** 
ECHO.
timeout /t 5