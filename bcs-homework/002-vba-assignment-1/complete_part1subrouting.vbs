Sub stockspart1()
Dim ws As Worksheet
Dim r1, r2, r3, r4, vo, t1 As Long
Dim ti As String
Dim op, cl As Double
For Each ws In Worksheets
    ws.Cells(1, 9) = "Ticker"
    ws.Cells(1, 10) = "Yearly Change"
    ws.Cells(1, 11) = "Percent Change"
    ws.Cells(1, 12) = "Total Stock Volume"
    t1 = 1
    For r1 = 2 To ws.Cells(Rows.Count, 1).End(xlUp).Row
        If ws.Cells(r1, 1) <> ws.Cells(r1 - 1, 1) And ws.Cells(r1, 1) = ws.Cells(r1 + 1, 1) Then
            ti = ws.Cells(r1, 1)
            op = ws.Cells(r1, 3)
            vo = ws.Cells(r1, 7)
        ElseIf ws.Cells(r1, 1) = ws.Cells(r1 - 1, 1) And ws.Cells(r1, 1) = ws.Cells(r1 + 1, 1) Then
            vo = vo + ws.Cells(r1, 7)
        ElseIf ws.Cells(r1, 1) = ws.Cells(r1 - 1, 1) And ws.Cells(r1, 1) <> ws.Cells(r1 + 1, 1) Then
            t1 = t1 + 1
            cl = ws.Cells(r1, 6)
            ws.Cells(t1, 9) = ti
            ws.Cells(t1, 10) = cl - op
            If op = 0 Then
                cl = 0
            Else
                cl = (cl / op) - 1
            End If
            ws.Cells(t1, 11) = cl
            ws.Cells(t1, 12) = vo + ws.Cells(r1, 7)
            If ws.Cells(t1, 10) > 0 Then
                ws.Cells(t1, 10).Interior.ColorIndex = 4
            ElseIf ws.Cells(t1, 10) < 0 Then
                ws.Cells(t1, 10).Interior.ColorIndex = 3
            End If
            ws.Cells(t1, 11).NumberFormat = "0.00%"
        End If
    Next
Next

End Sub
