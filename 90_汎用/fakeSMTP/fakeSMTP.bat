@echo off
title fakeSMTP
rem ========================================
rem fakeSMTP.bat - fakeSMTP起動ラッパー
rem ========================================

rem カレントフォルダを、このバッチがある場所に変更
cd /d "%~dp0"

rem 基本定数--------------------------------

rem 使用するfakeSMTP
SET TARGET=fakeSMTP-2.0.jar

rem fakeSMTPの実行に使用するJDK/JRE(1.6以上が必要)
SET JAVA_HOME=C:\Program Files\Java\jdk1.8.0_171
SET JVM=%JAVA_HOME%\bin\java.exe

rem 受信したメールの保存先
rem 当該フォルダが存在しない場合、fakeSMTPが作成
SET MAIL_FOLDER=.\mail

rem fakeSMTPオプション(v2.0)----------------
rem (詳細: http://nilhcem.com/FakeSMTP/)

SET FS_OPT=

rem fakeSMTPオプション: 起動後にSMTPサービスを開始
SET FS_OPT=%FS_OPT% -s

rem fakeSMTPオプション: リッスンポート
rem ※25番ポートを使う場合は管理者権限で実行が必要
SET FS_OPT=%FS_OPT% -p 25

rem fakeSMTPオプション: メール保存先(保存しない場合は-m)
rem SET FS_OPT=%FS_OPT% -m
SET FS_OPT=%FS_OPT% -o "%MAIL_FOLDER%"

rem バインドするインターフェイスを指定する-aオプションは
rem -b, -sオプションと併せて指定する必要がある。


rem 実行------------------------------------

echo fakeSMTPを起動します.....
echo (終了する場合はGUIを閉じるか、このバッチをCtrl+Cで終了してください。)

SET RUN_CMD="%JVM%" -jar "%TARGET%" %FS_OPT%
rem echo コマンド: %RUN_CMD%
%RUN_CMD%

rem EOF
