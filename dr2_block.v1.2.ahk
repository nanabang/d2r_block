#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#IfWinActive ahk_class grcWindow
#KeyHistory 0
#SingleInstance force ; only one instance of script can run
ListLines Off
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
Gui, 1:Show, w300 h200, D2R ��ȭ������
Gui, Show, x518 y241 h240 w300, 
Gui, add, Text, x12 y45 h20 w300 , 1�� 134.1.1.1-34.64.255.255
Gui, add, Text, x12 y70 h20 w200, 2�� 158.1.1.1-158.255.255.255

Gui, 1:Add, Button, x42 y100 w100 h40 v�����ư, ��ȭ�����
Gui, 1:Add, Button, x152 y100 w100 h40 v������ư, ��ȭ������
Gui, 1:Add, Button, x42 y150 w100 h40 v����, ��ȭ��Ȯ��






Button��ȭ�����:
	Gui,Submit,nohide
	;MsgBox , , �˸� , %IP1%
	

	x := -1
	y := 1
	ip2f:=IP2+x
	ip2t:=IP2+y
	
	Run,  %ComSpec% /c netsh advfirewall firewall add rule name="D2R_1" dir=out action=block protocol=TCP remoteip=34.1.1.1-34.64.255.255,,hide
	Run,  %ComSpec% /c netsh advfirewall firewall add rule name="D2R_2" dir=out action=block protocol=TCP remoteip=158.1.1.1-158.255.255.255,,hide	
	MsgBox , , �˸� ,  IP ��ȭ�����
	
return

Button��ȭ������:
    Run,  %ComSpec% /c netsh advfirewall firewall delete rule name="D2R_1" dir=out,,hide
	Run,  %ComSpec% /c netsh advfirewall firewall delete rule name="D2R_2" dir=out,,hide
	MsgBox , , �˸� , ��ȭ������
return

Button��ȭ��Ȯ��:
    Run, wf.msc
return



GuiClose:
	Run,  %ComSpec% /c netsh advfirewall firewall delete rule name="D2R_1" dir=out,,hide
	Run,  %ComSpec% /c netsh advfirewall firewall delete rule name="D2R_2" dir=out,,hide
ExitApp