@echo off
rem 
rem ping�����s����B
rem 

rem OK�ƌ��Ȃ�������
set OK_STR=(0%% �̑���)

rem ping�R�}���h�p�X
set PING_CMD=ping

rem ping�R�}���h�I�v�V����
rem -n: �񐔁A-w �^�C���A�E�g[ms]
set PING_OPT=-n 1 
set PING_OPT=%PING_OPT% -w 1000
set DEST=%1

rem �����`�F�b�N
if "%DEST%"=="" (
	echo ���M����w�肵�Ă��������B 1>&2
	exit /b 1
)

rem ping���s
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
