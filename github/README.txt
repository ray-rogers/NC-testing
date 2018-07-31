This is a preliminary simple set of programs to facilitate testing Bill Page's algorithm for factoring noncommunitative polynomials

In test-harness.input there are some headers, utility routines, and a list of tests files to run.  Comment and uncomment the ones you are interested in.

The format of the test files can be seen by examining the header of testsuite_trial.input and follow the form.  You will notice several different ways/syntax to express the polynomials and evaluate them.  
1) The main calls are to two tiny programs in test-harness.
	a) factorCheck(x, proposed factor list for x) this program returns "pass" or "fail"; say f.  Then you have to call testEquals(f,"passed") explicitly to update the internal statistics counter.
	b) factorCheck_poly(polynomial x) does all this for you.  Just look at it.
2) There are two other subroutines for commutation testing.  
	a) f_factorCheck(x , y)  x a polynomial, y a list of proposed factors.  If they match then it passes and the statistics is updated.
	b) xf_factorCheck(x , y) x a polynomial, y a list of proposed factors.  If they don't match then it passes and the "expected failures" is updated.
	c) It is intended that these are used by "noncommutation_tests.input"; but I suppose they could be used for research/debuggin.

The present test files are
	a) testsuite_trial.input   -- Just a small file to make sure we actually run.
	b) noncommuation_tests.input -- Checking the commutation actually works
	c) Parameter_test.input    -- Checking that commuting parameters
		(i.e. coeficients) are accepted correctly.  In particular p4 is 
		interesting.  While not "stress" testing they do take a minute or so.



@Bill--
Why am I getting "testing in a domain without InputForm!"?
And what does it matter since I seem to be getting correct answers?
Should I put in failing tests, just to verify that the program is actually doing something?
And of course any comments, corrections, or changes are welcome.
It seems to be isolated to test-harness.input->factorCheck_poly() ?
Ray
