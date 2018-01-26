procedure rcheck
    block (x1, x2, x3, x4, y1, y2, y3, y4, 0)
    case random of
	label 1 :
	    for i : 0 .. 3
		for j : -1 .. 2
		    if not grid (xlocation + j, ylocation + i) = 0 then
			rotate := false
		    end if
		end for
	    end for
	label 2 :
	    for i : 0 .. 2
		for j : 0 .. 2
		    if not grid (xlocation + j, ylocation + i) = 0 then
			rotate := false
		    end if
		end for
	    end for
	label 3 :
	    for i : 0 .. 2
		for j : 0 .. 2
		    if not grid (xlocation + j, ylocation + i) = 0 then
			rotate := false
		    end if
		end for
	    end for
	label 4 :
	label 5 :
	    for i : 0 .. 2
		for j : -1 .. 1
		    if not grid (xlocation + j, ylocation + i) = 0 then
			rotate := false
		    end if
		end for
	    end for
	label 6 :
	    for i : 0 .. 2
		for j : -1 .. 1
		    if not grid (xlocation + j, ylocation + i) = 0 then
			rotate := false
		    end if
		end for
	    end for
	label 7 :
	    for i : 0 .. 2
		for j : -1 .. 1
		    if not grid (xlocation + j, ylocation + i) = 0 then
			rotate := false
		    end if
		end for
	    end for
    end case
    block (x1, x2, x3, x4, y1, y2, y3, y4, n)
end rcheck
procedure rotation
    block (x1, x2, x3, x4, y1, y2, y3, y4, 0)
    case random of
	label 1 :
	    if count mod 2 = 0 then
		x1 := 0
		x2 := 0
		x3 := 0
		x4 := 0
		y1 := 1
		y2 := 2
		y3 := 3
		y4 := 0
		n := 1
	    elsif count mod 1 = 0 then
		x1 := -1
		x2 := 0
		x3 := 1
		x4 := 2
		y1 := 0
		y2 := 0
		y3 := 0
		y4 := 0
		n := 1
	    end if
	label 2 :
	    if count mod 4 = 0 then
		x1 := 1
		x2 := 1
		x3 := 1
		x4 := 0
		y1 := 2
		y2 := 1
		y3 := 0
		y4 := 0
		n := 2
	    elsif count mod 3 = 0 then
		x1 := 0
		x2 := 1
		x3 := 2
		x4 := 2
		y1 := 1
		y2 := 1
		y3 := 1
		y4 := 0
		n := 2
	    elsif count mod 2 = 0 then
		x1 := 0
		x2 := 0
		x3 := 0
		x4 := 1
		y1 := 0
		y2 := 1
		y3 := 2
		y4 := 2
		n := 2
	    elsif count mod 1 = 0 then
		x1 := 2
		x2 := 1
		x3 := 0
		x4 := 0
		y1 := 0
		y2 := 0
		y3 := 0
		y4 := 1
		n := 2
	    end if
	label 3 :
	    if count mod 4 = 0 then
		x1 := 0
		x2 := 0
		x3 := 0
		x4 := 1
		y1 := 2
		y2 := 1
		y3 := 0
		y4 := 0
		n := 3
	    elsif count mod 3 = 0 then
		x1 := 2
		x2 := 1
		x3 := 0
		x4 := 2
		y1 := 0
		y2 := 0
		y3 := 0
		y4 := 1
		n := 3
	    elsif count mod 2 = 0 then
		x1 := 1
		x2 := 1
		x3 := 1
		x4 := 0
		y1 := 0
		y2 := 1
		y3 := 2
		y4 := 2
		n := 3
	    elsif count mod 1 = 0 then
		x1 := 2
		x2 := 1
		x3 := 0
		x4 := 0
		y1 := 1
		y2 := 1
		y3 := 1
		y4 := 0
		n := 3
	    end if
	label 4 :
	label 5 :
	    if count mod 2 = 0 then
		x1 := 0
		x2 := 1
		x3 := -1
		x4 := 0
		y1 := 1
		y2 := 1
		y3 := 0
		y4 := 0
		n := 5
	    elsif count mod 1 = 0 then
		x1 := 1
		x2 := 1
		x3 := 0
		x4 := 0
		y1 := 1
		y2 := 0
		y3 := 2
		y4 := 1
		n := 5
	    end if
	label 6 :
	    if count mod 2 = 0 then
		x1 := 0
		x2 := -1
		x3 := 1
		x4 := 0
		y1 := 1
		y2 := 1
		y3 := 0
		y4 := 0
		n := 6
	    elsif count mod 1 = 0 then
		x1 := 1
		x2 := 1
		x3 := 0
		x4 := 0
		y1 := 1
		y2 := 2
		y3 := 0
		y4 := 1
		n := 6
	    end if
	label 7 :
	    if count mod 4 = 0 then
		x1 := 0
		x2 := -1
		x3 := 1
		x4 := 0
		y1 := 1
		y2 := 0
		y3 := 0
		y4 := 0
		n := 7
	    elsif count mod 3 = 0 then
		x1 := 0
		x2 := 1
		x3 := 1
		x4 := 1
		y1 := 1
		y2 := 2
		y3 := 0
		y4 := 1
		n := 7
	    elsif count mod 2 = 0 then
		x1 := 0
		x2 := -1
		x3 := 1
		x4 := 0
		y1 := 0
		y2 := 1
		y3 := 1
		y4 := 1
		n := 7
	    elsif count mod 1 = 0 then
		x1 := 1
		x2 := 0
		x3 := 0
		x4 := 0
		y1 := 1
		y2 := 0
		y3 := 2
		y4 := 1
		n := 7
	    end if
    end case
    block (x1, x2, x3, x4, y1, y2, y3, y4, n)
