%knowledge base

house_elf(dobby).
witch(hermione).
witch(mcGonagall).
witch(rita_skeeter).
wizard(dobby).
magic(X):- house_elf(X).
magic(X):- wizard(X).
magic(X):- witch(X).
