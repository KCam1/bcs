Sub stocks()
Dim ws As Worksheet
Dim r1, r2, r3, r4, vo, t1 As Long
Dim ti As String
Dim op, cl As Double
For Each ws In Worksheets
    ws.Cells(2, 14) = "Greatest % Increase"
    ws.Cells(3, 14) = "Greatest % Decrease"
    ws.Cells(4, 14) = "Greatest Total Volume"
    ws.Cells(1, 15) = "Ticker"
    ws.Cells(1, 16) = "Value"
    ws.Cells(2, 15) = "---"
    ws.Cells(2, 16).NumberFormat = "0.00%"
    ws.Cells(3, 15) = "---"
    ws.Cells(3, 16).NumberFormat = "0.00%"
    ws.Cells(4, 15) = "---"
    ws.Cells(4, 16) = 0
    For r1 = 2 To ws.Cells(Rows.Count, 9).End(xlUp).Row
        If ws.Cells(r1, 11) >= ws.Cells(2, 16) Then
            ws.Cells(2, 15) = ws.Cells(r1, 9)
            ws.Cells(2, 16) = ws.Cells(r1, 11)
        ElseIf ws.Cells(r1, 11) <= ws.Cells(3, 16) Then
            ws.Cells(3, 15) = ws.Cells(r1, 9)
            ws.Cells(3, 16) = ws.Cells(r1, 11)
        ElseIf ws.Cells(r1, 12) >= ws.Cells(4, 16) Then
            ws.Cells(4, 15) = ws.Cells(r1, 9)
            ws.Cells(4, 16) = ws.Cells(r1, 12)
        End If
    Next
Next

End Sub
