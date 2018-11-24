@echo off
rem 
rem pingを実行する。
rem 

rem OKと見なす文字列
set OK_STR=(0%% の損失)

rem pingコマンドパス
set PING_CMD=ping

rem pingコマンドオプション
rem -n: 回数、-w タイムアウト[ms]
set PING_OPT=-n 1 
set PING_OPT=%PING_OPT% -w 1000
set DEST=%1

rem 引数チェック
if "%DEST%"=="" (
	echo 送信先を指定してください。 1>&2
	exit /b 1
)

rem ping実行
%PING_CMD% %PING_OPT% %DEST% | find "%OK_STR%" > nul 2>&1
if %ERRORLEVEL% == 0 (
	set RESULT=0
	set RESULT_DISP=OK
) else (
	set RESULT=1
	set RESULT_DISP=**NG**
)

echo %DEST%: %RESULT_DISP%
exit /b %RESULT%
