; Script generated by the HM NIS Edit Script Wizard.
; HM NIS Edit Wizard helper defines
!define Var0 $R0
!define Var1 $R1
!define Var2 $R2
!define Var3 $R3
!define Var4 $R4
!define Var5 $R5
!define Var6 $R6
!define Var7 $R7
!define Var8 $R8

!macro StrReplaceV4 Var Replace With In
 Push `${Replace}`
 Push `${With}`
 Push `${In}`
  Call StrReplaceV4
 Pop `${Var}`
!macroend
!define StrReplaceV4 `!insertmacro StrReplaceV4`

Function StrReplaceV4
Exch ${Var0} #in
Exch 1
Exch ${Var1} #with
Exch 2
Exch ${Var2} #replace
Push ${Var3}
Push ${Var4}
Push ${Var5}
Push ${Var6}
Push ${Var7}
Push ${Var8}

 StrCpy ${Var3} -1
 StrLen ${Var5} ${Var0}
 StrLen ${Var6} ${Var1}
 StrLen ${Var7} ${Var2}
 Loop:
  IntOp ${Var3} ${Var3} + 1
  StrCpy ${Var4} ${Var0} ${Var7} ${Var3}
  StrCmp ${Var3} ${Var5} End
  StrCmp ${Var4} ${Var2} 0 Loop

   StrCpy ${Var4} ${Var0} ${Var3}
   IntOp ${Var8} ${Var3} + ${Var7}
   StrCpy ${Var8} ${Var0} "" ${Var8}
   StrCpy ${Var0} ${Var4}${Var1}${Var8}
   IntOp ${Var3} ${Var3} + ${Var6}
   IntOp ${Var3} ${Var3} - 1
   IntOp ${Var5} ${Var5} - ${Var7}
   IntOp ${Var5} ${Var5} + ${Var6}

 Goto Loop
 End:

Pop ${Var8}
Pop ${Var7}
Pop ${Var6}
Pop ${Var5}
Pop ${Var4}
Pop ${Var3}
Pop ${Var2}
Exch
Pop ${Var1}
Exch ${Var0} #out
FunctionEnd

!undef Var8
!undef Var7
!undef Var6
!undef Var5
!undef Var4
!undef Var3
!undef Var2
!undef Var1
!undef Var0

!define PRODUCT_NAME "DAIL Installer"
!define PRODUCT_VERSION "0035"
!define PRODUCT_PUBLISHER "Davoodinator"
!define PRODUCT_WEB_SITE "www.twitch.tv/davoodinator"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE ".\DAILL.txt"
; Components page
!insertmacro MUI_PAGE_COMPONENTS
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!insertmacro MUI_PAGE_FINISH

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "DAIL 0035.exe"
;InstallDir "$PROGRAMFILES\steam\steamapps\common\grim dawn"

LangString SteamNotInstalled ${LANG_ENGLISH} "Steam is not installed!$\r$\nYou will have to figure out the Folder yourself!"

DirText "CHOOSE THE PATH TO THE GRIM DAWN INSTALLATION DIRECTORY"
ShowInstDetails show

;hard install stuff that can't be skipped
Section "Common Files" SEC99
  SetOutPath "$INSTDIR\mods\DAIL\database"
  SetOverwrite on
  File /nonfatal /a ".\DAIL\database\"

  SetOutPath "$INSTDIR\resources"
  SetOverwrite on
  File /oname=Text_En.arc ".\DAILmain - S\resources\Text_En.arc"

  SetOutPath "$INSTDIR\mods\DAIL\resources"
  SetOverwrite on
  File /nonfatal /a ".\DAIL\resources\"

  SetOutPath "$INSTDIR\mods\DAIL - RIFT\database"
  SetOverwrite on
  File /nonfatal /a ".\DAIL - RIFT\database\"
  SetOutPath "$INSTDIR\mods\DAIL - RIFT\resources"
  SetOverwrite on
  File /nonfatal /a ".\DAIL - RIFT\resources\"
  SetOutPath "$INSTDIR\mods\DAIL - Survival\database"
  SetOverwrite on
  File /nonfatal /a ".\DAIL - Survival\database\"
  SetOutPath "$INSTDIR\mods\DAIL - Survival\resources"
  SetOverwrite on
  File /nonfatal /a ".\DAIL - Survival\resources\"

  SetOutPath "$INSTDIR\resources\"
  SetOverwrite on
  File /oname=Text_En.arc ".\DAILmain - S\Resources\Text_En.arc"

SectionEnd

;SectionGroup "DAIL INSTALLATION OPTIONS"
Section "(S)" SEC01
;  the /r is recursive - we can contemplate that for a full "source" install option.
;  File /nonfatal /a /r ".\DAIL\database\"
  SetOutPath "$INSTDIR\database"
  SetOverwrite on
  File /oname=database.arz ".\DAILmain - S\database\DAILmain - S.arz"

  SetOutPath "$INSTDIR\mods\DAIL\resources"
  SetOverwrite on
  File ".\DAILmain - S\resources\scripts.arc"

;  SetOutPath "$INSTDIR\resources\"
; SetOverwrite on
; File /oname=Text_En.arc ".\DAILficulties\Text_En.arc.S"
SectionEnd

Section /o "(A)" SEC02
  SetOutPath "$INSTDIR\database"
  SetOverwrite on
  File /oname=database.arz ".\DAILmain - A\database\DAILmain - A.arz"

  SetOutPath "$INSTDIR\mods\DAIL\resources"
  SetOverwrite on
  File ".\DAILmain - S\resources\scripts.arc"

