Global bmpZahlen, bmpZahlen_r, bmpEZahlen, Eingabe$, Ergebnis$, yOffset, ErgOffset, EinOffset
bmpZahlen = LoadBitmap("b2d_data/btn_Zahlen.png")
bmpZahlen_r = LoadBitmap("b2d_data/btn_Zahlen_r.png")
bmpEZahlen = LoadBitmap("b2d_data/btn_EZahlen.png")
bmpEnde = LoadBitmap("b2d_data/btn_Off.png")
Orientation 2
Graphics On
SetScale 1920, 1128
TextAlign 0
TextSize 40
FixDecimal 0
ColorRGBA 135, 205, 250
CLS
init()
DrawBitmap bmpZahlen, 1400, 550
DrawBitmap bmpEnde, 1800, 1030
TextColor 0, 0, 0
DrawText "Dezimalzahl", 550, 330, 0, 1
DrawText "Binärzahl", 550, 530, 0, 1
TextSize 60
DrawText "1", 1198, 277, 0, 1
DrawText "2", 1398, 277, 0, 1
DrawText "3", 1598, 277, 0, 1
DrawText "4", 1198, 477, 0, 1
DrawText "5", 1398, 477, 0, 1
DrawText "6", 1598, 477, 0, 1
DrawText "7", 1198, 677, 0, 1
DrawText "8", 1398, 677, 0, 1
DrawText "9", 1598, 677, 0, 1
DrawText "CE", 1198, 877, 0, 1
DrawText "0", 1398, 877, 0, 1
DrawText "C", 1598, 877, 0, 1
TextColor 100, 100, 100
DrawText "1", 1202, 273, 0, 1
DrawText "2", 1402, 273, 0, 1
DrawText "3", 1602, 273, 0, 1
DrawText "4", 1202, 473, 0, 1
DrawText "5", 1402, 473, 0, 1
DrawText "6", 1602, 473, 0, 1
DrawText "7", 1202, 673, 0, 1
DrawText "8", 1402, 673, 0, 1
DrawText "9", 1602, 673, 0, 1
DrawText "CE", 1202, 873, 0, 1
DrawText "0", 1402, 873, 0, 1
DrawText "C", 1602, 873, 0, 1
Do
  Touch x, y
  If (x > 300 and x < 800) and (y > 350 and y < 450) then
    ColorRGBA 255, 255, 0
    Rect 350, 350, 750, 450, 1
    Circle 350, 400, 50, 1
    Circle 750, 400, 50, 1
    ColorRGBA 255, 255, 255
    Rect 350, 550, 750, 650, 1
    Circle 350, 600, 50, 1
    Circle 750, 600, 50, 1
    yOffset = 425
    dummy$ = Ergebnis$
    Ergebnis$ = Eingabe$
    Eingabe$ = dummy$
    dummy$ = ""
  ElseIf (x > 300 and x < 800) and (y > 550 and y < 650) then
    ColorRGBA 255, 255, 255
    Rect 350, 350, 750, 450, 1
    Circle 350, 400, 50, 1
    Circle 750, 400, 50, 1
    ColorRGBA 255, 255, 0
    Rect 350, 550, 750, 650, 1
    Circle 350, 600, 50, 1
    Circle 750, 600, 50, 1
    yOffset = 625 
    dummy$ = Ergebnis$
    Ergebnis$ = Eingabe$
    Eingabe$ = dummy$
    dummy$ = ""
  ElseIf (x > 1150 and x < 1250) and (y > 200 and y < 300) then
    Eingabe$ = Eingabe$ + "1"
    btn_Press("1", 1200, 250)
  ElseIf (x > 1350 and x < 1450) and (y > 200 and y < 300) and yOffset = 425 then
    Eingabe$ = Eingabe$ + "2"
    btn_Press("2", 1400, 250) 
  ElseIf (x > 1550 and x < 1650) and (y > 200 and y < 300) and yOffset = 425 then
    Eingabe$ = Eingabe$ + "3"
    btn_Press("3", 1600, 250)
  ElseIf (x > 1150 and x < 1250) and (y > 400 and y < 500) and yOffset = 425 then
    Eingabe$ = Eingabe$ + "4"
    btn_Press("4", 1200, 450)
  ElseIf (x > 1350 and x < 1450) and (y > 400 and y < 500) and yOffset = 425 then
    Eingabe$ = Eingabe$ + "5"
    btn_Press("5", 1400, 450)
  ElseIf (x > 1550 and x < 1650) and (y > 400 and y < 500) and yOffset = 425 then
    Eingabe$ = Eingabe$ + "6"
    btn_Press("6", 1600, 450)
  ElseIf (x > 1150 and x < 1250) and (y > 600 and y < 700) and yOffset = 425 then
    Eingabe$ = Eingabe$ + "7"
    btn_Press("7", 1200, 650)
  ElseIf (x > 1350 and x < 1450) and (y > 600 and y < 700) and yOffset = 425 then
    Eingabe$ = Eingabe$ + "8"
    btn_Press("8", 1400, 650)
  ElseIf (x > 1550 and x < 1650) and (y > 600 and y < 700) and yOffset = 425 then
    Eingabe$ = Eingabe$ + "9"
    btn_Press("9", 1600, 650)
  ElseIf (x > 1150 and x < 1250) and (y > 800 and y < 900) then
    If len(Eingabe$) > 0 then
      Eingabe$ = left$(Eingabe$, len(Eingabe$) - 1)
    Endif
    btn_Press("CE", 1200, 850)
  ElseIf (x > 1350 and x < 1450) and (y > 800 and y < 900) then
    Eingabe$ = Eingabe$ + "0"
    btn_Press("0", 1400, 850)
  ElseIf (x > 1550 and x < 1650) and (y > 800 and y < 900) then
    init()
  ElseIf (x > 1750 and x < 1850) and (y > 980 and y < 1080) then
    mySplash()
    Graphics Off
    Exit
  Endif
  If len(Eingabe$) > 0 Then
    If yOffset = 425 Then 
      ErgOffset = 620
      EinOffset = 420
      If val(Eingabe$) > 0 Then
        Ergebnis$ = Bin$(Val(Eingabe$))
      Else
        Ergebnis$ = "0000000000000000"
      Endif
    ElseIf yOffset = 625 Then 
      ErgOffset = 420
      EinOffset = 620
      Ergebnis$ = Str$(BinDec(Eingabe$))
    Endif
  Endif
  If yOffset = 425 Then
    ColorRGBA 255, 255, 0
    Rect 350, 350, 750, 450, 1
    Circle 350, 400, 50, 1
    Circle 750, 400, 50, 1
    ColorRGBA 255, 255, 255
    Rect 350, 550, 750, 650, 1
    Circle 350, 600, 50, 1
    Circle 750, 600, 50, 1
  ElseIf yOffset = 625 Then
    ColorRGBA 255, 255, 255
    Rect 350, 350, 750, 450, 1
    Circle 350, 400, 50, 1
    Circle 750, 400, 50, 1
    ColorRGBA 255, 255, 0
    Rect 350, 550, 750, 650, 1
    Circle 350, 600, 50, 1
    Circle 750, 600, 50, 1
  Endif
  Textsize 50
  DrawText Ergebnis$, 550, ErgOffset, 0, 1
  DrawText Eingabe$, 550, EinOffset, 0, 1
  Textsize 60
