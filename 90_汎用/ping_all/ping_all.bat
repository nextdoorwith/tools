@echo off
rem 
rem 複数のサーバにpingを送信する。
rem 実行結果をログファイルに出力する。
rem 
rem 【説明】
rem ・ネットワークパス(UNC)から実行できるよう絶対パス指定にしています。
rem   (「UNC パスはサポートされません～」は無視して問題なし)
rem ・ping送信対象を定義したhosts.txtファイルを同じフォルダ配置してください。
rem 
set MYNAME=%~n0
set BASE_DIR=%~dp0
set DEST_HOST_FILE=%BASE_DIR%hosts.txt
set PING_CMD=%BASE_DIR%ping_cmd.bat
set LOG_DIR=%BASE_DIR%log\
set LOG_FILE=%LOG_DIR%%MYNAME%_%COMPUTERNAME%.log

rem ログフォルダ作成
mkdir "%LOG_DIR%" > nul 2>&1

rem 開始メッセージ出力
echo 宛先ホストファイル : %DEST_HOST_FILE%
echo 実行結果の出力先   : %LOG_FILE%

rem 開始メッセージをログ出力
echo [%time%]: START > "%LOG_FILE%"
echo.>> "%LOG_FILE%"

rem 入力ファイルに定義されたホストに対してpingを実行
for /F %%f in ('type "%DEST_HOST_FILE%"') do (
	call "%PING_CMD%" %%f >> "%LOG_FILE%" 2>&1
)

rem 終了メッセージをログ出力
echo.>> "%LOG_FILE%"
echo [%time%]: END >> "%LOG_FILE%"

pause
