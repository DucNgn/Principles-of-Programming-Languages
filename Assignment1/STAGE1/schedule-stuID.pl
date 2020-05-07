% Stage 1
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