;  SetOutPath "$INSTDIR\resources\"
;  SetOverwrite on
;  File /oname=Text_En.arc ".\DAILficulties\Text_En.arc.A"
SectionEnd

Section /o "(NG)" SEC03
  SetOutPath "$INSTDIR\database"
  SetOverwrite on
  File /oname=database.arz ".\DAILmain - NG\database\DAILmain - NG.arz"

;  SetOutPath "$INSTDIR\mods\DAIL\resources"
;  SetOverwrite on
;  File ".\DAILmain - S\resources\scripts.arc"

;  SetOutPath "$INSTDIR\resources\"
;  SetOverwrite on
;  File /oname=Text_En.arc ".\DAILficulties\Text_En.arc.NG"
SectionEnd

Section /o "(ANG)" SEC04
  SetOutPath "$INSTDIR\database"
  SetOverwrite on
  File /oname=database.arz ".\DAILmain - A NG\database\DAILmain - A NG.arz"

;  File /nonfatal /a ".\DAIL - Survival\resources\"
;  SetOverwrite on
;  File ".\DAILmain - S\resources\scripts.arc"

;  SetOutPath "$INSTDIR\resources\"
;  SetOverwrite on
;  File /oname=Text_En.arc ".\DAILficulties\Text_En.arc.ANG"
SectionEnd

Section /o "(B)" SEC05
  SetOutPath "$INSTDIR\database"
  SetOverwrite on
  File /oname=database.arz ".\DAILmain - B\database\DAILmain - B.arz"

  SetOutPath "$INSTDIR\mods\DAIL\resources"
  SetOverwrite on
  File ".\DAILmain - S\resources\scripts.arc"

;  SetOutPath "$INSTDIR\resources\"
;  SetOverwrite on
;  File /oname=Text_En.arc ".\DAILficulties\Text_En.arc.B"
SectionEnd

Section /o "(AB)" SEC06
  SetOutPath "$INSTDIR\database"
  SetOverwrite on
  File /oname=database.arz ".\DAILmain - AB\database\DAILmain - AB.arz"

  SetOutPath "$INSTDIR\mods\DAIL\resources"
  SetOverwrite on
  File ".\DAILmain - S\resources\scripts.arc"

;  SetOutPath "$INSTDIR\resources\"
;  SetOverwrite on
;  File /oname=Text_En.arc ".\DAILficulties\Text_En.arc.AB"
SectionEnd

Section /o "UNINSTALL DAIL DB/TXT" SEC98
  SetOutPath "$INSTDIR\database"
  SetOverwrite on
  File /oname=database.arz ".\VanillaBak\database.arz.1004"

  SetOutPath "$INSTDIR\resources\"
  SetOverwrite on
  File /oname=Text_En.arc ".\VanillaBak\text_en.arc.1004"
SectionEnd

/*
Section /o "FULL+SOURCE" SEC06
  SetOutPath "$INSTDIR\database"
  SetOverwrite on
  File ".\A\database.arz"
  File /nonfatal /a /r ".\DAIL\"
  SetOutPath "$INSTDIR\mods\DAIL - RIFT"
  SetOverwrite on
  File /nonfatal /a /r ".\DAIL - RIFT\"
  SetOutPath "$INSTDIR\mods\DAIL - Survival"
  SetOverwrite on
  File /nonfatal /a /r ".\DAIL - Survival\"
SectionEnd
*/
;SectionGroupEnd
Section -Post
SectionEnd

Function .onInit
StrCpy $1 ${SEC01}
ReadRegStr $R0 HKCU "Software\Valve\Steam" "SteamExe"
${StrReplaceV4} $R0 "/" "\" "$R0"
${StrReplaceV4} $R0 "steam.exe" "" "$R0"
;${StrReplaceV4} $R0 "\\" "\" "$R0"
StrCpy $INSTDIR "$R0SteamApps\common\grim dawn"
FunctionEnd

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
!insertmacro MUI_DESCRIPTION_TEXT ${SEC99} "Required files for all variations"
!insertmacro MUI_FUNCTION_DESCRIPTION_END

Function .onSelChange
!insertmacro StartRadioButtons $1
!insertmacro RadioButton "${SEC01}"
!insertmacro RadioButton "${SEC02}"
!insertmacro RadioButton "${SEC03}"
!insertmacro RadioButton "${SEC04}"
!insertmacro RadioButton "${SEC05}"
!insertmacro RadioButton "${SEC06}"
!insertmacro RadioButton "${SEC98}"
;!insertmacro RadioButton "${SEC06}"
!insertmacro EndRadioButtons
FunctionEnd

; Section descriptions
;!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
;  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "ONLY CHOOSE ONE OF THESE NOT ALL OF THEM"
;  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "ONLY CHOOSE ONE OF THESE NOT ALL OF THEM"
;  !insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "ONLY CHOOSE ONE OF THESE NOT ALL OF THEM"
;  !insertmacro MUI_DESCRIPTION_TEXT ${SEC04} "ONLY CHOOSE ONE OF THESE NOT ALL OF THEM"
;  !insertmacro MUI_DESCRIPTION_TEXT ${SEC05} "ONLY CHOOSE ONE OF THESE NOT ALL OF THEM"
;!insertmacro MUI_FUNCTION_DESCRIPTION_END