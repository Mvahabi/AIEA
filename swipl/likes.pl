%% Sam's likes and dislikes in food

/** <examples>
?- likes(sam,dahl).
?- likes(sam,chop_suey).
?- likes(sam,pizza).
?- likes(sam,chips).
?- likes(sam,curry).
?- likes(sam,tacos).
?- likes(sam,baguette).
*/

% Sam likes Indian food if it's mild
likes(sam,Food) :-
    indian(Food),
    mild(Food).

% Sam likes Chinese food if it's sweet
likes(sam,Food) :-
    chinese(Food),
    sweet(Food).

% Sam likes Italian food
likes(sam,Food) :-
    italian(Food).

% Sam likes Mexican food if it's spicy
likes(sam,Food) :-
    mexican(Food),
    spicy(Food).

% Sam likes French food if it's savory
likes(sam,Food) :-
    french(Food),
    savory(Food).

% Sam likes chips, no matter what
likes(sam,chips).

%% Indian food
indian(curry).
indian(dahl).
indian(tandoori).
indian(kurma).

%% Mild Indian foods
mild(curry).     % Added this fact so Sam likes curry
mild(dahl).
mild(tandoori).
mild(kurma).

%% Chinese food
chinese(chow_mein).
chinese(chop_suey).
chinese(sweet_and_sour).

%% Sweet Chinese foods
sweet(candy).
sweet(sweet_and_sour).

%% Italian food
italian(pizza).
italian(spaghetti).
italian(lasagna).

%% Mexican food
mexican(tacos).
mexican(burritos).
mexican(enchiladas).

%% Spicy Mexican foods
spicy(tacos).
spicy(enchiladas).

%% French food
french(baguette).
french(croissant).
french(escargot).

%% Savory French foods
savory(baguette).
savory(escargot).
