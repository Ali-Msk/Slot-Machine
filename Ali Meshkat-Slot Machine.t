% Slot Machine program
% Purpose : entertainment/game
% Name: Ali Meshkat
% Date: October 30, 2016

%variabels
var keyToContinue1, start, yesOrNo, outT : string
var slot1, slot2, slot3, same, shape1, shape2, shape3 : int
var shape4, shape5, randShape, randShape2, randShape3, points, updatedPoints, winNum : int
points := 1000

setscreen ("graphics:900;600")
var font1, jackpotFont : int
font1 := Font.New ("Times New Roman:20:bold")

% welcome
put "Welcome to the Slot Machine program!!!"
delay (2000)
cls


drawfillbox (220, 180, 330, 140, black)
%body
drawfillbox (150, 60, 700, 450, yellow)
%first slot
drawfillbox (200, 150, 200 + 150, 150 + 150, white)
drawbox (200, 150, 200 + 150, 150 + 150, black)
%second slot
drawfillbox (350, 150, 350 + 150, 150 + 150, white)
drawbox (350, 150, 350 + 150, 150 + 150, black)
%third slot
drawfillbox (500, 150, 500 + 150, 300, white)
drawbox (500, 150, 500 + 150, 150 + 150, black)
%credit box
drawfillbox (325, 75, 325 + 200, 75 + 50, white)
drawbox (325, 75, 325 + 200, 75 + 50, black)
% top lights
%maple
drawfillmapleleaf (375, 475, 475, 575, red)
drawfillbox (420, 450, 430, 496, black)
%circle light
drawfilloval (250, 510, 10, 10, green)
drawfillbox (248, 450, 252, 500, black)
%circle light
drawfilloval (250 + 350, 510, 10, 10, green)
drawfillbox (248 + 350, 450, 252 + 350, 500, black)

%maple sample (jakpot)
drawfillmapleleaf (290, 400, 330, 440, red)
drawfillmapleleaf (290 + 45, 400, 330 + 45, 440, red)
drawfillmapleleaf (290 + 90, 400, 330 + 90, 440, red)
Font.Draw ("1000", 290 + 180, 413, font1, red)
drawfillbox (290 + 145, 413, 330 + 125, 417, black)
drawfillbox (290 + 145, 423, 330 + 125, 427, black)

% magenta sqares
drawfillbox (175, 325, 200, 350, magenta)
drawfillbox (175 + 40, 325, 200 + 40, 350, magenta)
drawfillbox (175 + 80, 325, 200 + 80, 350, magenta)
drawfillbox (175 + 120, 325 + 5, 175 + 138, 325 + 8, black)
drawfillbox (175 + 120, 325 + 15, 175 + 138, 325 + 18, black)
Font.Draw ("80", 175 + 150, 325 + 3, font1, black)


% grey stars
drawfillstar (175, 325 + 40, 200, 350 + 40, grey)
drawfillstar (175 + 40, 325 + 40, 200 + 40, 350 + 40, grey)
drawfillstar (175 + 80, 325 + 40, 200 + 80, 350 + 40, grey)
drawfillbox (175 + 120, 325 + 45, 175 + 138, 325 + 48, black)
drawfillbox (175 + 120, 325 + 55, 175 + 138, 325 + 58, black)
Font.Draw ("200", 175 + 150, 325 + 43, font1, black)


% green sqares
drawfillbox (175 + 300, 325 + 40, 200 + 300, 350 + 40, green)
drawfillbox (175 + 340, 325 + 40, 200 + 340, 350 + 40, green)
drawfillbox (175 + 380, 325 + 40, 200 + 380, 350 + 40, green)
drawfillbox (175 + 420, 325 + 45, 175 + 438, 325 + 48, black)
drawfillbox (175 + 420, 325 + 55, 175 + 438, 325 + 58, black)
Font.Draw ("100", 175 + 450, 325 + 43, font1, black)


% blue circles
drawfilloval (175 + 312, 325 + 12, 13, 12, blue)
drawfilloval (175 + 352, 325 + 12, 13, 12, blue)
drawfilloval (175 + 392, 325 + 12, 13, 12, blue)
drawfillbox (175 + 420, 325 + 5, 175 + 438, 325 + 8, black)
drawfillbox (175 + 420, 325 + 15, 175 + 438, 325 + 18, black)
Font.Draw ("40", 175 + 450, 325 + 3, font1, black)

%%%%%%refrence for shapes %%%%%%




