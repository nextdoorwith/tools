@echo off
rem 
rem �����̃T�[�o��ping�𑗐M����B
rem ���s���ʂ����O�t�@�C���ɏo�͂���B
rem 
rem �y�����z
rem �E�l�b�g���[�N�p�X(UNC)������s�ł���悤��΃p�X�w��ɂ��Ă��܂��B
rem   (�uUNC �p�X�̓T�|�[�g����܂���`�v�͖������Ė��Ȃ�)
rem �Eping���M�Ώۂ��`����hosts.txt�t�@�C���𓯂��t�H���_�z�u���Ă��������B
rem 
set MYNAME=%~n0
set BASE_DIR=%~dp0
set DEST_HOST_FILE=%BASE_DIR%hosts.txt
set PING_CMD=%BASE_DIR%ping_cmd.bat
set LOG_DIR=%BASE_DIR%log\
set LOG_FILE=%LOG_DIR%%MYNAME%_%COMPUTERNAME%.log

rem ���O�t�H���_�쐬
mkdir "%LOG_DIR%" > nul 2>&1

rem �J�n���b�Z�[�W�o��
echo ����z�X�g�t�@�C�� : %DEST_HOST_FILE%
echo ���s���ʂ̏o�͐�   : %LOG_FILE%

rem �J�n���b�Z�[�W�����O�o��
echo [%time%]: START > "%LOG_FILE%"
echo.>> "%LOG_FILE%"

rem ���̓t�@�C���ɒ�`���ꂽ�z�X�g�ɑ΂���ping�����s
for /F %%f in ('type "%DEST_HOST_FILE%"') do (
	call "%PING_CMD%" %%f >> "%LOG_FILE%" 2>&1
)

rem �I�����b�Z�[�W�����O�o��
echo.>> "%LOG_FILE%"
echo [%time%]: END >> "%LOG_FILE%"

pause
