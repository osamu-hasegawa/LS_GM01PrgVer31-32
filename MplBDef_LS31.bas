Attribute VB_Name = "MplBDef"
'*************************************************************************************************************************
'　ＭＰＬ 構造体、関数定義
'*************************************************************************************************************************

'   update 2005.11.06 s.f      data2  &H5 -> &H65
'   update 2005.11.22 s.f      数値のＤＣ化
'   update 2005.11.26 s.f      function　の　型宣言



'**** RESULT 構造体 ****
Type MPL_S_RESULT
   MPL_Result(1 To 4) As Integer
End Type

'**** DATA 構造体 ****
Type MPL_S_DATA
   MPL_Data(1 To 4) As Integer
End Type

'**** 定数定義 ****
Public Const MPL_X As Integer = 0
Public Const MPL_Y As Integer = 1
Public Const MPL_Z As Integer = 2
Public Const MPL_A As Integer = 3
Public Const MPL_B As Integer = 4
Public Const MPL_C As Integer = 5

'**** 関数定義 ****
Declare Function MPL_BOpen Lib "MplB.dll" (ByVal hWnd As Long, ByVal BoardNo As Integer, ByVal Axis As Integer, phDev As Long, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BClose Lib "MplB.dll" (ByVal hDev As Long, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_IWDrive Lib "MplB.dll" (ByVal hDev As Long, ByVal cmd As Integer, psData As MPL_S_DATA, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BWDriveCommand Lib "MplB.dll" (ByVal hDev As Long, pCmd As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BWDriveData1 Lib "MplB.dll" (ByVal hDev As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BWDriveData2 Lib "MplB.dll" (ByVal hDev As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BWDriveData3 Lib "MplB.dll" (ByVal hDev As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BRStatus1 Lib "MplB.dll" (ByVal hDev As Long, pStatus As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BRStatus2 Lib "MplB.dll" (ByVal hDev As Long, pStatus As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BRStatus3 Lib "MplB.dll" (ByVal hDev As Long, pStatus As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BRStatus4 Lib "MplB.dll" (ByVal hDev As Long, pStatus As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BRStatus5 Lib "MplB.dll" (ByVal hDev As Long, pStatus As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_IRDrive Lib "MplB.dll" (ByVal hDev As Long, psData As MPL_S_DATA, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BRDriveData1 Lib "MplB.dll" (ByVal hDev As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BRDriveData2 Lib "MplB.dll" (ByVal hDev As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BRDriveData3 Lib "MplB.dll" (ByVal hDev As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BWaitDriveCommand Lib "MplB.dll" (ByVal hDev As Long, ByVal WaitTime As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BIsWait Lib "MplB.dll" (ByVal hDev As Long, pWait As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BBreakWait Lib "MplB.dll" (ByVal hDev As Long, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_IWCounter Lib "MplB.dll" (ByVal hDev As Long, ByVal cmd As Integer, psData As MPL_S_DATA, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BWCounterCommand Lib "MplB.dll" (ByVal hDev As Long, pCmd As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BWCounterData1 Lib "MplB.dll" (ByVal hDev As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BWCounterData2 Lib "MplB.dll" (ByVal hDev As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BWCounterData3 Lib "MplB.dll" (ByVal hDev As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BPortOpen Lib "MplB.dll" (ByVal hWnd As Long, ByVal BoardNo As Integer, phPort As Long, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BPortClose Lib "MplB.dll" (ByVal hPort As Long, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BPortIn Lib "MplB.dll" (ByVal hPort As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_BPortOut Lib "MplB.dll" (ByVal hPort As Long, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_Inp Lib "MplB.dll" (ByVal BoardNo As Integer, pData As Integer, psResult As MPL_S_RESULT) As Boolean
Declare Function MPL_Outp Lib "MplB.dll" (ByVal BoardNo As Integer, pData As Integer, psResult As MPL_S_RESULT) As Boolean
'
Global Ack As Boolean
Global MplData As MPL_S_DATA
Global MplResult As MPL_S_RESULT
Global hDev As Long
Global Status1 As Integer
Global cmd As Integer
Global Data As Integer
Global StopFlag As Integer
'
Public Sub C870Open()
  If BrdFlg <> "ON" Then Exit Sub
   Ack = MPL_BOpen(MplVbSmp.hWnd, 0, MPL_X, hDev, MplResult)  'デバイスオープン
        'MPL_BOpen(Smp1.hWnd, 0, MPL_X, hDev, MplResult)
End Sub
Public Sub C870Close()
  If BrdFlg <> "ON" Then Exit Sub
  Ack = MPL_BClose(hDev, MplResult)
End Sub
Public Sub C870Reset()
  If BrdFlg <> "ON" Then Exit Sub
  Call MplDataSet(0, MplData)                        'ＡＤＤＲＥＳＳ ＩＮＩＴＡＬＩＺＥ ＣＯＭＭＡＮＤ
  Ack = MPL_BWaitDriveCommand(hDev, 0, MplResult)
  Ack = MPL_IWDrive(hDev, &H3, MplData, MplResult)
  Ack = MPL_BWaitDriveCommand(hDev, 0, MplResult)

  Call MplDataSet(0, MplData)                        'ＣＯＵＮＴＥＲ ＰＲＥＳＥＴ ＣＯＭＭＡＮＤ
  Ack = MPL_IWCounter(hDev, &H0, MplData, MplResult)
End Sub
Public Sub Ccw_Index(Mel As Object)
  If BrdFlg <> "ON" Then Exit Sub
   Mel.Message_Label.Caption = ""
   'Call Btn_Drive_Set
   Ack = MPL_BWaitDriveCommand(hDev, 0, MplResult)
   Call MplDataSet(-240000 * 1, MplData)                  'ＩＮＣＲＥＭＥＮＴＡＬ ＩＮＤＥＸ ＤＲＩＶＥ ＣＯＭＭＡＮＤ
   Ack = MPL_IWDrive(hDev, &H14, MplData, MplResult)
   'Call Ready_Wait
   Drive_Stop_Disp Mel
   'Call Btn_No_Drive_Set
End Sub

Public Sub Cw_Index(Mel As Object)
  If BrdFlg <> "ON" Then Exit Sub
   Mel.Message_Label.Caption = ""
   'Call Btn_Drive_Set
   Ack = MPL_BWaitDriveCommand(hDev, 0, MplResult)
   Call MplDataSet(240000 * 1, MplData)                'ＩＮＣＲＥＭＥＮＴＡＬ ＩＮＤＥＸ ＤＲＩＶＥ ＣＯＭＭＡＮＤ
   Ack = MPL_IWDrive(hDev, &H14, MplData, MplResult)
   'Call Ready_Wait
   Drive_Stop_Disp Mel
   'Call Btn_No_Drive_Set
End Sub

Public Sub Drive_Stop_Disp(Mel As Object)
  If BrdFlg <> "ON" Then Exit Sub
   Ack = MPL_BRStatus1(hDev, Status1, MplResult)
   If (Status1 And &H20) <> 0 Then
      Mel.Message_Label.Caption = "LIMITが入力されました。"
   ElseIf (Status1 And &H80) <> 0 Then
      Mel.Message_Label.Caption = "FS STOPが入力されました。"
   ElseIf (Status1 And &H40) <> 0 Then
      Mel.Message_Label.Caption = "SL STOPが入力されました。"
   Else
      Mel.Message_Label.Caption = "DRIVEが終了しました。"
   End If
End Sub

'*************************************************************
'
' ＭＣＣ０５がＲＥＡＤＹ状態になるまで待つ。
'
'*************************************************************
'
'
Public Sub Ready_Wait()
  If BrdFlg <> "ON" Then Exit Sub
   Do
      DoEvents
      'Ack = MPL_IRDrive(hDev, MplData, MplResult)     '現在位置ＡＤＤＲＥＳＳの表示
      'Mel.Addr_Label.Caption = MplDataGet(MplData)
      Ack = MPL_BRStatus1(hDev, Status1, MplResult)
   Loop While (Status1 And &H1) <> 0
   'Ack = MPL_IRDrive(hDev, MplData, MplResult)         '現在位置ＡＤＤＲＥＳＳの表示
   'Mel.Addr_Label.Caption = MplDataGet(MplData)
End Sub

Public Sub C870Stop()
Dim cmd%
   cmd = &HFF                                      'ＥＭＳＴＯＰ ＣＯＭＭＡＮＤ
   Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)
   StopFlag = 1
End Sub
Public Function C870Sts%(no%)
Dim status As Integer
  Select Case no
  Case 1
    Ack = MPL_BRStatus1(hDev, status, MplResult)
  Case 2
    Ack = MPL_BRStatus2(hDev, status, MplResult)
  Case 3
    Ack = MPL_BRStatus3(hDev, status, MplResult)
  Case Else
    status = 0
  End Select
  C870Sts = status
End Function


Public Sub C870AccRate()
Dim Data%
  If BrdFlg <> "ON" Then Exit Sub
'/* 加減速ﾚｰﾄｾｯﾄｺﾏﾝﾄﾞ */
  Ready_Wait    'while((inp(AX_STS)&1)!=0);
' Data = 0: Ack = MPL_BWDriveData1(hDev, Data, MplResult)    '
  Data = 6: Ack = MPL_BWDriveData2(hDev, Data, MplResult)     'outp(AX_DT3,6);       /* 3.0ms /1000PPS */
  Data = 6: Ack = MPL_BWDriveData3(hDev, Data, MplResult)     '
  cmd = &H6: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)   '
End Sub

Public Sub C870LSPDSet(vel As Long)
Dim Data%
'/* 速度設定 */
  If BrdFlg <> "ON" Then Exit Sub
  Call MplDataSet(vel, MplData)
  Ack = MPL_BWaitDriveCommand(hDev, 0, MplResult)
  cmd = &H7: Ack = MPL_IWDrive(hDev, cmd, MplData, MplResult)
'---------------------------------------
'  Ready_Wait    'while((inp(AX_STS)&1)!=0);
'  Data = 0: Ack = MPL_BWDriveData1(hDev, Data, MplResult)     'outp(AX_DT1,0);
'  Data = 1: Ack = MPL_BWDriveData2(hDev, Data, MplResult)     'outp(AX_DT2,1);
'  Data = 44: Ack = MPL_BWDriveData3(hDev, Data, MplResult)     'outp(AX_DT3,44);    /* 300 pps 0.066mm/sec */
'  cmd = &H7: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)   'outp(AX_COM,0x07);    /* LSPD set command */
End Sub
Public Sub C870HSPDSet(vel As Long)
Dim Data%
'/* 速度設定 HSPD */
  If BrdFlg <> "ON" Then Exit Sub
  Call MplDataSet(vel, MplData)
  Ack = MPL_BWaitDriveCommand(hDev, 0, MplResult)
  cmd = &H8: Ack = MPL_IWDrive(hDev, cmd, MplData, MplResult)
End Sub
Public Sub C870DelayTime()
'/* ディレータイム設定 */
  If BrdFlg <> "ON" Then Exit Sub
  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  Data = 10: Ack = MPL_BWDriveData1(hDev, Data, MplResult)     'outp(AX_DT1,0x0a);    /* limit delay time 50ms */
  Data = 5: Ack = MPL_BWDriveData2(hDev, Data, MplResult)     'outp(AX_DT2,0x05);    /* scan delay time 25ms */
  Data = 1: Ack = MPL_BWDriveData3(hDev, Data, MplResult)     'outp(AX_DT3,0x01);    /* jog delay time 5ms */
  cmd = &H1C: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)   'outp(AX_COM,0x1c);    /*  delay set command */
End Sub
'*******************************************************************************************************
'
' Ｌｏｎｇ型 ＤＡＴＡ（引数で指定）をＭＰＬ ＤＡＴＡ構造体（引数で指定）に格納する。
'
'*******************************************************************************************************
'
'
Public Sub MplDataSet(ByVal LongData As Long, MplData As MPL_S_DATA)
   Dim w1 As Long
   Dim w2 As Long
   Dim w3 As Long
   If LongData < 0 Then LongData = LongData + idc16777216
   w1 = Int(LongData / idc65536)
   w2 = Int((LongData - w1 * idc65536) / idc256)
   w3 = LongData - w1 * idc65536 - w2 * idc256
   MplData.MPL_Data(1) = w1
   MplData.MPL_Data(2) = w2
   MplData.MPL_Data(3) = w3
End Sub
'******************************************************************************************************
' ＭＰＬ ＤＡＴＡ配列（引数で指定）の内容をＬｏｎｇ型ＤＡＴＡに変換し返値する。
'******************************************************************************************************
'
Public Function MplDataGet(MplData As MPL_S_DATA) As Long
   Dim LongData As Long
   Dim w1, w2, w3 As Long
  
   w1 = MplData.MPL_Data(1)
   w2 = MplData.MPL_Data(2)
   w3 = MplData.MPL_Data(3)
   LongData = (w1 * idc65536) + (w2 * idc256) + w3
   If LongData > idc8388607 Then LongData = LongData - idc16777216
   MplDataGet = LongData
End Function

Public Sub C870AdrInit()
'-----------
  If BrdFlg <> "ON" Then Exit Sub
  Call MplDataSet(0, MplData)                        'ＡＤＤＲＥＳＳ ＩＮＩＴＡＬＩＺＥ ＣＯＭＭＡＮＤ
  Ack = MPL_BWaitDriveCommand(hDev, 0, MplResult)
  Ack = MPL_IWDrive(hDev, &H3, MplData, MplResult)
  Ack = MPL_BWaitDriveCommand(hDev, 0, MplResult)
End Sub
Public Sub C870CntPreSet(cnt As Long)
'-----------
  If BrdFlg <> "ON" Then Exit Sub
  Call MplDataSet(cnt, MplData)                        'ＣＯＵＮＴＥＲ ＰＲＥＳＥＴ ＣＯＭＭＡＮＤ
  Ack = MPL_IWCounter(hDev, &H0, MplData, MplResult)
End Sub
Public Sub C870OrgVelSet()
Dim Data%
'/* 原点用速度設定 */
  If BrdFlg <> "ON" Then Exit Sub
  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  Data = 1: Ack = MPL_BWDriveData1(hDev, Data, MplResult)     '
  Data = 98: Ack = MPL_BWDriveData2(hDev, Data, MplResult)    '
  Data = 16: Ack = MPL_BWDriveData3(hDev, Data, MplResult)    '/* 90640 pps 5mm/sec */
  cmd = &H8: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)   '/* HSPD set command */
  '
  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  Data = 0: Ack = MPL_BWDriveData1(hDev, Data, MplResult)     '
  Data = 7: Ack = MPL_BWDriveData2(hDev, Data, MplResult)    '
  Data = 208: Ack = MPL_BWDriveData3(hDev, Data, MplResult)    '/* 2000 pps 0.441mm/sec */
  cmd = &H1A: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)   '/* CSPD set command */
End Sub
Public Sub C870ManVelSet()
Dim Data%
'/* 原点用速度設定 */
  If BrdFlg <> "ON" Then Exit Sub
  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  Data = 0: Ack = MPL_BWDriveData1(hDev, Data, MplResult)     '
  Data = 141: Ack = MPL_BWDriveData2(hDev, Data, MplResult)    '
  Data = 160: Ack = MPL_BWDriveData3(hDev, Data, MplResult)    '/* 36256 pps 2mm/sec */
  cmd = &H8: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)   '/* HSPD set command */
  '
End Sub

Public Sub C870Genten()
'--------------
Dim i%, Data%, cmd%
  If BrdFlg <> "ON" Then Exit Sub
'/* 原点用速度へ変更 */

  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  Data = 0: Ack = MPL_BWDriveData1(hDev, Data, MplResult)   'outp(AX_DT1,0);
  Data = 141: Ack = MPL_BWDriveData2(hDev, Data, MplResult)   'outp(AX_DT2,141);
  Data = 160: Ack = MPL_BWDriveData3(hDev, Data, MplResult)   'outp(AX_DT3,160);   /* 36256 pps  2mm/sec */
  cmd = &H8: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)   '/* HSPD set command */

  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  Data = 0: Ack = MPL_BWDriveData1(hDev, Data, MplResult)   'outp(AX_DT1,0);
  Data = 17: Ack = MPL_BWDriveData2(hDev, Data, MplResult)   'outp(AX_DT2,17);
  Data = 180: Ack = MPL_BWDriveData3(hDev, Data, MplResult)   'outp(AX_DT3,180);   /* 4532 pps 0.25mm/sec */
  cmd = &H1A: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)  '/* CSPD set command */

'--------- ORIGIN FLAG RESET
  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  cmd = &H1D: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)  '/* ORIGIN COMMAND */
'/* サーボモータの原点出し */

  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  Data = 4: Ack = MPL_BWDriveData1(hDev, Data, MplResult)   'outp(AX_DT1,0x04);    /* ORG-4　方式 */
  cmd = &H1E: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)  'outp(AX_COM,0x1e);    /* ORIGIN COMMAND */

End Sub
Public Sub C870SpecInit()
Dim Data%
  If BrdFlg <> "ON" Then Exit Sub
'/* SPEC INITIALIZE CMD OUT */
  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  Data = &H21: Ack = MPL_BWDriveData1(hDev, Data, MplResult)    '
  'Data = 0: Ack = MPL_BWDriveData2(hDev, Data, MplResult)     '
  'Data = 0: Ack = MPL_BWDriveData3(hDev, Data, MplResult)     '
  cmd = &H1: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)   '
End Sub
Public Sub C870CntInit()
'   update 2005.11.06 s.f      data2  &H5 -> &H65
Dim Data%
  If BrdFlg <> "ON" Then Exit Sub
'/* カウンタボードの初期設定 */
  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  Data = 0: Ack = MPL_BWDriveData1(hDev, Data, MplResult)    '
  Data = &H65: Ack = MPL_BWDriveData2(hDev, Data, MplResult)     '
'  Data = 5: Ack = MPL_BWDriveData2(hDev, Data, MplResult)     '
  Data = 0: Ack = MPL_BWDriveData3(hDev, Data, MplResult)     '
  cmd = &H2: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)   '
End Sub
Public Sub C870SlowStop()
Dim Data%
'/* 停止 */
'  Ready_Wait    'while((inp(AX_STS)&1)!=0);
  cmd = &HFE: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)   '
End Sub
Public Sub C870Command(cm%)
'----------- Command send
  cmd = cm: Ack = MPL_BWDriveCommand(hDev, cmd, MplResult)
End Sub
