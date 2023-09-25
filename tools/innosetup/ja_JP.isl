; *** Inno Setup version 5.1.11+ Japanese messages ***
;
; Translated by Ryou Minakami (ryou32jp@yahoo.co.jp)
; Fixes and updates: Koichi Shirasuka (shirasuka@eugrid.co.jp)
;
; $jrsoftware: issrc/Files/Default.isl,v 1.66 2005/02/25 20:23:48 mlaan Exp $

[LangOptions]
LanguageName=Japanese
LanguageID=$0411
LanguageCodePage=932

; If you don't need to support Windows 9x, commenting the following 4 lines gives better looking (banners not stretched).
DialogFontName=élér éoâSâVâbâN
DialogFontSize=9
TitleFontName=élér éoâSâVâbâN
TitleFontSize=29

; Required for Win2K/older to display the welcome message with correct font.
WelcomeFontName=élér éoâSâVâbâN
WelcomeFontSize=12

[Messages]

; *** Application titles
SetupAppTitle=âZâbâgâAâbâv
SetupWindowTitle=%1 âZâbâgâAâbâv
UninstallAppTitle=âAâôâCâôâXâgü[âï
UninstallAppFullTitle=%1 âAâôâCâôâXâgü[âï

; *** Misc. common
InformationTitle=Å¯ò±
ConfirmTitle=èmöF
ErrorTitle=âGâëü[

; *** SetupLdr messages
SetupLdrStartupMessage=%1 é­âCâôâXâgü[âïéÁé▄éÀüBæ▒ìséÁé▄éÀé®üH
LdrCannotCreateTemp=êÛÄ×âtâ@âCâïé­ìýÉ¼é┼é½é▄é╣é±üBâZâbâgâAâbâvé­ÆåÄ~éÁé▄éÀüB
LdrCannotExecTemp=êÛÄ×âtâHâïâ_é╠âtâ@âCâïé­Ä└ìsé┼é½é▄é╣é±üBâZâbâgâAâbâvé­ÆåÄ~éÁé▄éÀüB

; *** Startup error messages
LastErrorMessage=%1.%n%nâGâëü[ %2: %3
SetupFileMissing=âtâ@âCâï %1 é¬î®é┬é®éÞé▄é╣é±üBûÔæÞé­ë­îêéÀéÚé®ÉVéÁéóâZâbâgâAâbâvâvâìâOâëâÇé­ô³ÄÞéÁé─é¡é¥é│éóüB
SetupFileCorrupt=âZâbâgâAâbâvâtâ@âCâïé¬ë¾éÛé─éóé▄éÀüBÉVéÁéóâZâbâgâAâbâvâvâìâOâëâÇé­ô³ÄÞéÁé─é¡é¥é│éóüB
SetupFileCorruptOrWrongVer=âZâbâgâAâbâvâtâ@âCâïé¬ë¾éÛé─éóéÚé®üAé▒é╠âoü[âWâçâôé╠âZâbâgâAâbâvéãî¦èÀÉ½é¬éáéÞé▄é╣é±üBûÔæÞé­ë­îêéÀéÚé®ÉVéÁéóâZâbâgâAâbâvâvâìâOâëâÇé­ô³ÄÞéÁé─é¡é¥é│éóüB
NotOnThisPlatform=é▒é╠âvâìâOâëâÇé═ %1 é┼é═ô«ìýéÁé▄é╣é±üB
OnlyOnThisPlatform=é▒é╠âvâìâOâëâÇé╠Ä└ìsé╔é═ %1 é¬òKùvé┼éÀüB
OnlyOnTheseArchitectures=é▒é╠âvâìâOâëâÇé═%n%n%1âvâìâZâbâTî³é»é╠Windowsé╔éÁé®âCâôâXâgü[âïé┼é½é▄é╣é±üB
MissingWOW64APIs=îõÄgùpÆåé╠64-bitö┼Windowsé╔é═é▒é╠âvâìâOâëâÇé­âCâôâXâgü[âïéÁüAô«ìýé│é╣éÚêÎé╔òKùvé╚ï@ö\é¬è▄é▄éÛé─éóé▄é╣é±üBé▒é╠ûÔæÞé­ÅCÉ│éÀéÚêÎé╔é═âTü[ârâXâpâbâN%1é­âCâôâXâgü[âïéÁé─é¡é¥é│éóüB
WinVersionTooLowError=é▒é╠âvâìâOâëâÇé╠Ä└ìsé╔é═ %1 %2 ê╚ì~é¬òKùvé┼éÀüB
WinVersionTooHighError=é▒é╠âvâìâOâëâÇé═ %1 %2 ê╚ì~é┼é═ô«ìýéÁé▄é╣é±üB
AdminPrivilegesRequired=é▒é╠âvâìâOâëâÇé­âCâôâXâgü[âïéÀéÚé¢é▀é╔é═èÃùØÄÊéãéÁé─âìâOâCâôéÀéÚòKùvé¬éáéÞé▄éÀüB
PowerUserPrivilegesRequired=é▒é╠âvâìâOâëâÇé­âCâôâXâgü[âïéÀéÚé¢é▀é╔é═èÃùØÄÊé▄é¢é═âpâÅü[âåü[âUü[éãéÁé─âìâOâCâôéÀéÚòKùvé¬éáéÞé▄éÀüB
SetupAppRunningError=âZâbâgâAâbâvé═Ä└ìsÆåé╠ %1 é­îƒÅoéÁé▄éÁé¢üB%n%nèJéóé─éóéÚâAâvâèâPü[âVâçâôé­éÀéÎé─ò┬éÂé─é®éþüuOKüvé­âNâèâbâNéÁé─é¡é¥é│éóüBüuâLâââôâZâïüvé­âNâèâbâNéÀéÚéãüAâZâbâgâAâbâvé­ÅIù╣éÁé▄éÀüB
UninstallAppRunningError=âAâôâCâôâXâgü[âïé═Ä└ìsÆåé╠ %1 é­îƒÅoéÁé▄éÁé¢üB%n%nèJéóé─éóéÚâAâvâèâPü[âVâçâôé­éÀéÎé─ò┬éÂé─é®éþüuOKüvé­âNâèâbâNéÁé─é¡é¥é│éóüBüuâLâââôâZâïüvé­âNâèâbâNéÀéÚéãüAâZâbâgâAâbâvé­ÅIù╣éÁé▄éÀüB

; *** Misc. errors
ErrorCreatingDir=âfâBâîâNâgâè %1 é­ìýÉ¼Æåé╔âGâëü[é¬ö¡ÉÂéÁé▄éÁé¢üB
ErrorTooManyFilesInDir=âfâBâîâNâgâè %1 é╔âtâ@âCâïé­ìýÉ¼Æåé╔âGâëü[é¬ö¡ÉÂéÁé▄éÁé¢üBâtâ@âCâïé╠Éöé¬æ¢éÀé¼é▄éÀüB

; *** Setup common messages
ExitSetupTitle=âZâbâgâAâbâvÅIù╣
ExitSetupMessage=âZâbâgâAâbâvìýïãé═è«ù╣éÁé─éóé▄é╣é±üBé▒é▒é┼âZâbâgâAâbâvé­ÆåÄ~éÀéÚéãâvâìâOâëâÇé═âCâôâXâgü[âïé│éÛé▄é╣é±üB%n%në³é▀é─âCâôâXâgü[âïéÀéÚÅÛìçé═üAéÓéñêÛôxâZâbâgâAâbâvé­Ä└ìséÁé─é¡é¥é│éóüB%n%nâZâbâgâAâbâvé­ÅIù╣éÁé▄éÀé®üH
AboutSetupMenuItem=âZâbâgâAâbâvé╔é┬éóé─(&A)...
AboutSetupTitle=âZâbâgâAâbâvé╔é┬éóé─
AboutSetupMessage=%1 %2%n%3%n%n%1 âzü[âÇâyü[âW:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< û▀éÚ(&B)
ButtonNext=ÄƒéÍ(&N) >
ButtonInstall=âCâôâXâgü[âï(&I)
ButtonOK=OK
ButtonCancel=âLâââôâZâï
ButtonYes=é═éó(&Y)
ButtonYesToAll=éÀéÎé─é═éó(&A)
ButtonNo=éóéóéª(&N)
ButtonNoToAll=éÀéÎé─éóéóéª(&O)
ButtonFinish=è«ù╣(&F)
ButtonBrowse=ÄQÅã(&B)...
ButtonWizardBrowse=ÄQÅã(&r)
ButtonNewFolder=ÉVéÁéóâtâHâïâ_(&M)

; *** "Select Language" dialog messages
SelectLanguageTitle=âZâbâgâAâbâvé╔ÄgùpéÀéÚî¥îÛé­æIé±é┼é¡é¥é│éóüB
SelectLanguageLabel=âCâôâXâgü[âïÆåé╔ùÿùpéÀéÚî¥îÛé­É´éÐé▄éÀ:

; *** Common wizard text
ClickNext=æ▒ìséÀéÚé╔é═üuÄƒéÍüvüAâZâbâgâAâbâvé­ÅIù╣éÀéÚé╔é═üuâLâââôâZâïüvé­âNâèâbâNéÁé─é¡é¥é│éóüB
BeveledLabel=
BrowseDialogTitle=âtâHâïâ_ÄQÅã
BrowseDialogLabel=âèâXâgé®éþâtâHâïâ_é­æIéÐOKé­ëƒéÁé─é¡é¥é│éóüB
NewFolderName=ÉVéÁéóâtâHâïâ_

; *** "Welcome" wizard page
WelcomeLabel1=[name] âZâbâgâAâbâvâEâBâUü[âhé╠èJÄn
WelcomeLabel2=é▒é╠âvâìâOâëâÇé═é▓Ägùpé╠âRâôâsâàü[â^éÍ [name/ver] é­âCâôâXâgü[âïéÁé▄éÀüB%n%næ▒ìséÀéÚæOé╔æ╝é╠âAâvâèâPü[âVâçâôé­éÀéÎé─ÅIù╣éÁé─é¡é¥é│éóüB

; *** "Password" wizard page
WizardPassword=âpâXâÅü[âh
PasswordLabel1=é▒é╠âCâôâXâgü[âïâvâìâOâëâÇé═âpâXâÅü[âhé╔éµé┴é─ò█îýé│éÛé─éóé▄éÀüB
PasswordLabel3=âpâXâÅü[âhé­ô³ù═éÁé─üuÄƒéÍüvé­âNâèâbâNéÁé─é¡é¥é│éóüBâpâXâÅü[âhé═æÕòÂÄÜéãÅ¼òÂÄÜé¬ïµò╩é│éÛé▄éÀüB
PasswordEditLabel=âpâXâÅü[âh(&P):
IncorrectPassword=ô³ù═é│éÛé¢âpâXâÅü[âhé¬É│éÁé¡éáéÞé▄é╣é±üBéÓéñêÛôxô³ù═éÁé╚é¿éÁé─é¡é¥é│éóüB

; *** "License Agreement" wizard page
WizardLicense=Ägùpïûæ°î_û±Åæé╠ô»êË
LicenseLabel=æ▒ìséÀéÚæOé╔ê╚ë║é╠Ådùvé╚Å¯ò±é­é¿ôÃé¦é¡é¥é│éóüB
LicenseLabel3=ê╚ë║é╠Ägùpïûæ°î_û±Åæé­é¿ôÃé¦é¡é¥é│éóüBâCâôâXâgü[âïé­æ▒ìséÀéÚé╔é═é▒é╠î_û±Åæé╔ô»êËéÀéÚòKùvé¬éáéÞé▄éÀüB
LicenseAccepted=ô»êËéÀéÚ(&A)
LicenseNotAccepted=ô»êËéÁé╚éó(&D)

; *** "Information" wizard pages
WizardInfoBefore=Å¯ò±
InfoBeforeLabel=æ▒ìséÀéÚæOé╔ê╚ë║é╠Ådùvé╚Å¯ò±é­é¿ôÃé¦é¡é¥é│éóüB
InfoBeforeClickLabel=âZâbâgâAâbâvé­æ▒ìséÀéÚé╔é═üuÄƒéÍüvé­âNâèâbâNéÁé─é¡é¥é│éóüB
WizardInfoAfter=Å¯ò±
InfoAfterLabel=æ▒ìséÀéÚæOé╔ê╚ë║é╠Ådùvé╚Å¯ò±é­é¿ôÃé¦é¡é¥é│éóüB
InfoAfterClickLabel=âZâbâgâAâbâvé­æ▒ìséÀéÚé╔é═üuÄƒéÍüvé­âNâèâbâNéÁé─é¡é¥é│éóüB

; *** "User Information" wizard page
WizardUserInfo=âåü[âUü[Å¯ò±
UserInfoDesc=âåü[âUü[Å¯ò±é­ô³ù═éÁé─é¡é¥é│éóüB
UserInfoName=âåü[âUü[û╝(&U):
UserInfoOrg=ægÉD(&O):
UserInfoSerial=âVâèâAâïöÈìå(&S):
UserInfoNameRequired=âåü[âUü[û╝é­ô³ù═éÁé─é¡é¥é│éóüB

; *** "Select Destination Location" wizard page
WizardSelectDir=âCâôâXâgü[âïÉµé╠ÄwÆÞ
SelectDirDesc=[name] é╠âCâôâXâgü[âïÉµé­ÄwÆÞéÁé─é¡é¥é│éóüB
SelectDirLabel3=[name] é­âCâôâXâgü[âïéÀéÚâtâHâïâ_é­ÄwÆÞéÁé─üAüuÄƒéÍüvé­âNâèâbâNéÁé─é¡é¥é│éóüB
SelectDirBrowseLabel=æ▒é»éÚé╔é═üuÄƒéÍüvé­âNâèâbâNéÁé─é¡é¥é│éóüBò╩é╠âtâHâïâ_é­æIæ­éÀéÚé╔é═üuÄQÅãüvé­âNâèâbâNéÁé─é¡é¥é│éóüB
DiskSpaceMBLabel=é▒é╠âvâìâOâëâÇé═ì┼Æß [mb] MBé╠âfâBâXâNï¾é½ù╠êµé­òKùvéãéÁé▄éÀüB
ToUNCPathname=âZâbâgâAâbâvé═UNCâtâHâïâ_é╔âCâôâXâgü[âïéÀéÚé▒éãé¬é┼é½é▄é╣é±üBâlâbâgâÅü[âNé╔âCâôâXâgü[âïéÀéÚÅÛìçé═âlâbâgâÅü[âNâhâëâCâué╔èäéÞôûé─é─é¡é¥é│éóüB
InvalidPath=âhâëâCâuòÂÄÜé­è▄éÌè«æSé╚âpâXé­ô³ù═éÁé─é¡é¥é│éóüB%n%nùßüFC:\APP%n%né▄é¢é═UNCî`Ä«é╠âpâXé­ô³ù═éÁé─é¡é¥é│éóüB%n%nùßüF\\server\share
InvalidDrive=ÄwÆÞéÁé¢âhâëâCâué▄é¢é═UNCâpâXé¬î®é┬é®éþé╚éóé®âAâNâZâXé┼é½é▄é╣é±üBò╩é╠âpâXé­ÄwÆÞéÁé─é¡é¥é│éóüB
DiskSpaceWarningTitle=âfâBâXâNï¾é½ù╠êµé╠òsæ½
DiskSpaceWarning=âCâôâXâgü[âïé╔é═ì┼Æß %1 KBé╠âfâBâXâNï¾é½ù╠êµé¬òKùvé┼éÀé¬üAÄwÆÞé│éÛé¢âhâëâCâué╔é═ %2 KBé╠ï¾é½ù╠êµéÁé®éáéÞé▄é╣é±üB%n%né▒é╠é▄é▄æ▒ìséÁé▄éÀé®üH
DirNameTooLong=âhâëâCâuû╝ûöé═âpâXé¬ÆÀë▀é¼é▄éÀüB
InvalidDirName=âtâHâïâ_û╝é¬û│î°é┼éÀüB
BadDirName32=ê╚ë║é╠òÂÄÜé­è▄éÌâtâHâïâ_û╝é═ÄwÆÞé┼é½é▄é╣é±üB:%n%n%1
DirExistsTitle=è¨æÂé╠âtâHâïâ_
DirExists=âtâHâïâ_ %n%n%1%n%né¬è¨é╔æÂì¦éÁé▄éÀüBé▒é╠é▄é▄é▒é╠âtâHâïâ_éÍâCâôâXâgü[âïéÁé▄éÀé®üH
DirDoesntExistTitle=âtâHâïâ_é¬î®é┬é®éÞé▄é╣é±üB
DirDoesntExist=âtâHâïâ_ %n%n%1%n%né¬î®é┬é®éÞé▄é╣é±üBÉVéÁéóâtâHâïâ_é­ìýÉ¼éÁé▄éÀé®üH

; *** "Select Components" wizard page
WizardSelectComponents=âRâôâ|ü[âlâôâgé╠æIæ­
SelectComponentsDesc=âCâôâXâgü[âïâRâôâ|ü[âlâôâgé­æIæ­éÁé─é¡é¥é│éóüB
SelectComponentsLabel2=âCâôâXâgü[âïéÀéÚâRâôâ|ü[âlâôâgé­æIæ­éÁé─é¡é¥é│éóüBâCâôâXâgü[âïéÀéÚòKùvé╠é╚éóâRâôâ|ü[âlâôâgé═â`âFâbâNé­èOéÁé─é¡é¥é│éóüBæ▒ìséÀéÚé╔é═üuÄƒéÍüvé­âNâèâbâNéÁé─é¡é¥é│éóüB
FullInstallation=âtâïâCâôâXâgü[âï
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=âRâôâpâNâgâCâôâXâgü[âï
CustomInstallation=âJâXâ^âÇâCâôâXâgü[âï
NoUninstallWarningTitle=è¨æÂé╠âRâôâ|ü[âlâôâg
NoUninstallWarning=âZâbâgâAâbâvé═ê╚ë║é╠âRâôâ|ü[âlâôâgé¬è¨é╔âCâôâXâgü[âïé│éÛé─éóéÚé▒éãé­îƒÅoéÁé▄éÁé¢üB%n%n%1%n%né▒éÛéþé╠âRâôâ|ü[âlâôâgé╠æIæ­é­ë­Å£éÁé─éÓâAâôâCâôâXâgü[âïé═é│éÛé▄é╣é±üB%n%né▒é╠é▄é▄æ▒ìséÁé▄éÀé®üH
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceMBLabel=î╗ì¦é╠æIæ­é═ì┼Æß [mb] MBé╠âfâBâXâNï¾é½ù╠êµé­òKùvéãéÁé▄éÀüB

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=ÆÃë┴â^âXâNé╠æIæ­
SelectTasksDesc=Ä└ìséÀéÚÆÃë┴â^âXâNé­æIæ­éÁé─é¡é¥é│éóüB
SelectTasksLabel2=[name] âCâôâXâgü[âïÄ×é╔Ä└ìséÀéÚÆÃë┴â^âXâNé­æIæ­éÁé─üAüuÄƒéÍüvé­âNâèâbâNéÁé─é¡é¥é│éóüB

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=âvâìâOâëâÇâOâïü[âvé╠ÄwÆÞ
SelectStartMenuFolderDesc=âvâìâOâëâÇâAâCâRâôé­ìýÉ¼éÀéÚÅÛÅèé­ÄwÆÞéÁé─é¡é¥é│éóüB
SelectStartMenuFolderLabel3=âZâbâgâAâbâvé═âXâ^ü[âgâüâjâàü[é╔âvâìâOâëâÇé╠âVâçü[âgâJâbâgé­ìýÉ¼éÁé▄éÀüB
SelectStartMenuFolderBrowseLabel=æ▒é»éÚé╔é═üuÄƒéÍüvé­âNâèâbâNéÁé─é¡é¥é│éóüBêßéñâfâBâîâNâgâèé­æIæ­éÀéÚé╔é═üuÄQÅãüvé­âNâèâbâNéÁé─é¡é¥é│éóüB
MustEnterGroupName=âOâïü[âvû╝é­ÄwÆÞéÁé─é¡é¥é│éóüB
GroupNameTooLong=âtâHâïâ_û╝ûöé═âpâXé¬ÆÀë▀é¼é▄éÀüB
InvalidGroupName=âOâïü[âvû╝é¬û│î°é┼éÀüB
BadGroupName=ê╚ë║é╠òÂÄÜé­è▄éÌâOâïü[âvû╝é═ÄwÆÞé┼é½é▄é╣é±üB:%n%n%1
NoProgramGroupCheck2=âvâìâOâëâÇâOâïü[âvé­ìýÉ¼éÁé╚éó(&D)

; *** "Ready to Install" wizard page
WizardReady=âCâôâXâgü[âïÅÇö§è«ù╣
ReadyLabel1=é▓Ägùpé╠âRâôâsâàü[â^éÍ [name] é­âCâôâXâgü[âïéÀéÚÅÇö§é¬é┼é½é▄éÁé¢üB
ReadyLabel2a=âCâôâXâgü[âïé­æ▒ìséÀéÚé╔é═üuâCâôâXâgü[âïüvé­üAÉ¦ÆÞé╠èmöFéÔò¤ìXé­ìséñé╔é═üuû▀éÚüvé­âNâèâbâNéÁé─é¡é¥é│éóüB
ReadyLabel2b=âCâôâXâgü[âïé­æ▒ìséÀéÚé╔é═üuâCâôâXâgü[âïüvé­âNâèâbâNéÁé─é¡é¥é│éóüB
ReadyMemoUserInfo=âåü[âUü[Å¯ò±:
ReadyMemoDir=âCâôâXâgü[âïÉµ:
ReadyMemoType=âZâbâgâAâbâvé╠ÄÝùÌ:
ReadyMemoComponents=æIæ­âRâôâ|ü[âlâôâg:
ReadyMemoGroup=âvâìâOâëâÇâOâïü[âv:
ReadyMemoTasks=ÆÃë┴â^âXâNêÛùù:

; *** "Preparing to Install" wizard page
WizardPreparing=âCâôâXâgü[âïÅÇö§Æå
PreparingDesc=é▓Ägùpé╠âRâôâsâàü[â^éÍ [name] é­âCâôâXâgü[âïéÀéÚÅÇö§é­éÁé─éóé▄éÀüB
PreviousInstallNotCompleted=æOë±ìsé┴é¢âAâvâèâPü[âVâçâôé╠âCâôâXâgü[âïé▄é¢é═ìÝÅ£é¬è«ù╣éÁé─éóé▄é╣é±üBè«ù╣éÀéÚé╔é═âRâôâsâàü[â^é­ì─ïNô«éÀéÚòKùvé¬éáéÞé▄éÀüB%n%n[name] é╠âCâôâXâgü[âïé­è«ù╣éÀéÚé¢é▀é╔é═üAì─ïNô«îÒé╔éÓéñêÛôxâZâbâgâAâbâvé­Ä└ìséÁé─é¡é¥é│éóüB
CannotContinue=âZâbâgâAâbâvé­æ▒ìsé┼é½é▄é╣é±üBüuâLâââôâZâïüvé­âNâèâbâNéÁé─âZâbâgâAâbâvé­ÅIù╣éÁé─é¡é¥é│éóüB

; *** "Installing" wizard page
WizardInstalling=âCâôâXâgü[âïÅ¾ïÁ
InstallingLabel=é▓Ägùpé╠âRâôâsâàü[â^é╔ [name] é­âCâôâXâgü[âïéÁé─éóé▄éÀüBéÁé╬éþé¡é¿æÊé┐é¡é¥é│éóüB

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name] âZâbâgâAâbâvâEâBâUü[âhé╠è«ù╣
FinishedLabelNoIcons=é▓Ägùpé╠âRâôâsâàü[â^é╔ [name] é¬âZâbâgâAâbâvé│éÛé▄éÁé¢üB
FinishedLabel=é▓Ägùpé╠âRâôâsâàü[â^é╔ [name] é¬âZâbâgâAâbâvé│éÛé▄éÁé¢üBâAâvâèâPü[âVâçâôé­Ä└ìséÀéÚé╔é═âCâôâXâgü[âïé│éÛé¢âAâCâRâôé­æIæ­éÁé─é¡é¥é│éóüB
ClickFinish=âZâbâgâAâbâvé­ÅIù╣éÀéÚé╔é═üuè«ù╣üvé­âNâèâbâNéÁé─é¡é¥é│éóüB
FinishedRestartLabel=[name] é╠âCâôâXâgü[âïé­è«ù╣éÀéÚé¢é▀é╔é═üAâRâôâsâàü[â^é­ì─ïNô«éÀéÚòKùvé¬éáéÞé▄éÀüBéÀé«é╔ì─ïNô«éÁé▄éÀé®üH
FinishedRestartMessage=[name] é╠âCâôâXâgü[âïé­è«ù╣éÀéÚé¢é▀é╔é═üAâRâôâsâàü[â^é­ì─ïNô«éÀéÚòKùvé¬éáéÞé▄éÀüB%n%néÀé«é╔ì─ïNô«éÁé▄éÀé®üH
ShowReadmeCheck=READMEâtâ@âCâïé­ò\ÄªéÀéÚüB
YesRadio=éÀé«ì─ïNô«(&Y)
NoRadio=îÒé┼ÄÞô«é┼ì─ïNô«(&N)
; used for example as 'Run MyProg.exe'
RunEntryExec=%1 é╠Ä└ìs
; used for example as 'View Readme.txt'
RunEntryShellExec=%1 é╠ò\Äª

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=âfâBâXâNé╠æ}ô³
SelectDiskLabel2=âfâBâXâN %1 é­æ}ô³éÁüAüuOKüvé­âNâèâbâNéÁé─é¡é¥é│éóüB%n%né▒é╠âfâBâXâNé╠âtâ@âCâïé¬ë║é╔ò\Äªé│éÛé─éóéÚâtâHâïâ_ê╚èOé╠ÅÛÅèé╔éáéÚÅÛìçé═üAÉ│éÁéóâpâXé­ô³ù═éÀéÚé®üuÄQÅãüvâ{â^âôé­âNâèâbâNéÁé─é¡é¥é│éóüB
PathLabel=âpâX(&P):
FileNotInDir2=âtâ@âCâï %1 é¬ %2 é╔î®é┬é®éÞé▄é╣é±üBÉ│éÁéóâfâBâXâNé­æ}ô³éÀéÚé®üAò╩é╠âtâHâïâ_é­ÄwÆÞéÁé─é¡é¥é│éóüB
SelectDirectoryLabel=Äƒé╠âfâBâXâNé╠éáéÚÅÛÅèé­ÄwÆÞéÁé─é¡é¥é│éóüB

; *** Installation phase messages
SetupAborted=âZâbâgâAâbâvé═è«ù╣éÁé─éóé▄é╣é±üB%n%nûÔæÞé­ë­îêéÁé─é®éþüAéÓéñêÛôxâZâbâgâAâbâvé­Ä└ìséÁé─é¡é¥é│éóüB
EntryAbortRetryIgnore=éÓéñêÛôxéÔéÞé╚é¿éÀé╔é═üuì─ÄÄìsüvüAâGâëü[é­û│ÄïéÁé─æ▒ìséÀéÚé╔é═üuû│ÄïüvüAâCâôâXâgü[âïé­ÆåÄ~éÀéÚé╔é═üuÆåÄ~üvé­âNâèâbâNéÁé─é¡é¥é│éóüB

; *** Installation status messages
StatusCreateDirs=âtâHâïâ_é­ìýÉ¼éÁé─éóé▄éÀ...
StatusExtractFiles=âtâ@âCâïé­ôWèJéÁé─éóé▄éÀ...
StatusCreateIcons=âVâçü|âgâJâbâgé­ìýÉ¼éÁé─éóé▄éÀ...
StatusCreateIniEntries=INIâtâ@âCâïé­É¦ÆÞéÁé─éóé▄éÀ...
StatusCreateRegistryEntries=âîâWâXâgâèé­É¦ÆÞéÁé─éóé▄éÀ...
StatusRegisterFiles=âtâ@âCâïé­ôoÿ^éÁé─éóé▄éÀ...
StatusSavingUninstall=âAâôâCâôâXâgü[âïÅ¯ò±é­ò█æÂéÁé─éóé▄éÀ...
StatusRunProgram=âCâôâXâgü[âïé­è«ù╣éÁé─éóé▄éÀ...
StatusRollback=ò¤ìXé­î│é╔û▀éÁé─éóé▄éÀ...

; *** Misc. errors
ErrorInternal2=ôÓòöâGâëü[: %1
ErrorFunctionFailedNoCode=%1 âGâëü[
ErrorFunctionFailed=%1 âGâëü[: âRü[âh %2
ErrorFunctionFailedWithMessage=%1 âGâëü[: âRü[âh %2.%n%3
ErrorExecutingProgram=âtâ@âCâïÄ└ìsâGâëü[:%n%1

; *** Registry errors
ErrorRegOpenKey=âîâWâXâgâèâLü[âIü[âvâôâGâëü[:%n%1\%2
ErrorRegCreateKey=âîâWâXâgâèâLü[ìýÉ¼âGâëü[:%n%1\%2
ErrorRegWriteKey=âîâWâXâgâèâLü[Åæé½ì×é¦âGâëü[:%n%1\%2

; *** INI errors
ErrorIniEntry=INIâtâ@âCâïâGâôâgâèìýÉ¼âGâëü[: âtâ@âCâï %1

; *** File copying errors
FileAbortRetryIgnore=éÓéñêÛôxéÔéÞé╚é¿éÀé╔é═üuì─ÄÄìsüvüAé▒é╠âtâ@âCâïé­âXâLâbâvéÁé─æ▒ìséÀéÚé╔é═üuû│ÄïüvüiÉäÅºé│éÛé▄é╣é±üjüAâCâôâXâgü[âïé­ÆåÄ~éÀéÚé╔é═üuÆåÄ~üvé­âNâèâbâNéÁé─é¡é¥é│éóüB
FileAbortRetryIgnore2=éÓéñêÛôxéÔéÞé╚é¿éÀé╔é═üuì─ÄÄìsüvüAé▒é╠âtâ@âCâïé­âXâLâbâvéÁé─æ▒ìséÀéÚé╔é═üuû│ÄïüvüiÉäÅºé│éÛé▄é╣é±üjüAâCâôâXâgü[âïé­ÆåÄ~éÀéÚé╔é═üuÆåÄ~üvé­âNâèâbâNéÁé─é¡é¥é│éóüB
SourceIsCorrupted=âRâsü[î│é╠âtâ@âCâïé¬ë¾éÛé─éóé▄éÀüB
SourceDoesntExist=âRâsü[î│é╠âtâ@âCâï %1 é¬î®é┬é®éÞé▄é╣é±üB
ExistingFileReadOnly=è¨æÂé╠âtâ@âCâïé═ôÃé¦ÄµéÞÉÛùpé┼éÀüB%n%nôÃé¦ÄµéÞÉÛùpæ«É½é­ë­Å£éÁé─éÓéñêÛôxéÔéÞé╚é¿éÀé╔é═üuì─ÄÄìsüvüAé▒é╠âtâ@âCâïé­âXâLâbâvéÁé─æ▒ìséÀéÚé╔é═üuû│ÄïüvüAâCâôâXâgü[âïé­ÆåÄ~éÀéÚé╔é═üuÆåÄ~üvé­âNâèâbâNéÁé─é¡é¥é│éóüB
ErrorReadingExistingDest=è¨æÂé╠âtâ@âCâïé­ôÃé¦ì×é¦Æåé╔âGâëü[é¬ö¡ÉÂéÁé▄éÁé¢üB:
FileExists=âtâ@âCâïé═è¨é╔æÂì¦éÁé▄éÀüB%n%nÅÒÅæé½éÁé▄éÀé®üH
ExistingFileNewer=âCâôâXâgü[âïéÁéµéñéãéÁé─éóéÚâtâ@âCâïéµéÞéÓÉVéÁéóâtâ@âCâïé¬æÂì¦éÁé▄éÀüBè¨æÂé╠âtâ@âCâïé­ÄcéÀé▒éãé­é¿Åºé▀éÁé▄éÀüB%n%nè¨æÂé╠âtâ@âCâïé­ÄcéÁé▄éÀé®üB
ErrorChangingAttr=è¨æÂâtâ@âCâïé╠æ«É½é­ò¤ìXÆåé╔âGâëü[é¬ö¡ÉÂéÁé▄éÁé¢üB:
ErrorCreatingTemp=âRâsü[Éµé╠âtâHâïâ_é╔âtâ@âCâïé­ìýÉ¼Æåé╔âGâëü[é¬ö¡ÉÂéÁé▄éÁé¢üB:
ErrorReadingSource=âRâsü[î│é╠âtâ@âCâïé­ôÃé¦ì×é¦Æåé╔âGâëü[é¬ö¡ÉÂéÁé▄éÁé¢üB:
ErrorCopying=âtâ@âCâïé­âRâsü[Æåé╔âGâëü[é¬ö¡ÉÂéÁé▄éÁé¢üB:
ErrorReplacingExistingFile=è¨æÂâtâ@âCâïé­Æué½èÀéªÆåé╔âGâëü[é¬ö¡ÉÂéÁé▄éÁé¢üB:
ErrorRestartReplace=Æué½èÀéªì─èJÆåé╔âGâëü[é¬ö¡ÉÂéÁé▄éÁé¢üB:
ErrorRenamingTemp=âRâsü[ÉµâtâHâïâ_é╠âtâ@âCâïû╝é­ò¤ìXÆåé╔âGâëü[é¬ö¡ÉÂéÁé▄éÁé¢üB:
ErrorRegisterServer=DLL/OCXé╠ôoÿ^é╔Ä©öséÁé▄éÁé¢üB: %1
ErrorRegSvr32Failed=RegSvr32é═âGâëü[âRü[âh %1 é╔éµéÞÄ©öséÁé▄éÁé¢üB
ErrorRegisterTypeLib=â^âCâvâëâCâuâëâèéÍé╠ôoÿ^é╔Ä©öséÁé▄éÁé¢üB: %1

; *** Post-installation errors
ErrorOpeningReadme=READMEâtâ@âCâïé╠âIü[âvâôé╔Ä©öséÁé▄éÁé¢üB
ErrorRestartingComputer=âRâôâsâàü[â^é╠ì─ïNô«é╔Ä©öséÁé▄éÁé¢üBÄÞô«é┼ì─ïNô«éÁé─é¡é¥é│éóüB

; *** Uninstaller messages
UninstallNotFound=âtâ@âCâï %1 é¬î®é┬é®éÞé▄é╣é±üBâAâôâCâôâXâgü[âïé­Ä└ìsé┼é½é▄é╣é±üB
UninstallOpenError=âtâ@âCâï %1 é­èJé»éÚé▒éãé¬é┼é½é▄é╣é±üBâAâôâCâôâXâgü[âïé­Ä└ìsé┼é½é▄é╣é±üB
UninstallUnsupportedVer=âAâôâCâôâXâgü[âïâìâOâtâ@âCâï %1 é═üAé▒é╠âoü[âWâçâôé╠âAâôâCâôâXâgü[âïâvâìâOâëâÇé¬öFÄ»é┼é½é╚éóî`Ä«é┼éÀüBâAâôâCâôâXâgü[âïé­Ä└ìsé┼é½é▄é╣é±üB
UninstallUnknownEntry=âAâôâCâôâXâgü[âïâìâOé╔òsû¥é╠âGâôâgâè %1 é¬î®é┬é®éÞé▄éÁé¢üB
ConfirmUninstall=%1 éãé╗é╠èÍÿAâRâôâ|ü[âlâôâgé­éÀéÎé─ìÝÅ£éÁé▄éÀüBéµéÙéÁéóé┼éÀé®üH
UninstallOnlyOnWin64=é▒é╠âvâìâOâëâÇé═64-bitö┼WindowsÅÒé┼é╠é¦âAâôâCâôâXâgü[âïé┼é½ë┬ö\é┼éÀüB
OnlyAdminCanUninstall=âAâôâCâôâXâgü[âïéÀéÚé¢é▀é╔é═èÃùØÄÊîáî└é¬òKùvé┼éÀüB
UninstallStatusLabel=é▓Ägùpé╠âRâôâsâàü[â^é®éþ %1 é­ìÝÅ£éÁé─éóé▄éÀüBéÁé╬éþé¡é¿æÊé┐é¡é¥é│éóüB
UninstalledAll=%1 é═é▓Ägùpé╠âRâôâsâàü[â^é®éþÉ│ÅÝé╔ìÝÅ£é│éÛé▄éÁé¢üB
UninstalledMost=%1 é╠âAâôâCâôâXâgü[âïé¬è«ù╣éÁé▄éÁé¢üB%n%néóé¡é┬é®é╠ìÇû┌é¬ìÝÅ£é┼é½é▄é╣é±é┼éÁé¢üBÄÞô«é┼ìÝÅ£éÁé─é¡é¥é│éóüB
UninstalledAndNeedsRestart=%1 é╠ìÝÅ£é­è«ù╣éÀéÚé¢é▀é╔é═üAâRâôâsâàü[â^é­ì─ïNô«éÀéÚòKùvé¬éáéÞé▄éÀüBéÀé«é╔ì─ïNô«éÁé▄éÀé®üH
UninstallDataCorrupted=âtâ@âCâï "%1" é¬ë¾éÛé─éóé▄éÀüBâAâôâCâôâXâgü[âïé­Ä└ìsé┼é½é▄é╣é±üB

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=ïñùLâtâ@âCâïé╠ìÝÅ£
ConfirmDeleteSharedFile2=âVâXâeâÇÅÒé┼üAÄƒé╠ïñùLâtâ@âCâïé═éÃé╠âvâìâOâëâÇé┼éÓÄgùpé│éÛé─éóé▄é╣é±üBé▒é╠ïñùLâtâ@âCâïé­ìÝÅ£éÁé▄éÀé®üH%n%næ╝é╠âvâìâOâëâÇé¬é▄é¥é▒é╠âtâ@âCâïé­ÄgùpéÀéÚÅÛìçüAìÝÅ£éÀéÚéãâvâìâOâëâÇé¬ô«ìýéÁé╚é¡é╚éÚï░éÛé¬éáéÞé▄éÀüBéáé▄éÞèmÄ└é┼é╚éóÅÛìçé═üuéóéóéªüvé­æIæ­éÁé─é¡é¥é│éóüBâVâXâeâÇé╔âtâ@âCâïé­ÄcéÁé─éÓûÔæÞé­ê°é½ïNé▒éÀé▒éãé═éáéÞé▄é╣é±üB
SharedFileNameLabel=âtâ@âCâïû╝:
SharedFileLocationLabel=ÅÛÅè:
WizardUninstalling=âAâôâCâôâXâgü[âïÅ¾ïÁ
StatusUninstalling=%1 é­âAâôâCâôâXâgü[âïéÁé─éóé▄éÀ...

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 âoü[âWâçâô %2
AdditionalIcons=âAâCâRâôé­ÆÃë┴éÀéÚ:
CreateDesktopIcon=âfâXâNâgâbâvÅÒé╔âAâCâRâôé­ìýÉ¼éÀéÚ(&d)
CreateQuickLaunchIcon=&Quick Launch âAâCâRâôé­ìýÉ¼éÀéÚ
ProgramOnTheWeb=%1 on the Web
UninstallProgram=%1 é­âAâôâCâôâXâgü[âïéÀéÚ
LaunchProgram=%1 é­Ä└ìséÀéÚ
AssocFileExtension=%2 âtâ@âCâïègÆúé╔ %1é­èÍÿAòté»é▄éÀüB
AssocingFileExtension=%2 é╔ %1é­èÍÿAòté»é▄éÀüB