end rotation
procedure moveright
    xlocation += 1
    block (x1 - 1, x2 - 1, x3 - 1, x4 - 1, y1, y2, y3, y4, 0)
    block (x1, x2, x3, x4, y1, y2, y3, y4, n)
end moveright
procedure moveleft
    xlocation -= 1
    block (x1 + 1, x2 + 1, x3 + 1, x4 + 1, y1, y2, y3, y4, 0)
    block (x1, x2, x3, x4, y1, y2, y3, y4, n)
end moveleft
procedure locationchange
    Input.KeyDown (chars)
    block (x1, x2, x3, x4, y1, y2, y3, y4, n)
    if chars (KEY_RIGHT_ARROW) then
	case random of
	    label 1 :
		if xlocation <= 9 and count mod 2 = 0 or xlocation <= 7 and count mod 1 = 0 then
		    if count mod 2 = 0 then
			if grid (xlocation + 1, ylocation) = 0 and grid (xlocation + 1, ylocation + 1) = 0 and grid (xlocation + 1, ylocation + 2) = 0 and grid (xlocation + 1, ylocation
				+ 3) = 0 then
			    moveright
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation + 3, ylocation) = 0 then
			    moveright
			end if
		    end if
		end if
	    label 2 :
		if xlocation <= 8 and count mod 4 = 0 or xlocation <= 7 and count mod 3 = 0 or xlocation <= 8 and count mod 2 = 0 or xlocation <= 7 and count mod 1 = 0 then
		    if count mod 4 = 0 then
			if grid (xlocation + 2, ylocation) = 0 and grid (xlocation + 2, ylocation + 1) = 0 and grid (xlocation + 2, ylocation + 2) = 0 then
			    moveright
			end if
		    elsif count mod 3 = 0 then
			if grid (xlocation + 3, ylocation) = 0 and grid (xlocation + 3, ylocation + 1) = 0 then
			    moveright
			end if
		    elsif count mod 2 = 0 then
			if grid (xlocation + 1, ylocation) = 0 and grid (xlocation + 1, ylocation + 1) = 0 and grid (xlocation + 2, ylocation + 2) = 0 then
			    moveright
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation + 3, ylocation) = 0 and grid (xlocation + 1, ylocation + 1) = 0 then
			    moveright
			end if
		    end if
		end if
	    label 3 :
		if xlocation <= 8 and count mod 4 = 0 or xlocation <= 7 and count mod 3 = 0 or xlocation <= 8 and count mod 2 = 0 or xlocation <= 7 and count mod 1 = 0 and count mod 3 not= 0 then
		    if count mod 4 = 0 then
			if grid (xlocation + 2, ylocation) = 0 and grid (xlocation + 1, ylocation + 1) = 0 and grid (xlocation + 1, ylocation + 2) = 0 then
			    moveright
			end if
		    elsif count mod 3 = 0 then
			if grid (xlocation + 3, ylocation) = 0 and grid (xlocation + 3, ylocation + 1) = 0 then
			    moveright
			end if
		    elsif count mod 2 = 0 then
			if grid (xlocation + 2, ylocation + 2) = 0 and grid (xlocation + 2, ylocation + 1) = 0 and grid (xlocation + 2, ylocation) = 0 then
			    moveright
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation + 1, ylocation) = 0 and grid (xlocation + 3, ylocation + 1) = 0 then
			    moveright
			end if
		    end if
		end if
	    label 4 :
		if xlocation <= 8 then
		    if grid (xlocation + 2, ylocation) = 0 and grid (xlocation + 2, ylocation + 1) = 0 then
			moveright
		    end if
		end if
	    label 5 :
		if xlocation <= 8 and count mod 4 = 0 or xlocation <= 8 and count mod 3 = 0 or xlocation <= 8 and count mod 2 = 0 or xlocation <= 8 and count mod 1 = 0 then
		    if count mod 2 = 0 then
			if grid (xlocation + 1, ylocation) = 0 and grid (xlocation + 2, ylocation + 1) = 0 then
			    moveright
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation + 2, ylocation + 1) = 0 and grid (xlocation + 1, ylocation + 2) = 0 and grid (xlocation + 2, ylocation) = 0 then
			    moveright
			end if
		    end if
		end if
	    label 6 :
		if xlocation <= 8 and count mod 4 = 0 or xlocation <= 8 and count mod 3 = 0 or xlocation <= 8 and count mod 2 = 0 or xlocation <= 8 and count mod 1 = 0 then
		    if count mod 2 = 0 then
			if grid (xlocation + 1, ylocation + 1) = 0 and grid (xlocation + 2, ylocation) = 0 then
			    moveright
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation + 1, ylocation) = 0 and grid (xlocation + 2, ylocation + 1) = 0 and grid (xlocation + 2, ylocation + 2) = 0 then
			    moveright
			end if
		    end if
		end if
	    label 7 :
		if xlocation <= 7 and count mod 4 = 0 or xlocation <= 8 and count mod 3 = 0 or xlocation <= 7 and count mod 2 = 0 or xlocation <= 8 and count mod 1 = 0 and count mod 2 not= 0 then
		    if count mod 4 = 0 then
			if grid (xlocation + 2, ylocation) = 0 and grid (xlocation + 1, ylocation + 1) = 0 then
			    moveright
			end if
		    elsif count mod 3 = 0 then
			if grid (xlocation + 2, ylocation) = 0 and grid (xlocation + 2, ylocation + 1) = 0 and grid (xlocation + 2, ylocation + 2) = 0 then
			    moveright
			end if
		    elsif count mod 2 = 0 then
			if grid (xlocation + 2, ylocation + 1) = 0 and grid (xlocation + 1, ylocation) = 0 then
			    moveright
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation + 1, ylocation) = 0 and grid (xlocation + 2, ylocation + 1) = 0 and grid (xlocation + 1, ylocation + 2) = 0 then
			    moveright
			end if
		    end if
		end if
	end case
    end if
    if chars (KEY_LEFT_ARROW) then
	case random of
	    label 1 :
		if xlocation >= 2 and count mod 2 = 0 or xlocation >= 3 and count mod 1 = 0 then
		    if count mod 2 = 0 then
			if grid (xlocation - 1, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 and grid (xlocation - 1, ylocation + 2) = 0 and grid (xlocation - 1, ylocation
				+ 3) = 0 then
			    moveleft
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation - 2, ylocation) = 0 then
			    moveleft
			end if
		    end if
		end if
	    label 2 :
		if xlocation >= 2 and count mod 4 = 0 or xlocation >= 2 and count mod 3 = 0 or xlocation >= 2 and count mod 2 = 0 and count mod 4 not= 0 or xlocation >= 2 and count mod 1 = 0 and
			count mod 2 not= 0 and count mod 3 not= 0 then
		    if count mod 4 = 0 then
			if grid (xlocation - 1, ylocation) = 0 and grid (xlocation, ylocation + 1) = 0 and grid (xlocation, ylocation + 2) = 0 then
			    moveleft
			end if
		    elsif count mod 3 = 0 then
			if grid (xlocation - 1, ylocation + 1) = 0 and grid (xlocation + 1, ylocation) = 0 then
			    moveleft
			end if
		    elsif count mod 2 = 0 then
			if grid (xlocation - 1, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 and grid (xlocation - 1, ylocation + 2) = 0 then
			    moveleft
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation - 1, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 then
			    moveleft
			end if
		    end if
		end if
	    label 3 :
		if xlocation >= 2 and count mod 4 = 0 or xlocation >= 2 and count mod 3 = 0 or xlocation >= 2 and count mod 2 = 0 and count mod 4 not= 0 or xlocation >= 2 and count mod 1 = 0 and
			count mod 2 not= 0 and count mod 3 not= 0 then
		    if count mod 4 = 0 then
			if grid (xlocation - 1, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 and grid (xlocation - 1, ylocation + 2) = 0 then
			    moveleft
			end if
		    elsif count mod 3 = 0 then
			if grid (xlocation - 1, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 then
			    moveleft
			end if
		    elsif count mod 2 = 0 then
			if grid (xlocation - 1, ylocation + 2) = 0 and grid (xlocation, ylocation + 1) = 0 and grid (xlocation, ylocation) = 0 then
			    moveleft
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation - 1, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 then
			    moveleft
			end if
		    end if
		end if
	    label 4 :
		if xlocation >= 2 then
		    if grid (xlocation - 1, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 then
			moveleft
		    end if
		end if
	    label 5 :
		if xlocation >= 3 and count mod 2 = 0 or xlocation >= 2 and count mod 1 = 0 and count mod 2 not= 0 then
		    if count mod 2 = 0 then
			if grid (xlocation - 2, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 then
			    moveleft
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation - 1, ylocation + 1) = 0 and grid (xlocation - 1, ylocation + 2) = 0 and grid (xlocation, ylocation) = 0 then
			    moveleft
			end if
		    end if
		end if
	    label 6 :
		if xlocation >= 3 and count mod 2 = 0 or xlocation >= 2 and count mod 1 = 0 and count mod 2 not= 0 then
		    if count mod 2 = 0 then
			if grid (xlocation - 2, ylocation + 1) = 0 and grid (xlocation - 1, ylocation) = 0 then
			    moveleft
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation - 1, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 and grid (xlocation, ylocation + 2) = 0 then
			    moveleft
			end if
		    end if
		end if
	    label 7 :
		if xlocation >= 3 and count mod 4 = 0 or xlocation >= 2 and count mod 3 = 0 and count mod 4 not= 0 or xlocation >= 3 and count mod 2 = 0 and count mod 4 not= 0 or xlocation >= 2 and
			count mod 1 = 0 and count mod 2 not= 0 and count mod 3 not= 0 and count mod 4 not= 0 then
		    if count mod 4 = 0 then
			if grid (xlocation - 2, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 then
			    moveleft
			end if
		    elsif count mod 3 = 0 then
			if grid (xlocation, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 and grid (xlocation, ylocation + 2) = 0 then
			    moveleft
			end if
		    elsif count mod 2 = 0 then
			if grid (xlocation - 2, ylocation + 1) = 0 and grid (xlocation - 1, ylocation) = 0 then
			    moveleft
			end if
		    elsif count mod 1 = 0 then
			if grid (xlocation - 1, ylocation) = 0 and grid (xlocation - 1, ylocation + 1) = 0 and grid (xlocation - 1, ylocation + 2) = 0 then
			    moveleft
			end if
		    end if
		end if
	end case
    end if
    if chars (KEY_UP_ARROW) then
	rotate := true
	block (x1, x2, x3, x4, y1, y2, y3, y4, 0)
	case random of
	    label 1 :
		if xlocation <= 1 then
		    xlocation += 1
		elsif xlocation >= 8 then
		    loop
			xlocation -= 1
			exit when xlocation <= 8
		    end loop
		end if
	    label 2, 3 :
		if xlocation >= 9 then
		    xlocation -= 1
		end if
	    label 4 :
	    label 5, 6 :
		if xlocation = 1 then
		    xlocation += 1
		end if
	    label 7 :
		if xlocation <= 1 then
		    xlocation += 1
		end if
	end case
	block (x1, x2, x3, x4, y1, y2, y3, y4, n)
	rcheck
	if rotate = true then
	    delay (30)
	    count += 1
	    rotation
	end if
    end if
    if chars (' ') then
	loop
	    exit when ylocation = 1
	    case random of
		label 1 :
		    if count mod 2 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0
		    elsif count mod 1 = 0 then
			exit when not grid (xlocation - 1, ylocation - 1) = 0 or not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation - 1) = 0 or
			    not grid (xlocation
			    + 2,
			    ylocation - 1) = 0
		    end if
		label 2 :
		    if count mod 4 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation - 1) = 0
		    elsif count mod 3 = 0 then
			exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation) = 0 or not grid (xlocation + 2, ylocation - 1) = 0
		    elsif count mod 2 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation + 1) = 0
		    elsif count mod 1 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation - 1) = 0 or not grid (xlocation + 2, ylocation - 1) = 0
		    end if
		label 3 :
		    if count mod 4 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation - 1) = 0
		    elsif count mod 3 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation - 1) = 0 or not grid (xlocation + 2, ylocation - 1) = 0
		    elsif count mod 2 = 0 then
			exit when not grid (xlocation + 1, ylocation - 1) = 0 or not grid (xlocation, ylocation + 1) = 0
		    elsif count mod 1 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation) = 0 or not grid (xlocation + 2, ylocation) = 0
		    end if
		label 4 :
		    exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation - 1) = 0
		label 5 :
		    if count mod 2 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation - 1, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation) = 0
		    elsif count mod 1 = 0 then
			exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation - 1) = 0
		    end if
		label 6 :
		    if count mod 2 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation - 1) = 0 or not grid (xlocation - 1, ylocation) = 0
		    elsif count mod 1 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation) = 0
		    end if
		label 7 :
		    if count mod 4 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation - 1) = 0 or not grid (xlocation - 1, ylocation - 1) = 0
		    elsif count mod 3 = 0 then
			exit when not grid (xlocation, ylocation) = 0 or not grid (xlocation + 1, ylocation - 1) = 0
		    elsif count mod 2 = 0 then
			exit when not grid (xlocation - 1, ylocation) = 0 or not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation) = 0
		    elsif count mod 1 = 0 then
			exit when not grid (xlocation, ylocation - 1) = 0 or not grid (xlocation + 1, ylocation) = 0
		    end if
	    end case
	    ylocation -= 1
	    block (x1, x2, x3, x4, y1 + 1, y2 + 1, y3 + 1, y4 + 1, 0)
	    block (x1, x2, x3, x4, y1, y2, y3, y4, n)
	end loop
    end if
end locationchange
