/* -----ΕΙΔΟΣ ΤΑΙΝΙΑΣ----- */
common_genre(X,Y,G):- genre(X,G), genre(Y,G), X \= Y.

/* ΤΟΥΛΑΧΙΣΤΟΝ ΕΝΑ ΕΙΔΟΣ ΙΔΙΟ */
common_genre_1(X, Y):- common_genre(X,Y,G1). 

/* ΤΟΥΛΑΧΙΣΤΟΝ ΤΡΙΑ ΕΙΔΗ ΙΔΙΑ */
common_genre_3(X,Y):- common_genre(X,Y,G1), common_genre(X,Y,G2), common_genre(X,Y,G3), G1 \= G2, G1 \= G3, G2 \= G3.

/* ΤΟΥΛΑΧΙΣΤΟΝ ΠΕΝΤΕ ΕΙΔΗ ΙΔΙΑ */
common_genre_5(X,Y):- common_genre(X, Y, G1), common_genre(X, Y, G2), common_genre(X, Y, G3), common_genre(X, Y, G4),common_genre(X, Y, G5), G1 \= G2, G1 \= G3, G1 \= G4, G1 \= G5, G2 \= G3, G2 \= G4, G2 \= G5, G3 \= G4, G3 \= G5, G4 \= G5.





/* ----- ΣΚΗΝΟΘΕΤΗΣ ΤΑΙΝΙΑΣ ----- */
common_director(X,Y):- director(X,D), director(Y,D), X \= Y.






/* ----- ΛΕΞΕΙΣ ΚΛΕΙΔΙΑ ΠΛΟΚΗΣ ΤΑΙΝΙΑΣ ----- */
common_plot(X,Y,K):- plot_keyword(X,K),  plot_keyword(Y,K), X \= Y. 

/* ΤΟΥΛΑΧΙΣΤΟΝ ΕΝΑ KEYWORD ΙΔΙΟ */
common_plot_1(X,Y):- common_plot(X,Y,K1).
/* ΤΟΥΛΑΧΙΣΤΟΝ ΤΡΙΑ KEYWORDS ΙΔΙΑ */
common_plot_3(X,Y):- common_plot(X,Y,K1), common_plot(X,Y,K2), common_plot(X,Y,K3), K1 \= K2, K1 \= K3, K2 \= K3.
/* ΤΟΥΛΑΧΙΣΤΟΝ ΠΕΝΤΕ KEYWORDS ΙΔΙΑ */
common_plot_5(X,Y):- common_plot(X,Y,K1), common_plot(X,Y,K2), common_plot(X,Y,K3), common_plot(X,Y,K4), common_plot(X,Y,K5), K1 \= K2, K1 \= K3, K1 \= K4, K1 \= K5, K2 \= K3, K2 \= K4, K2 \= K5, K3 \= K4, K3 \= K5, K4 \= K5.






/* ----- ΒΑΣΙΚΟΙ ΗΘΟΠΟΙΟΙ ΤΑΙΝΙΑΣ ----- */
common_actors(X,Y,A):- actors(X,A), actors(Y,A), X \= Y.

/* ΟΛΟΙ ΙΔΙΟΙ */
common_actors_3(X,Y):- common_actors(X,Y,A1), common_actors(X,Y,A2), common_actors(X,Y,A3), A1 \= A2, A1 \= A3, A2 \= A3.
/* ΔΥΟ ΙΔΙΟΙ */
common_actors_2(X,Y):- common_actors(X,Y,A1), common_actors(X,Y,A2), A1 \= A2.
/* ΕΝΑΣ ΙΔΙΟΣ */
common_actors_1(X,Y):- common_actors(X,Y,A1).





/* ----- ΓΛΩΣΣΑ ΤΑΙΝΙΑΣ ----- */
common_language(X,Y):- language(X,L), language(Y,L), X \= Y.




/* ----- ΧΡΩΜΑ ΤΑΙΝΙΑΣ ----- */

/* ΑΣΠΡΟΜΑΥΡΕΣ */
black_white(X):- white(X,"black-white").




/* ----- STUDIO ΠΑΡΑΓΩΓΗΣ ΤΑΙΝΙΑΣ ----- */
common_studio(X,Y,S):- studio(X,S), studio(Y,S), X \= Y.

