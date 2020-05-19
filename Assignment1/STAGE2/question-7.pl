course(hit_transfer, mechanical).
course(web_design,computer).
course(design_methods, fine-arts).
course(poetry, literature).
course(leadership, management).
course(biology,medicin).
lab_number(mechanical,15).
lab_number(fine_arts,10).
lab_number(X, Z) :-course(X, Y), lab_number(Y, Z).
field(mechanical,engineering).
field(computer, engineering).
field(fine-arts, art). field(literature, social).
field(management, buisiness).
field(X, Y) :- course(X, Z), field(Z, Y).
student(anna, hit_transfer).
student(daniel, hit_transfer).
student(adrian, web_design).
student(ava, design_methods).
student(jack, poetry).
student(lee, leadership).
student(X, Y) :- field(Z, Y), student(X, Z).
student(X):- student(X,_).