Loop 

Sub init()
  Eingabe$ = ""
  Ergebnis$ = ""
  EinOffset = 420
  ErgOffset = 620
  ColorRGBA 255, 255, 255
  Rect 350, 350, 750, 450, 1
  Circle 350, 400, 50, 1
  Circle 750, 400, 50, 1
  ColorRGBA 255, 255, 255
  Rect 350, 550, 750, 650, 1
  Circle 350, 600, 50, 1
  Circle 750, 600, 50, 1
  yOffset = 425
  ColorRGBA 255, 255, 0
  Rect 350, 350, 750, 450, 1
  Circle 350, 400, 50, 1
  Circle 750, 400, 50, 1 
End Sub

Sub btn_Press(num$, btnX, btnY)    
  DrawBitmap bmpZahlen_r, btnX, btnY
  TextColor 0, 0, 0
  DrawText num$, btnX - 2, btnY + 27, 0, 1
  TextColor 100, 100, 100
  DrawText num$, btnX + 2, btnY + 23, 0, 1
  Wait 100
  DrawBitmap bmpEZahlen, btnX, btnY
  TextColor 0, 0, 0
  DrawText num$, btnX - 2, btnY + 27, 0, 1
  TextColor 100, 100, 100
  DrawText num$, btnX + 2, btnY + 23, 0, 1
  TextColor 0, 0, 0
  if yOffset = 425 And val(Eingabe$) > 65535 Then
    Eingabe$ = left$(Eingabe$, len(Eingabe$) - 1)
    Dialog "Hinweis ...", "Es sind nur Zahlen bis 65535 erlaubt!"
  elseif yOffset = 625 And len(Eingabe$) > 16 then
    Eingabe$ = left$(Eingabe$, len(Eingabe$) - 1)
    Dialog "Hinweis ...", "Es sind nur Zahlen mit 16 Stellen erlaubt!"
  Endif
