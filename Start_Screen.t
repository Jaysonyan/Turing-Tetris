var font1 : int := Font.New ("arial:25:bold")
var font2 : int := Font.New ("arial:14:bold")
var font3 : int := Font.New ("arial:50:bold")
var x, y, click : int
setscreen ("graphics:640;400")
drawfillbox (0, 0, maxx, maxy, 54) %Draws the start screen
Font.Draw ("TETRIS", 200, 230, font3, 0)
drawfillbox (45, 40, 195, 110, 12)
drawfillbox (245, 40, 395, 110, 12)
drawfillbox (445, 40, 595, 110, 12)
Font.Draw ("INSTRUCTlONS", 50, 67, font2, 0)
Font.Draw ("PLAY", 278, 60, font1, 0)
Font.Draw ("EXlT", 482, 60, font1, 0)
loop %Checks if buttons are clicked
    mousewhere (x, y, click)
    exit when x > 45 and y > 40 and x < 195 and y < 110 and click = 1
    exit when x > 245 and y > 40 and x < 395 and y < 110 and click = 1
    exit when x > 445 and y > 40 and x < 595 and y < 110 and click = 1
end loop
