drawfillbox (0, 0, maxx, maxy, 54)
Font.Draw ("INSTRUCTIONS:", 15, 360, font2, 0)             %Draws the instruction screen
Font.Draw ("1. The goal is to reach the highest score possible!", 15, 330, font2, 0)
Font.Draw ("2. You gain points by clearing lines on the tetris board.", 15, 300, font2, 0)
Font.Draw ("3. You can move the pieces by using the left and right arrows.", 15, 270, font2, 0)
Font.Draw ("4. You can rotate the pieces using the up arrow key.", 15, 240, font2, 0)
Font.Draw ("5. You can quickly drop your piece using the space key.", 15, 210, font2, 0)
drawfillbox (245, 40, 395, 110, 12)
Font.Draw ("PLAY", 280, 60, font1, 0)
loop             %checks if the exit button is clicked
    mousewhere (x, y, click)
    exit when x > 245 and y > 40 and x < 395 and y < 110 and click = 1
end loop
