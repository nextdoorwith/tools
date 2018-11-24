'
' mask_text.vbs: �e�L�X�g�t�@�C���̓��e���}�X�N����
'
' ���s���@: cscript.exe /nologo mask_text.vbs
'
Option Explicit

'���o�̓t�@�C�� ==========
'�}�X�N�Ώۂ̃t�@�C�����`���Ă��������B
Const INPUT_FILE="test.txt"
'�}�X�N�������e���o�͂���t�@�C�����`���Ă��������B
Const OUTPUT_FILE="test_masked.txt"

'�����p�萔 ==========
Const ForReading = 1

'�}�X�N�p�̐��K�\���̒�` ==========
'���[���A�h���X�I�ȃ��[�h(��ʓI�ȃ��[���A�h���X�`�F�b�N�p�̂��̂ł͂Ȃ�)
Dim oReMailAddr
Set oReMailAddr = CreateRegExp( _
    "\b[A-Z0-9._%+-]+@[A-Z0-9.-]+[A-Z]{2,4}\b", True, True)
'�K�v�ł���Έȍ~�ɒǉ�(���L�͒ǉ���)
'Dim oReTest
'Set oReTest = CreateRegExp("regexp", True, True)

WScript.echo "start"

'���̓t�@�C���̓��e��u�����ďo�� ==========
Dim oFSO, oInStream, oOutStream
Set oFSO = CreateObject("Scripting.FileSystemObject")
Set oInStream = oFSO.OpenTextFile(INPUT_FILE, ForReading)
Set oOutStream = oFSO.CreateTextFile(OUTPUT_FILE, True)
Dim sLine, sRepLine
Do Until oInStream.AtEndOfStream

    '�s�ǎ�
    sLine = oInStream.ReadLine

    '�u��
    sRepLine = oReMailAddr.Replace(sLine, "***@***")
    'sRepLine = oReTest.Replace(sLine, "***")

    '�f�o�b�O
    If sLine <> sRepLine Then
        WScript.Echo "< " & sLine
        WScript.Echo "> " & sRepLine
        WScript.Echo "---"
    End If

    '�o��
    oOutStream.WriteLine sRepLine
Loop
oInStream.Close
oOutStream.Close

WScript.echo "end"

'�}�X�N�p�̐��K�\���I�u�W�F�N�g�𐶐�����B
Function CreateRegExp(sExp, bGlobal, bIgnoreCase)
    Set CreateRegExp = CreateObject("VBScript.RegExp")
    With CreateRegExp
        .Pattern = sExp
        .Global = bGlobal
        .IgnoreCase = bIgnoreCase
    End With
End Function
