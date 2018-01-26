%***********************************************************************%
%                          PROGRAM HEADER                               %
%***********************************************************************%
%                                                                       %
% PROGRAMMER'S NAME:    Jayson Yan                                      %
%                                                                       %
% PROGRAM NAME:         TETRIS                                          %
%                                                                       %
% CLASS:                ICS3U1-01                                       %
%                                                                       %
% ASSIGNMENT:           Final ISP                                       %
%                                                                       %
% TEACHER:              Mrs. Barsan                                     %
%                                                                       %
% DUE DATE:             Friday, June 17, 2016                           %
%                                                                       %
%***********************************************************************%
% WHAT THE PROGRAM DOES                                                 %
%                                                                       %
% This program is a game that mimics the popular 1785 game Tetris. The  %
% objective is to gain as many points as possible. The user can gain    %
% points by clearing lines on the board. The pieces that fall down can  %
% be controlled by keyboard inputs, specifically the arrow keys.        %
%                                                                       %
%***********************************************************************%
% ERROR HANDLING                                                        %
%                                                                       %
% The program utilizes buttons so the user cannot input invalid inputs. %                                                              %
%                                                                       %
%***********************************************************************%
% PROGRAM LIMITATIONS                                                   %
%                                                                       %
% This program is limited 1 player mode, so multiplayer is not available%
%                                                                       %
%***********************************************************************%
% EXTENSIONS AND IMPROVEMENTS                                           %
%                                                                       %
% This program could be improved in a variety of ways:                  %
% 1. Allows for multiple players to play tetris at the same     %
% 2. Create a four dimensonal dice that transcends space and time.      %
%                                                                       %
%***********************************************************************%
var xlocation, ylocation : int
var grid : array 1 .. 10, 1 .. 28 of int
var random : int
var score : int := 0
var dly : int := 150
var count : int := 0
var rotate : boolean
var clear : boolean := true
var x1, x2, x3, x4, y1, y2, y3, y4, n : int
var chars : array char of boolean
var start, over : boolean := false
procedure drawer
    for decreasing j : 20 .. 1
	clear := true
	for i : 1 .. 10
	    if j <= 20 then
		case grid (i, j) of
		    label 1 :
			drawfillbox (-9 + 30 * i, -9 + 30 * j, 19 + 30 * i, 19 + 30 * j, 11)
		    label 2 :
			drawfillbox (-9 + 30 * i, -9 + 30 * j, 19 + 30 * i, 19 + 30 * j, 9)
		    label 3 :
			drawfillbox (-9 + 30 * i, -9 + 30 * j, 19 + 30 * i, 19 + 30 * j, 42)
		    label 4 :
			drawfillbox (-9 + 30 * i, -9 + 30 * j, 19 + 30 * i, 19 + 30 * j, 14)
		    label 5 :
			drawfillbox (-9 + 30 * i, -9 + 30 * j, 19 + 30 * i, 19 + 30 * j, 48)
		    label 6 :
			drawfillbox (-9 + 30 * i, -9 + 30 * j, 19 + 30 * i, 19 + 30 * j, 12)
		    label 7 :
			drawfillbox (-9 + 30 * i, -9 + 30 * j, 19 + 30 * i, 19 + 30 * j, 35)
		    label 0 :
			drawfillbox (-9 + 30 * i, -9 + 30 * j, 19 + 30 * i, 19 + 30 * j, 22)
			clear := false
		end case
	    end if
	end for
	if clear = true and start = true then
	    for y : j .. 20
		for x : 1 .. 10
		    grid (x, y) := grid (x, y + 1)
		end for
	    end for
	    score += 100
	end if
    end for
end drawer
procedure block (x1, x2, x3, x4, y1, y2, y3, y4, n : int)
    grid (xlocation + x1, ylocation + y1) := n
    grid (xlocation + x2, ylocation + y2) := n
    grid (xlocation + x3, ylocation + y3) := n
    grid (xlocation + x4, ylocation + y4) := n
end block
procedure timer
    if score < 500 then
	dly := 200
    elsif score < 2000 and score > 500 then
	dly := 150
    elsif score > 2000 then
	dly := 100
    end if
end timer
include "Movement.t"
process tetris_Music
    Music.PlayFileLoop ("Tetris.mp3")
