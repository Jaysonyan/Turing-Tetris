setscreen ("graphics:640;400")
drawfillbox (0, 0, maxx, maxy, 54)
drawfillbox (245, 40, 395, 110, 12)
Font.Draw ("BACK", 274, 60, font1, 0)
Font.Draw ("GAME OVER", 120, 230, font3, 0)
Font.Draw ("Score: " + intstr(score) , 235, 180, font1, 0)
loop %Checks if buttons are clicked
    mousewhere (x, y, click)
    exit when x > 245 and y > 40 and x < 395 and y < 110 and click = 1
end loop
