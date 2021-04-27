%% BopIt.m
% This program simulates a game of Bop-It by using a single cell array of
% strings to store the strings of the commmands. It randomly generates
% which one should be displayed as well. 
%
% Author: MK McGuirk
% Date: 4/10/21

gameCell= {'Flick It!','Bop It!','Twist It!','Shake It!','Pull It!'};
for iCnt=1:20
    randomNum= randi(length(gameCell)); % finds a random number up to the length 
    % of the cell
    disp(gameCell{randomNum});
end