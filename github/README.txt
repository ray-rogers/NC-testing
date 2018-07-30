This is a preliminary simple set of programs to facilitate testing Bill Page's algorithm for factoring noncommunitative polynomials
1) Open fricas
2) )r test-harness.input
3) At first pass that should produce no fails and total tests of 7.
4) To install or use other polynomials; examine the header of testsuite_trial.input and follow the form.  You will notice several different ways/syntax to execute the program.  The main calls are to two tiny programs in test-harness.
a) factorCheck(x, proposed factor list for x) this program returns "pass" or "fail"; say f.  Then you have to call testEquals(f,"passed") explicitly to update the internal statistics counter.
b) factorCheck_poly(polynomial x) does all this for you.  Just look at it.
1) There are two other subroutines for commutation testing.  
	a) f_factorCheck(x , y)  x a polynomial, y a list of proposed factors.  If they match then it passes and the statistics is updated.
	b) xf_factorCheck(x , y) x a polynomial, y a list of proposed factors.  If they don't match then it passes and the "expected failures" is updated.
	c) It is intended that these are used by "noncommutation_tests.input"; but I suppose they could be used for research/debuggin.


@Bill--
Why am I getting "testing in a domain without InputForm!"?
And what does it matter since I seem to be getting correct answers?
Should I put in failing tests, just to verify that the program is actually doing something?
And of course any comments, corrections, or changes are welcome.
It seems to be isolated to test-harness.input->factorCheck_poly() ?
Ray
