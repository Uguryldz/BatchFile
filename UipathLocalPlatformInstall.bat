mkdir C:\UCertificate
echo off
color c
cls
ECHO.
ECHO.
ECHO    ****** Bu Dosyayi Yonetici Olarak Calistirmadan Isleme Baslama *******
ECHO.
ECHO.
ECHO  	         	         DIKKAT BU SCRIPT !!!
ECHO  	     Windows Server 2016 ve Windows 10 Sonrasi Surumlerde Calisir 	         		    
ECHO  	         	  Eski Surumlerde Kullanmak Istiyorsaniz 
ECHO  		        	 PowerShell Kurmalisiniz 
ECHO.
ECHO 				 ***** UGUR YILDIZ *****
ECHO.
ECHO .....................................................................................
ECHO             Yukaridaki Uyariyi Okuduysaniz "OK" Yazip Enter Yapiniz
ECHO                Buyuk kucuk harf duyarli degildir dogru yaz yeter
ECHO .....................................................................................
ECHO.	
ECHO.			
SET /P M= Anladiysaniz ok Yazip Enter Yap:
IF %M%==OK GOTO OKI
IF %M%==Ok GOTO OKI
IF %M%==ok GOTO OKI
IF %M%==oK GOTO OKI
exit
:OKI
mkdir C:\UCertificate
echo off
cls
:MENU
color f
ECHO.
ECHO  	                      ****** DIKKAT !!! *******
ECHO   	   ******  Tum Islemleri Okuyarak Yaparsan Patlamayiz :))) *******
ECHO.
ECHO .....................................................................................
ECHO  	            Dosya Yukleme Indirme Servisi
ECHO .....................................................................................
ECHO.
ECHO 		      ******UGUR YILDIZ*******
ECHO.
ECHO 1 - Windows Featuresleri Yukle..
ECHO 2 - 10 Yillik Sertifika Uret Yukle..
ECHO 3 - Tum dosyalari Otamatik indir.. 940 MB :)
ECHO 4 - UiPathPlatformInstaller.exe  892 MB indir..
ECHO 5 - rewrite_2.0_rtw_x64.msi 7 MB indir..
ECHO 6 - dotnet-hosting-3.1.13-win.exe 64 MB indir..
ECHO 7 - Sertifika Dizini Ac..
ECHO 8 - Rewrite Kurulum Hatasi Aliyorsan Buraya Alalim..
ECHO 9 - CIKIS
ECHO.
SET /P M= 1,2,3,4,5,6,7 veya 8 tuslarindan biri ile secim yaptiktan sonra ENTER'a basin:
IF %M%==1 GOTO FEATURES
IF %M%==2 GOTO CertCreate
IF %M%==3 GOTO FDown
IF %M%==4 GOTO UIDown
IF %M%==5 GOTO RewDown
IF %M%==6 GOTO HOSTDown
IF %M%==7 GOTO SDIZIN
IF %M%==8 GOTO RewREG
IF %M%==9 GOTO CIK
:CIK
exit
:SDIZIN
start C:\UCertificate
:FDown
start https://www.microsoft.com/en-us/download/confirmation.aspx?id=7435
start https://download.visualstudio.microsoft.com/download/pr/0f60f951-edec-48a1-aaa1-2f5b5bcbb704/e205315e03bb9f4ac0a6a7efd5d89178/dotnet-hosting-3.1.13-win.exe
start https://download.uipath.com/UiPathPlatformInstaller.exe
cls
GOTO MENU
:UIDown
start https://download.uipath.com/UiPathPlatformInstaller.exe
cls
GOTO MENU
:RewDown
start https://www.microsoft.com/en-us/download/confirmation.aspx?id=7435
cls
GOTO MENU
:HOSTDown
start https://download.visualstudio.microsoft.com/download/pr/0f60f951-edec-48a1-aaa1-2f5b5bcbb704/e205315e03bb9f4ac0a6a7efd5d89178/dotnet-hosting-3.1.13-win.exe
cls
GOTO MENU
:FEATURES
color a
cls
ECHO.
ECHO.
ECHO.
ECHO  	         ****** Yukleme Tamamlaninca Menuye Donecegim *******
ECHO  	                ****** Lutfen Bekleyiniz *******
ECHO.
timeout /t 10
cls
DISM /online /enable-feature /featurename:NetFx4Extended-ASPNET45 /NoRestart
DISM /online /enable-feature /featurename:IIS-WebServerRole /NoRestart
DISM /online /enable-feature /featurename:IIS-WebServer /NoRestart
DISM /online /enable-feature /featurename:IIS-CommonHttpFeatures /NoRestart
DISM /online /enable-feature /featurename:IIS-Security /NoRestart
DISM /online /enable-feature /featurename:IIS-RequestFiltering /NoRestart
DISM /online /enable-feature /featurename:IIS-StaticContent /NoRestart
DISM /online /enable-feature /featurename:IIS-DefaultDocument /NoRestart
DISM /online /enable-feature /featurename:IIS-DirectoryBrowsing /NoRestart
DISM /online /enable-feature /featurename:IIS-HttpErrors /NoRestart
DISM /online /enable-feature /featurename:IIS-ApplicationDevelopment /NoRestart
DISM /online /enable-feature /featurename:IIS-WebSockets /NoRestart
DISM /online /enable-feature /featurename:IIS-ApplicationInit /NoRestart
DISM /online /enable-feature /featurename:IIS-NetFxExtensibility45 /NoRestart
DISM /online /enable-feature /featurename:IIS-ISAPIExtensions /NoRestart
DISM /online /enable-feature /featurename:IIS-ISAPIFilter /NoRestart
DISM /online /enable-feature /featurename:IIS-ASPNET45 /NoRestart
DISM /online /enable-feature /featurename:IIS-HealthAndDiagnostics /NoRestart
DISM /online /enable-feature /featurename:IIS-HttpLogging /NoRestart
DISM /online /enable-feature /featurename:IIS-WindowsAuthentication /NoRestart
DISM /online /enable-feature /featurename:IIS-URLAuthorization /NoRestart
DISM /online /enable-feature /featurename:IIS-Performance /NoRestart
DISM /online /enable-feature /featurename:IIS-HttpCompressionStatic /NoRestart
DISM /online /enable-feature /featurename:IIS-WebServerManagementTools /NoRestart
DISM /online /enable-feature /featurename:IIS-ManagementConsole /NoRestart
cls
ECHO.
ECHO  	      ****** Windows Features Yuklendi *******
ECHO.
GOTO MENU
:CertCreate
echo off
color 1f
CLS
ECHO.
ECHO  	         		             ****** DIKKAT !!! *******
ECHO/
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
GOTO MENU
:RewREG
Color 1A
cd %systemroot%\system32
call :IsAdmin
Reg.exe add "HKLM\SOFTWARE\Microsoft\InetStp" /v "MajorVersion" /t REG_DWORD /d "9" /f
Cls
ECHO.
ECHO.
ECHO  		 ***** Burada Dur Simdi Kurulumu Yapalim Sayfayi Kapatma *****
ECHO.
ECHO.
ECHO  		  ***** Kurulumu Yaptiysan Ayarlari Eski Haline Getirmek *****
ECHO  		  		***** Menuye Donmek Icin *****
ECHO  		  		***** 2 Defa Bi Tusa Bas *****
ECHO.
pause
pause
ECHO.
ECHO.
ECHO.
Color 1A
cd %systemroot%\system32
call :IsAdmin
Reg.exe add "HKLM\SOFTWARE\Microsoft\InetStp" /v "MajorVersion" /t REG_DWORD /d "10" /f
cls
GOTO MENU