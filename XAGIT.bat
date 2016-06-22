rem copy soft mods
robocopy /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\DAIL\/" /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\DAIL\/" /S /XO /xf *.arz *.arc *.map *.7z *.debug *.good *.DAIL
robocopy /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\DAIL - RIFT\/" /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\DAIL - RIFT\/" /S /XO /xf *.arz *.arc *.map *.7z *.debug *.good *.DAIL
robocopy /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\DAIL - Survival\/" /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\DAIL - Survival\/" /S /XO /xf *.arz *.arc *.map *.7z *.debug *.good *.DAIL

rem copy hard mods
robocopy /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\DAILmain - S\/" /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\DAILmain - S\/" /S /XO /xf *.arz *.arc *.7z
robocopy /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\DAILmain - A\/" /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\DAILmain - A\/" /S /XO /xf *.arz *.arc *.7z
robocopy /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\DAILmain - B\/" /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\DAILmain - B\/" /S /XO /xf *.arz *.arc *.7z
robocopy /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\DAILmain - AB\/" /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\DAILmain - AB\/" /S /XO /xf *.arz *.arc *.7z
robocopy /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\DAILmain - NG\/" /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\DAILmain - NG\/" /S /XO /xf *.arz *.arc *.7z
robocopy /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\DAILmain - A NG\/" /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\DAILmain - A NG\/" /S /XO /xf *.arz *.arc *.7z

rem copy hard mod backup for "uninstalling"
rem removed the line because .arz files are >50 megs and github was complaining.. just in case the .arz files get even larger.....
rem robocopy /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\VanillaBak\/" /"\localhost\f\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\VanillaBak\/" /S /XO /xf *.arz *.arc
copy "f:\SHTEEM\steamapps\common\Grim Dawn\mods\VanillaBak\VanillaBak.7z" "f:\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\VanillaBak\" /y

rem copy individual files
copy "f:\SHTEEM\steamapps\common\Grim Dawn\mods\*.nsi" "f:\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\" /y
copy "f:\SHTEEM\steamapps\common\Grim Dawn\mods\*.bat" "f:\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\" /y
copy "f:\SHTEEM\steamapps\common\Grim Dawn\mods\README" "f:\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\" /y
copy "f:\SHTEEM\steamapps\common\Grim Dawn\mods\changelog.txt" "f:\SHTEEM\steamapps\common\Grim Dawn\mods\XADAIL\" /y
pause