/* ΤΟΥΛΑΧΙΣΤΟΝ ΜΙΑ ΕΤΑΙΡΙΑ ΙΔΙΑ */
common_studio_1(X,Y):- common_studio(X,Y,S).
/* ΤΟΥΛΑΧΙΣΤΟΝ ΔΥΟ ΕΤΑΙΡΙΕΣ ΙΔΙΕΣ */
common_studio_3(X,Y):- common_studio(X,Y,S1), common_studio(X,Y,S2),common_studio(X,Y,S3),  S1 \= S2, S1 \= S3, S2 \= S3.
/* ΤΟΥΛΑΧΙΣΤΟΝ ΤΡΕΙΣ ΕΤΑΙΡΙΕΣ ΙΔΙΕΣ */
common_studio_5(X,Y):- common_studio(X,Y,S1), common_studio(X,Y,S2), common_studio(X,Y,S3), common_studio(X,Y,S4), common_studio(X,Y,S5), S1 \= S2, S1 \= S3, S1 \= S4, S1 \= S5, S2 \= S3, S2 \= S4, S2 \= S5, S3 \= S4, S3 \= S5, S4 \= S5.




/* ----- ΧΩΡΑ ΠΑΡΑΓΩΓΗΣ ΤΑΙΝΙΑΣ ----- */
common_country(X,Y):- country(X,C), country(Y,C), X \= Y.




/* ----- ΔΕΚΑΕΤΙΑ ΤΑΙΝΙΑΣ ----- */
common_decade(X,Y):- decade(X,D), decade(Y,D), X \= Y.





/*------ ΣΥΝΔΙΑΣΤΙΚΑ QYERIES ΓΙΑ RECOMMENDATIONS ----- */


/* ΤΑΙΝΙΕΣ ΜΕ ΤΟΥΛΑΧΙΣΤΟΝ ΕΝΑ ΕΙΔΟΣ ΙΔΙΟ */
find_similar_1(X, Y) :- common_genre_1(X, Y).
/* ΤΑΙΝΙΕΣ ΜΕ ΤΟΥΛΑΧΙΣΤΟΝ ΕΝΑ ΕΙΔΟΣ ΙΔΙΟ, ΕΝΑΝ ΗΘΟΠΟΙΟ */
find_similar_2(X, Y) :- common_genre_1(X, Y), common_actors_1(X,Y).
/* ΤΑΙΝΙΕΣ ΜΕ ΤΟΥΛΑΧΙΣΤΟΝ ΕΝΑ ΕΙΔΟΣ ΙΔΙΟ, ΕΝΑ KEYWORD, ΕΝΑΝ ΗΘΟΠΟΙΟ,ΙΔΙΑ ΔΕΚΑΕΤΙΑ */
find_similar_3(X, Y) :- common_genre_1(X, Y), common_plot_1(X,Y), common_actors_1(X,Y), common_decade(X,Y).
/* ΤΑΙΝΙΕΣ ΜΕ ΤΟΥΛΑΧΙΣΤΟΝ ΤΡΙΑ ΕΙΔΗ ΙΔΙΑ,ΕΝΑ KEYWORD,ΕΝΑΝ ΗΘΟΠΟΙΟ,ΙΔΙΟ ΣΚΗΝΟΘΕΤΗ */
find_similar_4(X, Y) :- common_genre_3(X, Y), common_plot_1(X, Y), common_actors_1(X,Y), common_director(X,Y).
/* ΤΑΙΝΙΕΣ ΜΕ ΤΟΥΛΑΧΙΣΤΟΝ ΤΡΙΑ ΕΙΔΗ ΙΔΙΑ,ΤΡΙΑ KEYWORDS,ΕΝΑ STUDIO ΠΑΡΑΓΩΓΗΣ,ΙΔΙΑ ΧΩΡΑ,ΙΔΙΟ ΣΚΗΝΟΘΕΤΗ */
find_similar_5(X, Y) :- common_genre_3(X, Y), common_plot_3(X,Y), common_studio_1(X,Y), common_country(X,Y), common_director(X,Y).

