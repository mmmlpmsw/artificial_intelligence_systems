parent(zinaida, nadezhda).
parent(zinaida, vera).
parent(yuliy, nadezhda).
parent(yuliy, vera).
parent(valerii, elena).
parent(valerii, svetlana).
parent(valerii, evelina).
parent(nadezhda, elena).
parent(nadezhda, svetlana).
parent(nadezhda, evelina).
parent(vera, olya).
parent(vera, dmitrii).
parent(alexander, olya).
parent(alexander, dmitrii).
parent(andrei, sasha).
parent(andrei, vladimir).
parent(tatyana, sasha).
parent(tatyana, vladimir).
parent(alex, nikita).
parent(svetlana, nikita).
parent(olga, alyona).
parent(dmitrii, alyona).
parent(sasha, me).
parent(sasha, marina).
parent(olya, me).
male(yuliy).
male(valerii).
male(alexander).
male(andrei).
male(vladimir).
male(sasha).
male(dmitrii).
male(alex).
male(nikita).
female(zinaida).
female(nadezhda).
female(vera).
female(tatyana).
female(olya).
female(olga).
female(svetlana).
female(elena).
 female(evelina).
female(alyona).
female(marina).
female(me).
spouse(olga, dmitrii).
spouse(olya, sasha).
spouse(zinaida, yuliy).
spouse(valerii, nadezhda).
spouse(alex, svetlana).
spouse(vera, alexander).
spouse(andrei, tatyana).
spouse(X, Y) :- spouse(Y, X).
husband(X, Y) :- spouse(X, Y), male(X).
wife(X, Y) :- spouse(X, Y), female(X).
child(X, Y) :- parent(Y, X).
daughter(X, Y) :- female(X), child(X, Y).
son(X, Y) :- male(X), child(X, Y).
mother(X, Y) :- parent(X, Y), female(X).
father(X, Y) :- parent(X, Y), male(X).
grandparent(X, Y) :- parent(Z, Y), parent(X, Z).
grandpa(X, Y) :-  male(X), grandparent(X, Y).
grandma(X, Y) :- female(X), grandparent(X, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
sister(X, Y) :- sibling(X, Y), female(X).
brother(X, Y) :- sibling(X, Y), male(X).
uncle_aunt(X, Y) :- sibling(X, Z), parent(Z, Y).
uncle_aunt(X, Y) :- spouse(X, A), !,  sibling(A, Z), parent(Z, Y).
uncle(X, Y) :- male(X), uncle_aunt(X, Y).
aunt(X, Y) :- female(X), uncle_aunt(X, Y).
nephew(X, Y) :- parent(Z, X), sibling(Z, Y).
nephew(X, Y) :- parent(Z, X), sibling(Z, A), spouse(A, Y), !.
parent_in_law(X, Y) :- spouse(Y, Z), parent(X, Z).
daughter_in_law(X, Y) :- spouse(Z, X), male(Z), parent(Y, Z).
son_in_law(X, Y) :- spouse(Z, X), female(Z), parent(Y, Z).
brother_in_law(X, Y) :- spouse(Y, Z), brother(X, Z).
sister_in_law(X, Y) :- spouse(Y, Z), sister(X, Z).

great_uncle_aunt(X, Y) :- uncle_aunt(X, Z), parent(Z, Y).
step_sibling(X, Y) :- parent(Z, X), parent(A, X), parent(Z, Y),
not(parent(A, Y)).