End Sub

Sub mySplash() 
'**********************************************************************************
' created in 02/2017 by CDPeter, feel free to use it, 
' but please don't remove these lines
' Personal parameter for changes are written between the lines with the stars
  Dim scr_col(2) = 0,80,80 'backgroundcolor
  Dim txt_col(2) = 20,20,20 'textcolor 
  txt_size_big = 100 'textsize for developername
  txt_size_norm = 55 'textsize for phrase & appname
  txt_app$ = "Bin2Dez V1.0" 'appname 
  txt_thx$ = "Danke für die Nutzung meiner App" 'phrase
  txt_cpright$ = "CDDroidsoft © 2017" 'developername
  Y_Offset = 200 'vertical Offset for all Elements from top
  button_up$ = "b2d_data/cmd_leer.png" 'path to graphic Button up
  button_down$ = "b2d_data/cmd_leer_down.png" 'path to graphic Button down
'**********************************************************************************
  scr_x = screenx() 
  scr_y = screeny() 
  Color scr_col(0), scr_col(1), scr_col(2) 
  TextColor txt_col(0), txt_col(1), txt_col(2)
  TextAlign 0
  Cls
  TextSize txt_size_big
  DrawText txt_app$, scr_x/2 , (scr_y/8) + Y_Offset, 0, 1
  Textsize txt_size_norm 
  DrawText txt_thx$, scr_x/2 , (scr_y/4) + Y_Offset , 0, 1
  DrawText txt_cpright$, scr_x/2 , (scr_y/3) + Y_Offset , 0, 1
  x=0
  y=0
  bitmap = loadbitmap(button_up$) 
  x_bitm = Getbitmapwidth(bitmap) 
  y_bitm = Getbitmapheight(bitmap) 
  Drawbitmap bitmap, scr_x/2,(scr_y/2) + Y_Offset
  Do until (x > (scr_x/2)-(x_bitm/2) and x < (scr_x/2)+(x_bitm/2)) and (y > (scr_y/2)-(y_bitm/2) + Y_Offset and y < (scr_y/2)+(y_bitm/2) + Y_Offset)
    Touch x, y
  Loop 
  bitmap_d = loadbitmap(button_down$) 
  x_bitm_d = Getbitmapwidth(bitmap_d) 
  y_bitm_d = Getbitmapheight(bitmap_d) 
  Drawbitmap bitmap_d, scr_x/2,(scr_y/2) + Y_Offset
  Wait 400
  Drawbitmap bitmap, scr_x/2,(scr_y/2) + Y_Offset
  Wait 600
  CLS
End Sub