%%%Slot 1
%shape 1
%drawfilloval(275,225,55,55,red)
%shape2
%drawfilloval(275,225,55,55, blue)
%shape 3
%drawfillbox(220,170,330,280, magenta)
%shape 4
%drawfillbox(220,170,330,280, green)
%shape 5
%drawfillstar(220,170,330,280, grey)
%shape 6
%drawfillmapleleaf(220,170,330,280, red)



%%%Slot 2
%shape 1
%drawfilloval(275+150,225,55,55,red)
%shape2
%drawfilloval(275+150,225,55,55, blue)
%shape 3
%drawfillbox(220+150,170,330+150,280, magenta)
%shape 4
%drawfillbox(220+150,170,330+150,280, green)
%shape 5
%drawfillstar(220+150,170,330+150,280, grey)
%shape 6
%drawfillmapleleaf(220+150,170,330+150,280, red)



%%%Slot 3
%shape 1
%drawfilloval(275+300,225,55,55,red)
%shape2
%drawfilloval(275+300,225,55,55, blue)
%shape 3
%drawfillbox(220+300,170,330+300,280, magenta)
%shape 4
%drawfillbox(220+300,170,330+300,280, green)
%shape 5
%drawfillstar(220+300,170,330+300,280, grey)
%shape 6
%drawfillmapleleaf(220+300,170,330+300,280, red)



%%%%%%% asks the user for tutorial or game

put "Would you like to go through a tutorial? (Yes/No): "
get yesOrNo : *

%tutorial
if yesOrNo = "Yes" or yesOrNo = "yes" or yesOrNo = "YES" then
    cls
    put "Welcome to The Slot Machine's tutorial!"
    put "The goal of this game is to win lots of points. ", "You will be given three random shapes every round."
    put "To win more points, the three shapes you get must be identical!!"
    put "Here are some winning sets you can get:"
    put ""
    put ""
    put ""
    put ""
    put ""
    put "But the following combinations have no points:"
    put ""
    put ""
    put ""
    put ""
    put "You start the game with 1000 points and every try costs you 5 points"
    put "Remember, different sets of shapes have different points!!!"
    put ""
    put "Now you're all set! You can start the game and HAVE FUN!!"
    % grey stars
    drawfillstar (175 - 160, 325 + 140, 200 - 160, 350 + 140, grey)
    drawfillstar (175 - 120, 325 + 140, 200 - 120, 350 + 140, grey)
    drawfillstar (175 - 80, 325 + 140, 200 - 80, 350 + 140, grey)
    % magenta sqares
    drawfillbox (175 - 160, 325 + 180, 200 - 160, 350 + 180, magenta)
    drawfillbox (175 - 120, 325 + 180, 200 - 120, 350 + 180, magenta)
    drawfillbox (175 - 80, 325 + 180, 200 - 80, 350 + 180, magenta)
    %blue circle and red circle
    drawfilloval (15 + 12, 325 + 102, 13, 12, blue)
    drawfilloval (15 + 52, 325 + 102, 13, 12, blue)
    drawfilloval (15 + 92, 325 + 102, 13, 12, red)
    % grey stars and maple leaf
    drawfillstar (175 - 160, 325 + 50, 200 - 160, 350 + 50, grey)
    drawfillmapleleaf (175 - 120, 325 + 50, 200 - 120, 350 + 50, red)
    drawfillstar (175 - 80, 325 + 50, 200 - 80, 350 + 50, grey)
    put "Please press enter to start the game "
    get outT : *
end if
cls
%
%%%%%%%

