@echo off
title fakeSMTP
rem ========================================
rem fakeSMTP.bat - fakeSMTP�N�����b�p�[
rem ========================================

rem �J�����g�t�H���_���A���̃o�b�`������ꏊ�ɕύX
cd /d "%~dp0"

rem ��{�萔--------------------------------

rem �g�p����fakeSMTP
SET TARGET=fakeSMTP-2.0.jar

rem fakeSMTP�̎��s�Ɏg�p����JDK/JRE(1.6�ȏオ�K�v)
SET JAVA_HOME=C:\Program Files\Java\jdk1.8.0_171
SET JVM=%JAVA_HOME%\bin\java.exe

rem ��M�������[���̕ۑ���
rem ���Y�t�H���_�����݂��Ȃ��ꍇ�AfakeSMTP���쐬
SET MAIL_FOLDER=.\mail

rem fakeSMTP�I�v�V����(v2.0)----------------
rem (�ڍ�: http://nilhcem.com/FakeSMTP/)

SET FS_OPT=

rem fakeSMTP�I�v�V����: �N�����SMTP�T�[�r�X���J�n
SET FS_OPT=%FS_OPT% -s

rem fakeSMTP�I�v�V����: ���b�X���|�[�g
rem ��25�ԃ|�[�g���g���ꍇ�͊Ǘ��Ҍ����Ŏ��s���K�v
SET FS_OPT=%FS_OPT% -p 25

rem fakeSMTP�I�v�V����: ���[���ۑ���(�ۑ����Ȃ��ꍇ��-m)
rem SET FS_OPT=%FS_OPT% -m
SET FS_OPT=%FS_OPT% -o "%MAIL_FOLDER%"

rem �o�C���h����C���^�[�t�F�C�X���w�肷��-a�I�v�V������
rem -b, -s�I�v�V�����ƕ����Ďw�肷��K�v������B


rem ���s------------------------------------

echo fakeSMTP���N�����܂�.....
echo (�I������ꍇ��GUI����邩�A���̃o�b�`��Ctrl+C�ŏI�����Ă��������B)

SET RUN_CMD="%JVM%" -jar "%TARGET%" %FS_OPT%
rem echo �R�}���h: %RUN_CMD%
%RUN_CMD%

rem EOF
