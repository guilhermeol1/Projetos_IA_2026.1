% Base de conhecimento Prolog equivalente a arvore de decisao treinada
% sobre o dataset Mushroom (Agaricus-Lepiota), profundidade maxima 3.

classificar(Odor, Bruises, StalkRoot, _SporePrintColor, _StalkSurfaceBelowRing, p) :-
    Odor \= n, Bruises \= f, StalkRoot \= c.

classificar(Odor, Bruises, StalkRoot, _SporePrintColor, _StalkSurfaceBelowRing, e) :-
    Odor \= n, Bruises \= f, StalkRoot = c.

classificar(Odor, Bruises, _StalkRoot, _SporePrintColor, _StalkSurfaceBelowRing, p) :-
    Odor \= n, Bruises = f.

classificar(Odor, _Bruises, _StalkRoot, SporePrintColor, StalkSurfaceBelowRing, e) :-
    Odor = n, SporePrintColor \= r, StalkSurfaceBelowRing \= y.

classificar(Odor, _Bruises, _StalkRoot, SporePrintColor, StalkSurfaceBelowRing, p) :-
    Odor = n, SporePrintColor \= r, StalkSurfaceBelowRing = y.

classificar(Odor, _Bruises, _StalkRoot, SporePrintColor, _StalkSurfaceBelowRing, p) :-
    Odor = n, SporePrintColor = r.