%%%%%%%%%%
var gameNum : int := 0
winNum := 0
updatedPoints := 1000
points := 1000
% in the pogram updatedPoints represents the current points the player has
% and  points represents the value before the current points
% Ex. when the program is started with te value of 1000 for both points and updated points
% when the first round starts, the updatedPoints becomes 995 while the points is still at 1000 which is the value before updatedPoints
% if user wins the round updatedPoitns + points will be the updatedPoints and points will become 995 ( the LAST value for updatedPoints)
% this is to help with getting the points displayed change one by one Ex. 1000 to 995 will be displayed as 1000, then 999, then 998 ... and 995
loop

    gameNum += 1
    %%%%%%%%%%The Machine 
    %body
    drawfillbox (150, 60, 700, 450, yellow)
    %first slot
    drawfillbox (200, 150, 200 + 150, 150 + 150, white)
    drawbox (200, 150, 200 + 150, 150 + 150, black)
    %second slot
    drawfillbox (350, 150, 350 + 150, 150 + 150, white)
    drawbox (350, 150, 350 + 150, 150 + 150, black)
    %third slot
    drawfillbox (500, 150, 500 + 150, 300, white)
    drawbox (500, 150, 500 + 150, 150 + 150, black)
    %credit box
    drawfillbox (325, 75, 325 + 200, 75 + 50, white)
    drawbox (325, 75, 325 + 200, 75 + 50, black)
    % top lights
    %maple
    drawfillmapleleaf (375, 475, 475, 575, red)
    drawfillbox (420, 450, 430, 496, black)
    %circle light
    drawfilloval (250, 510, 10, 10, green)
    drawfillbox (248, 450, 252, 500, black)
    %circle light
    drawfilloval (250 + 350, 510, 10, 10, green)
    drawfillbox (248 + 350, 450, 252 + 350, 500, black)
    %maple sample (jakpot)
    drawfillmapleleaf (290, 400, 330, 440, red)
    drawfillmapleleaf (290 + 45, 400, 330 + 45, 440, red)
    drawfillmapleleaf (290 + 90, 400, 330 + 90, 440, red)
    %%%%%%%%%%%%%% CHANGE FONT %%%%%%%%%%%%%%%%%%
    Font.Draw ("1000", 290 + 180, 413, font1, red)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    drawfillbox (290 + 145, 413, 330 + 125, 417, black)
    drawfillbox (290 + 145, 423, 330 + 125, 427, black)

    % magenta sqares
    drawfillbox (175, 325, 200, 350, magenta)
    drawfillbox (175 + 40, 325, 200 + 40, 350, magenta)
    drawfillbox (175 + 80, 325, 200 + 80, 350, magenta)
    drawfillbox (175 + 120, 325 + 5, 175 + 138, 325 + 8, black)
    drawfillbox (175 + 120, 325 + 15, 175 + 138, 325 + 18, black)
    Font.Draw ("80", 175 + 150, 325 + 3, font1, black)


    % grey stars
    drawfillstar (175, 325 + 40, 200, 350 + 40, grey)
    drawfillstar (175 + 40, 325 + 40, 200 + 40, 350 + 40, grey)
    drawfillstar (175 + 80, 325 + 40, 200 + 80, 350 + 40, grey)
    drawfillbox (175 + 120, 325 + 45, 175 + 138, 325 + 48, black)
    drawfillbox (175 + 120, 325 + 55, 175 + 138, 325 + 58, black)
    Font.Draw ("200", 175 + 150, 325 + 43, font1, black)


    % green sqares
    drawfillbox (175 + 300, 325 + 40, 200 + 300, 350 + 40, green)
    drawfillbox (175 + 340, 325 + 40, 200 + 340, 350 + 40, green)
    drawfillbox (175 + 380, 325 + 40, 200 + 380, 350 + 40, green)
    drawfillbox (175 + 420, 325 + 45, 175 + 438, 325 + 48, black)
    drawfillbox (175 + 420, 325 + 55, 175 + 438, 325 + 58, black)
    Font.Draw ("100", 175 + 450, 325 + 43, font1, black)


    % blue circles
    drawfilloval (175 + 312, 325 + 12, 13, 12, blue)
    drawfilloval (175 + 352, 325 + 12, 13, 12, blue)
    drawfilloval (175 + 392, 325 + 12, 13, 12, blue)
    drawfillbox (175 + 420, 325 + 5, 175 + 438, 325 + 8, black)
    drawfillbox (175 + 420, 325 + 15, 175 + 438, 325 + 18, black)
    Font.Draw ("40", 175 + 450, 325 + 3, font1, black)
    %%%%%%%%%%
    
    %%Display the points while making them count from points to updatedPoints
    Font.Draw (intstr (updatedPoints), 396, 92, font1, red)
    points := updatedPoints
    %%

    %%%%% asks the user  to exit or to play another round
    if gameNum = 1 then
	put "Please press enter to start: " ..
	get start : *
    else
	put "If you wish to end the game please type 'exit' otherwise, press enter for another round! : "
	get start : *
    end if
    %%%%%

    %%%exiting the loop
    if start = "exit" or start = "Exit" or start = "EXIT" then
	gameNum -= 1
    end if

    
    exit when start = "exit" or start = "Exit" or start = "EXIT" or updatedPoints = 0     %(bankrupcy)
    %%%


    %%%%shows the user the points counter
    var pointerNum : int := 0
    var font4 : int
    font4 := Font.New ("Times New Roman:16:bold")
    
    if gameNum = 1 then
	loop
	    pointerNum += 1
	    drawbox (160, 80, 247, 120, black)
	    drawline (247, 65, 300, 100, black)
	    drawline (247, 135, 300, 100, black)
	    drawline (247, 81, 247, 119, yellow)
	    drawline (247, 65, 247, 80, black)
	    drawline (247, 120, 247, 135, black)
	    Font.Draw ("Your Points", 162, 95, font4, black)
	    delay (500)
	    %body
	    drawfillbox (150, 60, 700, 450, yellow)
	    %first slot
	    drawfillbox (200, 150, 200 + 150, 150 + 150, white)
	    drawbox (200, 150, 200 + 150, 150 + 150, black)
	    %second slot
	    drawfillbox (350, 150, 350 + 150, 150 + 150, white)
	    drawbox (350, 150, 350 + 150, 150 + 150, black)
	    %third slot
	    drawfillbox (500, 150, 500 + 150, 300, white)
	    drawbox (500, 150, 500 + 150, 150 + 150, black)
	    %credit box
	    drawfillbox (325, 75, 325 + 200, 75 + 50, white)
	    drawbox (325, 75, 325 + 200, 75 + 50, black)
	    % top lights
	    %maple
	    drawfillmapleleaf (375, 475, 475, 575, red)
	    drawfillbox (420, 450, 430, 496, black)
	    %circle light
	    drawfilloval (250, 510, 10, 10, green)
	    drawfillbox (248, 450, 252, 500, black)
	    %circle light
	    drawfilloval (250 + 350, 510, 10, 10, green)
	    drawfillbox (248 + 350, 450, 252 + 350, 500, black)
	    %maple sample (jakpot)
	    drawfillmapleleaf (290, 400, 330, 440, red)
	    drawfillmapleleaf (290 + 45, 400, 330 + 45, 440, red)
	    drawfillmapleleaf (290 + 90, 400, 330 + 90, 440, red)
	    Font.Draw ("1000", 290 + 180, 413, font1, red)
	    drawfillbox (290 + 145, 413, 330 + 125, 417, black)
	    drawfillbox (290 + 145, 423, 330 + 125, 427, black)
	    % magenta sqares
	    drawfillbox (175, 325, 200, 350, magenta)
	    drawfillbox (175 + 40, 325, 200 + 40, 350, magenta)
	    drawfillbox (175 + 80, 325, 200 + 80, 350, magenta)
	    drawfillbox (175 + 120, 325 + 5, 175 + 138, 325 + 8, black)
	    drawfillbox (175 + 120, 325 + 15, 175 + 138, 325 + 18, black)
	    Font.Draw ("80", 175 + 150, 325 + 3, font1, black)
	    % grey stars
	    drawfillstar (175, 325 + 40, 200, 350 + 40, grey)
	    drawfillstar (175 + 40, 325 + 40, 200 + 40, 350 + 40, grey)
	    drawfillstar (175 + 80, 325 + 40, 200 + 80, 350 + 40, grey)
	    drawfillbox (175 + 120, 325 + 45, 175 + 138, 325 + 48, black)
	    drawfillbox (175 + 120, 325 + 55, 175 + 138, 325 + 58, black)
	    Font.Draw ("200", 175 + 150, 325 + 43, font1, black)
	    % green sqares
	    drawfillbox (175 + 300, 325 + 40, 200 + 300, 350 + 40, green)
	    drawfillbox (175 + 340, 325 + 40, 200 + 340, 350 + 40, green)
	    drawfillbox (175 + 380, 325 + 40, 200 + 380, 350 + 40, green)
	    drawfillbox (175 + 420, 325 + 45, 175 + 438, 325 + 48, black)
	    drawfillbox (175 + 420, 325 + 55, 175 + 438, 325 + 58, black)
	    Font.Draw ("100", 175 + 450, 325 + 43, font1, black)
	    % blue circles
	    drawfilloval (175 + 312, 325 + 12, 13, 12, blue)
	    drawfilloval (175 + 352, 325 + 12, 13, 12, blue)
	    drawfilloval (175 + 392, 325 + 12, 13, 12, blue)
	    drawfillbox (175 + 420, 325 + 5, 175 + 438, 325 + 8, black)
	    drawfillbox (175 + 420, 325 + 15, 175 + 438, 325 + 18, black)
	    Font.Draw ("40", 175 + 450, 325 + 3, font1, black)
	    % points
	    Font.Draw (intstr (updatedPoints), 396, 92, font1, red)
	    delay (700)
	    exit when pointerNum = 4
	end loop
    end if
    %%%%


    %cost to play
    updatedPoints -= 5
    %

    %%Display the points while making them count from points to updatedPoints
    for decreasing number : points .. updatedPoints
	drawfillbox (325, 75, 525, 125, white)
	drawbox (325, 75, 525, 125, black)
	Font.Draw (intstr (number), 396, 92, font1, red)
	delay (100)
    end for
    
    drawfillbox (325, 75, 525, 125, white)
    drawbox (325, 75, 525, 125, black)
    Font.Draw (intstr (updatedPoints), 396, 92, font1, red)
    
    points := updatedPoints
    %%

    %getting then the random number for game shapes
    slot1 := Rand.Int (1, 6)
    slot2 := Rand.Int (1, 6)
    slot3 := Rand.Int (1, 6)
    %


    %%%%chance - changes the chance for different combinations
    %%%jackpot
    if slot1 = 6 and slot2 = 6 and slot3 = 6 then
	slot3 := Rand.Int (1, 6)
    end if
    if slot1 = 6 and slot2 = 6 and slot3 = 6 then
	slot3 := Rand.Int (1, 6)
    end if
    if slot1 = 6 and slot2 = 6 and slot3 = 6 then
	slot3 := Rand.Int (1, 6)
    end if
    %%%


    %%small wins
    % red circle
    if slot1 = slot2 and slot1 = 1 and slot3 not= 1 then
	slot3 := Rand.Int (1, 2)
    elsif slot1 = slot3 and slot1 = 1 and slot2 not= 1 then
	slot2 := Rand.Int (1, 2)
    elsif slot2 = slot3 and slot3 = 1 and slot1 not= 1 then
	slot1 := Rand.Int (1, 2)

    end if
    %

    % blue circle
    if slot1 = slot2 and slot1 = 2 and slot3 not= 2 then
	slot3 := Rand.Int (1, 2)
    elsif slot1 = slot3 and slot1 = 2 and slot2 not= 2 then
	slot2 := Rand.Int (1, 2)
    elsif slot2 = slot3 and slot3 = 2 and slot1 not= 2 then
	slot1 := Rand.Int (1, 2)
    end if
    %
    %%
    %%%%

    %%%%% CHEAT
    if start = "greedisgood1000" then
	slot1 := 6
	slot2 := 6
	slot3 := 6
    end if
    %%%%%

    %%%%%%%%%%%   RANDOM SHAPES APPEARING AND DISPLAYING GAME SHAPES  %%%%%%%%%%%%%
    %to simulate the behavior of a real machine
    %show random different shapes that appear constantly and
    %finally stop on one (shows the right shape at the end)
    %(they stop one by one) (slot1 stops first, then second
    %and then third)
    var randShapeTwo : int := 0
    var randShapeTwo2 : int := 0
    var randShapeTwo3 : int := 0
    var loopNum : int := 0
    randShape := 0
    randShape2 := 0
    randShape3 := 0
    %%%%%%FIRST SLOT (1)%%%%%%
    loop

	%first slot
	drawfillbox (200, 150, 200 + 150, 150 + 150, white)
	drawbox (200, 150, 200 + 150, 150 + 150, black)
	randShapeTwo := randShape
	randShape := Rand.Int (1, 6)

	%%%to avoid showing the same shape twice in a row
	if randShapeTwo = randShape and randShape = 6 then
	    randShape := Rand.Int (1, 5)
	elsif randShapeTwo = randShape and randShape not= 1 then
	    randShape := Rand.Int (1, randShape - 1)
	elsif randShapeTwo = randShape and randShape = 1 then
	    randShape := Rand.Int (2, 6)
	end if
	%%%



	%showing the shapes
	if randShape = 1 then
	    drawfilloval (275, 225, 55, 55, red)
	elsif randShape = 2 then
	    drawfilloval (275, 225, 55, 55, blue)
	elsif randShape = 3 then
	    drawfillbox (220, 170, 330, 280, magenta)
	elsif randShape = 4 then
	    drawfillbox (220, 170, 330, 280, green)
	elsif randShape = 5 then
	    drawfillstar (220, 170, 330, 280, grey)
	else
	    drawfillmapleleaf (220, 170, 330, 280, red)
	end if




	%second slot
	drawfillbox (350, 150, 350 + 150, 150 + 150, white)
	drawbox (350, 150, 350 + 150, 150 + 150, black)
	randShapeTwo2 := randShape2
	randShape2 := Rand.Int (1, 6)
	%%%to avoid showing the same shape twice in a row
	if randShapeTwo2 = randShape2 and randShape2 = 6 then
	    randShape2 := Rand.Int (1, 5)
	elsif randShapeTwo2 = randShape2 and randShape2 = 1 then
	    randShape2 := Rand.Int (2, 6)
	elsif randShapeTwo2 = randShape2 and randShape2 not= 1 then
	    randShape2 := Rand.Int (1, randShape2 - 1)
	end if
	%%%



	%showing the shapes
	if randShape2 = 1 then
	    drawfilloval (275 + 150, 225, 55, 55, red)
	elsif randShape2 = 2 then
	    drawfilloval (275 + 150, 225, 55, 55, blue)
	elsif randShape2 = 3 then
	    drawfillbox (220 + 150, 170, 330 + 150, 280, magenta)
	elsif randShape2 = 4 then
	    drawfillbox (220 + 150, 170, 330 + 150, 280, green)
	elsif randShape2 = 5 then
	    drawfillstar (220 + 150, 170, 330 + 150, 280, grey)
	else
	    drawfillmapleleaf (220 + 150, 170, 330 + 150, 280, red)
	end if




	%third slot
	drawfillbox (500, 150, 500 + 150, 300, white)
	drawbox (500, 150, 500 + 150, 150 + 150, black)
	randShapeTwo3 := randShape3
	randShape3 := Rand.Int (1, 6)
	%%%to avoid showing the same shape twice in a row
	if randShapeTwo3 = randShape3 and randShape3 = 6 then
	    randShape3 := Rand.Int (1, 5)
	elsif randShapeTwo3 = randShape3 and randShape3 not= 1 then
	    randShape3 := Rand.Int (1, randShape3 - 1)
	elsif randShapeTwo3 = randShape3 and randShape3 = 1 then
	    randShape3 := Rand.Int (2, 6)
	end if
	%%%



	%showing the shapes
	if randShape3 = 1 then
	    drawfilloval (275 + 300, 225, 55, 55, red)
	elsif randShape3 = 2 then
	    drawfilloval (275 + 300, 225, 55, 55, blue)
	elsif randShape3 = 3 then
	    drawfillbox (220 + 300, 170, 330 + 300, 280, magenta)
	elsif randShape3 = 4 then
	    drawfillbox (220 + 300, 170, 330 + 300, 280, green)
	elsif randShape3 = 5 then
	    drawfillstar (220 + 300, 170, 330 + 300, 280, grey)
	else
	    drawfillmapleleaf (220 + 300, 170, 330 + 300, 280, red)
	end if




	delay (100)
	loopNum += 1
	exit when loopNum = 20
    end loop

    %%display the game Shape number 1 in slot 1


    drawfillbox (200, 150, 200 + 150, 150 + 150, white)
    drawbox (200, 150, 200 + 150, 150 + 150, black)


    if slot1 = 1 then
	drawfilloval (275, 225, 55, 55, red)
    elsif slot1 = 2 then
	drawfilloval (275, 225, 55, 55, blue)
    elsif slot1 = 3 then
	drawfillbox (220, 170, 330, 280, magenta)
    elsif slot1 = 4 then
	drawfillbox (220, 170, 330, 280, green)
    elsif slot1 = 5 then
	drawfillstar (220, 170, 330, 280, grey)
    else
	drawfillmapleleaf (220, 170, 330, 280, red)
    end if








    %%%%%%SECOND SLOT (2)%%%%%%
    randShape2 := 0
    randShape3 := 0
    randShapeTwo2 := 0
    randShapeTwo3 := 0
    loopNum := 0
    
    loop
	%second slot
	drawfillbox (350, 150, 350 + 150, 150 + 150, white)
	drawbox (350, 150, 350 + 150, 150 + 150, black)
	randShapeTwo2 := randShape2
	randShape2 := Rand.Int (1, 6)
	%%%to avoid showing the same shape twice in a row
	if randShapeTwo2 = randShape2 and randShape2 = 6 then
	    randShape2 := Rand.Int (1, 5)
	elsif randShapeTwo2 = randShape2 and randShape2 = 1 then
	    randShape2 := Rand.Int (2, 6)
	elsif randShapeTwo2 = randShape2 and randShape2 not= 1 then
	    randShape2 := Rand.Int (1, randShape2 - 1)
	end if
	%%%



	%showing the shapes
	if randShape2 = 1 then
	    drawfilloval (275 + 150, 225, 55, 55, red)
	elsif randShape2 = 2 then
	    drawfilloval (275 + 150, 225, 55, 55, blue)
	elsif randShape2 = 3 then
	    drawfillbox (220 + 150, 170, 330 + 150, 280, magenta)
	elsif randShape2 = 4 then
	    drawfillbox (220 + 150, 170, 330 + 150, 280, green)
	elsif randShape2 = 5 then
	    drawfillstar (220 + 150, 170, 330 + 150, 280, grey)
	else
	    drawfillmapleleaf (220 + 150, 170, 330 + 150, 280, red)
	end if




	%third slot
	drawfillbox (500, 150, 500 + 150, 300, white)
	drawbox (500, 150, 500 + 150, 150 + 150, black)
	randShapeTwo3 := randShape3
	randShape3 := Rand.Int (1, 6)
	%%%to avoid showing the same shape twice in a row
	if randShapeTwo3 = randShape3 and randShape3 = 6 then
	    randShape3 := Rand.Int (1, 5)
	elsif randShapeTwo3 = randShape3 and randShape3 not= 1 then
	    randShape3 := Rand.Int (1, randShape3 - 1)
	elsif randShapeTwo3 = randShape3 and randShape3 = 1 then
	    randShape3 := Rand.Int (2, 6)
	end if
	%%%



	%showing the shapes
	if randShape3 = 1 then
	    drawfilloval (275 + 300, 225, 55, 55, red)
	elsif randShape3 = 2 then
	    drawfilloval (275 + 300, 225, 55, 55, blue)
	elsif randShape3 = 3 then
	    drawfillbox (220 + 300, 170, 330 + 300, 280, magenta)
	elsif randShape3 = 4 then
	    drawfillbox (220 + 300, 170, 330 + 300, 280, green)
	elsif randShape3 = 5 then
	    drawfillstar (220 + 300, 170, 330 + 300, 280, grey)
	else
	    drawfillmapleleaf (220 + 300, 170, 330 + 300, 280, red)
	end if




	delay (100)
	loopNum += 1
	exit when loopNum = 20
    end loop


    %diaplay game shape number 2 in slot 2

    drawfillbox (350, 150, 350 + 150, 150 + 150, white)
    drawbox (350, 150, 350 + 150, 150 + 150, black)
    if slot2 = 1 then
	drawfilloval (275 + 150, 225, 55, 55, red)
    elsif slot2 = 2 then
	drawfilloval (275 + 150, 225, 55, 55, blue)
    elsif slot2 = 3 then
	drawfillbox (220 + 150, 170, 330 + 150, 280, magenta)
    elsif slot2 = 4 then
	drawfillbox (220 + 150, 170, 330 + 150, 280, green)
    elsif slot2 = 5 then
	drawfillstar (220 + 150, 170, 330 + 150, 280, grey)
    else
	drawfillmapleleaf (220 + 150, 170, 330 + 150, 280, red)
    end if

    %%%%%%THIRD SLOT (3)%%%%%%
    randShape3 := 0
    randShapeTwo3 := 0
    loopNum := 0

    loop
	drawfillbox (500, 150, 500 + 150, 300, white)
	drawbox (500, 150, 500 + 150, 150 + 150, black)
	randShapeTwo3 := randShape3
	randShape3 := Rand.Int (1, 6)
	%%%to avoid showing the same shape twice in a row
	if randShapeTwo3 = randShape3 and randShape3 = 6 then
	    randShape3 := Rand.Int (1, 5)
	elsif randShapeTwo3 = randShape3 and randShape3 not= 1 then
	    randShape3 := Rand.Int (1, randShape3 - 1)
	elsif randShapeTwo3 = randShape3 and randShape3 = 1 then
	    randShape3 := Rand.Int (2, 6)
	end if
	%%%



	%showing the shapes
	if randShape3 = 1 then
	    drawfilloval (275 + 300, 225, 55, 55, red)
	elsif randShape3 = 2 then
	    drawfilloval (275 + 300, 225, 55, 55, blue)
	elsif randShape3 = 3 then
	    drawfillbox (220 + 300, 170, 330 + 300, 280, magenta)
	elsif randShape3 = 4 then
	    drawfillbox (220 + 300, 170, 330 + 300, 280, green)
	elsif randShape3 = 5 then
	    drawfillstar (220 + 300, 170, 330 + 300, 280, grey)
	else
	    drawfillmapleleaf (220 + 300, 170, 330 + 300, 280, red)
	end if




	delay (100)
	loopNum += 1
	exit when loopNum = 20
    end loop
    %showing game shape 3 in slot 3
    drawfillbox (500, 150, 500 + 150, 300, white)
    drawbox (500, 150, 500 + 150, 150 + 150, black)

    if slot3 = 1 then
	drawfilloval (275 + 300, 225, 55, 55, red)
    elsif slot3 = 2 then
	drawfilloval (275 + 300, 225, 55, 55, blue)
    elsif slot3 = 3 then
	drawfillbox (220 + 300, 170, 330 + 300, 280, magenta)
    elsif slot3 = 4 then
	drawfillbox (220 + 300, 170, 330 + 300, 280, green)
    elsif slot3 = 5 then
	drawfillstar (220 + 300, 170, 330 + 300, 280, grey)
    else
	drawfillmapleleaf (220 + 300, 170, 330 + 300, 280, red)
    end if


    %%%%%%%%%%%%%%%%%%%%%%%%%%%% END OF DISPLAYING THE SHAPES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %%%%%%%%%%%%%%%% giving points %%%%%%%%%%%%%%%%%%
    %constants for each combination

    %%% to make programming easier
    same := 0
    if slot1 = slot2 and slot2 = slot3 then
	same := slot1
    end if

    const POINTS_WON1 : int := 20
    const POINTS_WON2 : int := 40
    const POINTS_WON3 : int := 80
    const POINTS_WON4 : int := 100
    const POINTS_WON5 : int := 200
    const POINTS_WON6 : int := 1000

    if same = 1 then
	updatedPoints := points + POINTS_WON1
    elsif same = 2 then
	updatedPoints := points + POINTS_WON2
    elsif same = 3 then
	updatedPoints := points + POINTS_WON3
    elsif same = 4 then
	updatedPoints := points + POINTS_WON4
    elsif same = 5 then
	updatedPoints := points + POINTS_WON5
    elsif same = 6 then
	updatedPoints := points + POINTS_WON6
    end if




    %%Display the points while making them count from points to updatedPoints
    
    if updatedPoints not= points then
	for number : points .. updatedPoints
	    drawfillbox (325, 75, 525, 125, white)
	    drawbox (325, 75, 525, 125, black)
	    Font.Draw (intstr (number), 396, 92, font1, red)
	    delay (75)
	end for
    end if
    Font.Draw (intstr (updatedPoints), 396, 92, font1, red)



    % flashing lights when win
    var font3 : int
    font3 := Font.New ("Times New Roman:40:bold")
    var flashNum : int := 0
    
    if same = 1 or same = 2 or same = 3 or same = 4 or same = 5 or same = 6 then
	winNum += 1
	if same = 1 then
	    Font.Draw ("Congratulations, you won 20 points!", 60, 300, font3, 23)
	elsif same = 2 then
	    Font.Draw ("Congratulations, you won 40 points!", 60, 300, font3, 23)
	elsif same = 3 then
	    Font.Draw ("Congratulations, you won 80 points!", 60, 300, font3, 23)
	elsif same = 4 then
	    Font.Draw ("Congratulations, you won 100 points!", 60, 300, font3, 23)
	elsif same = 5 then
	    Font.Draw ("Congratulations, you won 200 points!", 60, 300, font3, 23)
	elsif same = 6 then
	    Font.Draw ("Congratulations, you won 1000 points!", 60, 300, font3, 23)
	end if
	
	
	loop
	    drawfillmapleleaf (375, 475, 475, 575, white)
	    drawfilloval (250, 510, 10, 10, white)
	    drawfilloval (250 + 350, 510, 10, 10, white)
	    drawmapleleaf (375, 475, 475, 575, red)
	    drawfillbox (420, 450, 430, 496, black)
	    drawoval (250, 510, 10, 10, green)
	    drawoval (250 + 350, 510, 10, 10, green)
	    delay (1000)
	    drawfillmapleleaf (375, 475, 475, 575, red)
	    drawfillbox (420, 450, 430, 496, black)
	    drawfilloval (250, 510, 10, 10, green)
	    drawfilloval (250 + 350, 510, 10, 10, green)
	    delay (1000)
	    flashNum += 1
	    exit when flashNum = 4
	end loop
    end if



    %% shortens the delay after the game if user wins, since flashing lights and points increasing is already a long wait for the user
    if same = 1 or same = 2 or same = 3 or same = 4 or same = 5 or same = 6 then
	delay (500)             % winner delay (shortened)
    else
	delay (3000)             % original delay
    end if
    %%

    cls

end loop


cls

var pointsWon : int
pointsWon := updatedPoints + (gameNum * 5) - 1000

put "You finished the game with ", updatedPoints, " points!!!"
put "Number of rounds played: ", gameNum
put "Number of wins: ", winNum
put "Total points won: ", pointsWon
put "Thank you for using the Slot Machine program!!"

if updatedPoints = 0 then
    put "Sorry, you lose. You are out of points ):"
end if




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   END OF PROGRAM   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
