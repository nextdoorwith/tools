'
' mask_text.vbs: テキストファイルの内容をマスクする
'
' 実行方法: cscript.exe /nologo mask_text.vbs
'
Option Explicit

'入出力ファイル ==========
'マスク対象のファイルを定義してください。
Const INPUT_FILE="test.txt"
'マスクした内容を出力するファイルを定義してください。
Const OUTPUT_FILE="test_masked.txt"

'処理用定数 ==========
Const ForReading = 1

'マスク用の正規表現の定義 ==========
'メールアドレス的なワード(一般的なメールアドレスチェック用のものではない)
Dim oReMailAddr
Set oReMailAddr = CreateRegExp( _
    "\b[A-Z0-9._%+-]+@[A-Z0-9.-]+[A-Z]{2,4}\b", True, True)
'必要であれば以降に追加(下記は追加例)
'Dim oReTest
'Set oReTest = CreateRegExp("regexp", True, True)

WScript.echo "start"

'入力ファイルの内容を置換して出力 ==========
Dim oFSO, oInStream, oOutStream
Set oFSO = CreateObject("Scripting.FileSystemObject")
Set oInStream = oFSO.OpenTextFile(INPUT_FILE, ForReading)
Set oOutStream = oFSO.CreateTextFile(OUTPUT_FILE, True)
Dim sLine, sRepLine
Do Until oInStream.AtEndOfStream

    '行読取
    sLine = oInStream.ReadLine

    '置換
    sRepLine = oReMailAddr.Replace(sLine, "***@***")
    'sRepLine = oReTest.Replace(sLine, "***")

    'デバッグ
    If sLine <> sRepLine Then
        WScript.Echo "< " & sLine
        WScript.Echo "> " & sRepLine
        WScript.Echo "---"
    End If

    '出力
    oOutStream.WriteLine sRepLine
Loop
oInStream.Close
oOutStream.Close

WScript.echo "end"

'マスク用の正規表現オブジェクトを生成する。
Function CreateRegExp(sExp, bGlobal, bIgnoreCase)
    Set CreateRegExp = CreateObject("VBScript.RegExp")
    With CreateRegExp
        .Pattern = sExp
        .Global = bGlobal
        .IgnoreCase = bIgnoreCase
    End With
End Function
