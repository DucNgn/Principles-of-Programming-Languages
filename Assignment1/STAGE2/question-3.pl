% Question 3 - Antonio Verdicchio
team(['40064649', '40062102','40138253']).

% Student info
student_info('40064649', 'Duc', 'Nguyen').
student_info('40062102', 'Antonio', 'Verdicchio').
student_info('40138253', 'Zahra', 'Nikbakht').

% 40064649
takes_course('40064649', 'comp', '348', 'aa').
takes_course('40064649', 'comp', '348', 'aaae').
takes_course('40064649', 'encs', '282', 'ab').
takes_course('40064649', 'encs', '282', 'abal').

% 40062102
takes_course('40062102', 'comp', '348', 'aa').
takes_course('40062102', 'comp', '348', 'aaae').
takes_course('40062102', 'econ', '201', 'ec').
takes_course('40062102', 'econ', '203', 'ec').

% 40138253
takes_course('40138253', 'comp', '348', 'aa').
takes_course('40138253', 'comp', '348', 'aaae').
takes_course('40138253', 'encs', '282', 'ab').
takes_course('40138253', 'encs', '282', 'abaj').

% Course schedule info
% COMP 348
course_schedule('comp', '348', 'aa', 'mon', '1445', '1715').
course_schedule('comp', '348', 'aa', 'wed', '1445', '1715').
course_schedule('comp', '348', 'aaae', 'wed', '1315', '1405').
course_schedule('comp', '348', 'aaae', 'mon', '1315', '1405').
% ENCS 282
course_schedule('encs', '282', 'ab', 'tue', '1015', '1245').
course_schedule('encs', '282', 'ab', 'thu', '1015', '1245').
course_schedule('encs', '282', 'abal', 'tue', '1445', '1625').
course_schedule('encs', '282', 'abal', 'thu', '1445', '1625').
course_schedule('encs', '282', 'abaj', 'thu', '1445', '1625').
course_schedule('encs', '282', 'abaj', 'tue', '1445', '1625').
% ECON 
course_schedule('econ', '201', 'ec', 'tue', '1755', '2015').
course_schedule('econ', '203', 'ec', 'mon', '1755', '2015').

/* L contains a list of all sections of course CNAME, CNUM,
i.e. calling all_sections(’comp’, ’348’, L) will result in L=[’aa’, ’ab’];
no duplicates */
all_sections(CNAM, CNUM, L) :- findall(L, takes_course(_, CNAM, CNUM, L), X), sort(X, L).

/* true if student S takes the course CNAM CNUM SEC,
e.g. takes(’4000123’, [’comp’, ’348’, ’aa’]) */
has_taken(S, [CNAM|[CNUM|[SEC|[]]]]) :- takes_course(S, CNAM, CNUM, SEC).

/* true if S takes any sections of the course CNAM CNUM,
e.g. takes(’4000123’, [’comp’, ’348’]) */
has_taken2(S, [CNAM|[CNUM|[]]]) :- takes_course(S, CNAM, CNUM, _).

/* L contains all the courses subjects that have been
taken by student S, i.e. [’comp’, ’soen’]; no duplicates */
all_subjects(S, L) :- findall(L, takes_course(S, L, _, _), X), sort(X, L).

/* L contains all the courses that have been taken by
student S, i.e. all_courses(’4000123’, L) will result in
L=[[’comp’, ’348’, ’aa’], [’comp’, ’348’, ’ab’]] */
all_courses(S, L) :- findall([X, Y, Z], takes_course(S, X, Y, Z), L).

/* Similar to all_courses but without section info. No duplicates. */
all_courses2(S, L) :- findall([X, Y], takes_course(S, X, Y, _), LL), list_to_set(LL, L).