end tetris_Music
loop
    include "Start_Screen.t"
    exit when x > 445 and y > 40 and x < 595 and y < 110 and click = 1
    if x > 45 and y > 40 and x < 195 and y < 110 and click = 1 then
	include "Instructions.t"
    end if
    fork tetris_Music
    setscreen ("graphics:600;700")
    if x > 245 and y > 40 and x < 395 and y < 110 and click = 1 then
	score := 0
	drawfillbox (0, 0, maxx, maxy, 54)
	Font.Draw ("TETRIS", 50, 635, font3, 0)
	drawfillbox (20, 20, 320, 620, 22)
	for i : 0 .. 10
	    drawline (20 + 30 * i, 20, 20 + 30 * i, 620, 7)
	end for
	for i : 0 .. 20
	    drawline (20, 20 + 30 * i, 320, 20 + 30 * i, 7)
	end for
	for j : 1 .. 23
	    for i : 1 .. 10
		grid (i, j) := 0
	    end for
	end for
	loop
	    timer
	    over := false
	    for i : 1 .. 10
		case grid (i, 20) of
		    label 1, 2, 3, 4, 5, 6, 7 :
			over := true
		    label :
		end case
	    end for
	    exit when over = true
	    start := true
	    drawer
	    start := false
	    drawfillbox (400, 600, 600, 700, 54)
	    Font.Draw ("Score: " + intstr (score), 400, 600, font2, 0)
	    delay (100)
	    count := 0
	    xlocation := 5
	    ylocation := 20
	    randint (random, 1, 7)
	    case random of
		label 1 :
		    x1 := 0
		    x2 := 0
		    x3 := 0
		    x4 := 0
		    y1 := 1
		    y2 := 2
		    y3 := 3
		    y4 := 0
		    n := 1
		    loop
			drawer
			if count mod 2 = 0 then
			    block (x1, x2, x3, x4, y1 + 3, y2 + 2, y3 + 1, y4 + 4, 0)
			elsif count mod 1 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 1, y3 + 1, y4 + 1, 0)
			end if
			locationchange
			delay (dly)
			exit when ylocation = 1
			ylocation -= 1
			if count mod 2 = 0 then
			    exit when not grid (xlocation, ylocation) = 0
			elsif count mod 1 = 0 then
			    exit when not grid (xlocation - 1, ylocation) = 0 or not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation) = 0 or not
				grid (xlocation + 2, ylocation) = 0
			end if
		    end loop
		label 2 :
		    x1 := 1
		    x2 := 1
		    x3 := 1
		    x4 := 0
		    y1 := 2
		    y2 := 1
		    y3 := 0
		    y4 := 0
		    n := 2
		    loop
			drawer
			if count mod 4 = 0 then
			    block (x1, x2, x3, x4, y1 + 3, y2 + 3, y3 + 3, y4 + 1, 0)
			elsif count mod 3 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 1, y3 + 1, y4 + 1, 0)
			elsif count mod 2 = 0 then
			    block (x1, x2, x3, x4, y1 + 4, y2 + 3, y3 + 1, y4 + 1, 0)
			elsif count mod 1 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 1, y3 + 1, y4 + 1, 0)
			end if
			locationchange
			delay (dly)
			exit when ylocation = 1
			ylocation -= 1
			if count mod 4 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation) = 0 or not grid (xlocation + 1, ylocation) = 0
			elsif count mod 3 = 0 then
			    exit when not grid (xlocation, ylocation + 1) = 0 or not grid (xlocation + 1, ylocation + 1) = 0 or not grid (xlocation + 2, ylocation) = 0
			elsif count mod 2 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation + 2) = 0
			elsif count mod 1 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation) = 0 or not grid (xlocation + 2, ylocation) = 0
			end if
		    end loop
		label 3 :
		    x1 := 0
		    x2 := 0
		    x3 := 0
		    x4 := 1
		    y1 := 2
		    y2 := 1
		    y3 := 0
		    y4 := 0
		    n := 3
		    loop
			drawer
			if count mod 4 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 2, y3 + 3, y4 + 1, 0)
			elsif count mod 3 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 1, y3 + 1, y4 + 1, 0)
			elsif count mod 2 = 0 then
			    block (x1, x2, x3, x4, y1 + 3, y2 + 2, y3 + 1, y4 + 1, 0)
			elsif count mod 1 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 1, y3 + 1, y4 + 2, 0)
			end if
			locationchange
			delay (dly)
			exit when ylocation = 1
			ylocation -= 1
			if count mod 4 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation) = 0
			elsif count mod 3 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation) = 0 or not grid (xlocation + 2, ylocation) = 0
			elsif count mod 2 = 0 then
			    exit when not grid (xlocation + 1, ylocation) = 0 or not grid (xlocation, ylocation + 2) = 0
			elsif count mod 1 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation + 1) = 0 or not grid (xlocation + 2, ylocation + 1) = 0
			end if
		    end loop
		label 4 :
		    x1 := 0
		    x2 := 1
		    x3 := 1
		    x4 := 0
		    y1 := 1
		    y2 := 1
		    y3 := 0
		    y4 := 0
		    n := 4
		    loop
			drawer
			block (x1, x2, x3, x4, y1 + 1, y2 + 1, y3 + 2, y4 + 2, 0)
			locationchange
			delay (dly)
			ylocation -= 1
			exit when ylocation = 0
			exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation) = 0
		    end loop
		label 5 :
		    x1 := 0
		    x2 := 1
		    x3 := -1
		    x4 := 0
		    y1 := 1
		    y2 := 1
		    y3 := 0
		    y4 := 0
		    n := 5
		    loop
			drawer
			if count mod 2 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 1, y3 + 1, y4 + 2, 0)
			elsif count mod 1 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 2, y3 + 1, y4 + 2, 0)
			end if
			locationchange
			delay (dly)
			ylocation -= 1
			exit when ylocation = 0
			if count mod 2 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation - 1, ylocation) = 0 or not grid (xlocation + 1, ylocation + 1) = 0
			elsif count mod 1 = 0 then
			    exit when not grid (xlocation, ylocation + 1) = 0 or not grid (xlocation + 1, ylocation) = 0
			end if
		    end loop
		label 6 :
		    x1 := 0
		    x2 := -1
		    x3 := 1
		    x4 := 0
		    y1 := 1
		    y2 := 1
		    y3 := 0
		    y4 := 0
		    n := 6
		    loop
			drawer
			if count mod 2 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 1, y3 + 1, y4 + 2, 0)
			elsif count mod 1 = 0 then
			    block (x1, x2, x3, x4, y1 + 2, y2 + 1, y3 + 2, y4 + 1, 0)
			end if
			locationchange
			delay (dly)
			ylocation -= 1
			exit when ylocation = 0
			if count mod 2 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation) = 0 or not grid (xlocation - 1, ylocation + 1) = 0
			elsif count mod 1 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation + 1) = 0
			end if
		    end loop
		label 7 :
		    x1 := 0
		    x2 := -1
		    x3 := 1
		    x4 := 0
		    y1 := 1
		    y2 := 0
		    y3 := 0
		    y4 := 0
		    n := 7
		    loop
			drawer
			if count mod 4 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 1, y3 + 1, y4 + 2, 0)
			elsif count mod 3 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 3, y3 + 1, y4 + 2, 0)
			elsif count mod 2 = 0 then
			    block (x1, x2, x3, x4, y1 + 2, y2 + 1, y3 + 1, y4 + 1, 0)
			elsif count mod 1 = 0 then
			    block (x1, x2, x3, x4, y1 + 1, y2 + 3, y3 + 1, y4 + 2, 0)
			end if
			locationchange
			delay (dly)
			ylocation -= 1
			exit when ylocation = 0
			if count mod 4 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation) = 0 or not grid (xlocation - 1, ylocation) = 0
			elsif count mod 3 = 0 then
			    exit when not grid (xlocation, ylocation + 1) = 0 or not grid (xlocation + 1, ylocation) = 0
			elsif count mod 2 = 0 then
			    exit when not grid (xlocation - 1, ylocation + 1) = 0 or not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation + 1) = 0
			elsif count mod 1 = 0 then
			    exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation + 1) = 0
			end if
		    end loop
	    end case
	    drawer
	end loop
	if over = true then
	    include "Game_Over.t"
	    delay (200)
	end if
    end if
end loop
cls
