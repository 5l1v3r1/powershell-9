$dizin=Get-Location
$yol="$dizin\logAl.ps1";
$saat= New-ScheduledTaskTrigger -Once -At "06/17/2020 22:15 PM"
$uygulama= New-ScheduledTaskAction -Execute "PowerShell.exe"  -Argument "-executionpolicy bypass -NoExit -noprofile -WindowStyle Hidden -file $yol" 
Register-ScheduledTask -TaskName Gorev -Trigger $saat -Action $uygulama -RunLevel Highest -Force



#S�nav�n saat 15:00 ba�lad���n� kabul etti�im i�in uygulamay� bu saatte cal�st�rd�m.Tarih se�imi olarak ay g�n ve y�l olarak se�ilmi� .kulland���m bilgisayar ingilizce dilinde .T�rkce #dildeki i�letim sistemlerinde nas�l oldu�nu denemedi�im i�in bilgim yok.