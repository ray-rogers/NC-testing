
(SDEFUN |XDPOLYF1;mapPoly|
        ((|p| |XDistributedPolynomial| (|OrderedVariableList| ALPHABET) F)
         ($ |XDistributedPolynomial| (|OrderedVariableList| ALPHABET)
          (|Fraction| (|Polynomial| F))))
        (SPROG ((#1=#:G417 NIL))
               (SEQ
                (EXIT
                 (COND
                  ((SPADCALL (SPADCALL |p| (QREFELT $ 9)) (|spadConstant| $ 10)
                             (QREFELT $ 12))
                   (PROGN
                    (LETT #1#
                          (SPADCALL
                           (SPADCALL
                            (SPADCALL (SPADCALL |p| (QREFELT $ 13))
                                      (QREFELT $ 15))
                            (QREFELT $ 17))
                           (SPADCALL |p| (QREFELT $ 19)) (QREFELT $ 21)))
                    (GO #2=#:G416)))
                  ('T
                   (PROGN
                    (LETT #1#
                          (SPADCALL
                           (|XDPOLYF1;mapPoly| (SPADCALL |p| (QREFELT $ 9)) $)
                           (SPADCALL
                            (SPADCALL
                             (SPADCALL (SPADCALL |p| (QREFELT $ 13))
                                       (QREFELT $ 15))
                             (QREFELT $ 17))
                            (SPADCALL |p| (QREFELT $ 19)) (QREFELT $ 21))
                           (QREFELT $ 22)))
                    (GO #2#)))))
                #2# (EXIT #1#)))) 

(SDEFUN |XDPOLYF1;mapPoly2XDP;XdpXdp;2|
        ((|p| |XDistributedPolynomial| (|OrderedVariableList| ALPHABET)
          (|Fraction| (|Polynomial| F)))
         ($ |XDistributedPolynomial| (|OrderedVariableList| ALPHABET) F))
        (SPROG ((#1=#:G420 NIL))
               (SEQ
                (EXIT
                 (COND
                  ((SPADCALL (SPADCALL |p| (QREFELT $ 23))
                             (|spadConstant| $ 24) (QREFELT $ 25))
                   (PROGN
                    (LETT #1#
                          (SPADCALL
                           (SPADCALL
                            (SPADCALL (SPADCALL |p| (QREFELT $ 26))
                                      (QREFELT $ 27))
                            (QREFELT $ 28))
                           (SPADCALL |p| (QREFELT $ 29)) (QREFELT $ 30)))
                    (GO #2=#:G419)))
                  ('T
                   (PROGN
                    (LETT #1#
                          (SPADCALL
                           (SPADCALL (SPADCALL |p| (QREFELT $ 23))
                                     (QREFELT $ 31))
                           (SPADCALL
                            (SPADCALL
                             (SPADCALL (SPADCALL |p| (QREFELT $ 26))
                                       (QREFELT $ 27))
                             (QREFELT $ 28))
                            (SPADCALL |p| (QREFELT $ 29)) (QREFELT $ 30))
                           (QREFELT $ 32)))
                    (GO #2#)))))
                #2# (EXIT #1#)))) 

(SDEFUN |XDPOLYF1;last|
        ((|x| |FreeMonoid| (|OrderedVariableList| ALPHABET))
         (|n| |NonNegativeInteger|)
         ($ |FreeMonoid| (|OrderedVariableList| ALPHABET)))
        (COND ((>= |n| (SPADCALL |x| (QREFELT $ 34))) |x|)
              ('T (|XDPOLYF1;last| (SPADCALL |x| (QREFELT $ 35)) |n| $)))) 

(SDEFUN |XDPOLYF1;first|
        ((|x| |FreeMonoid| (|OrderedVariableList| ALPHABET))
         (|n| |NonNegativeInteger|)
         ($ |FreeMonoid| (|OrderedVariableList| ALPHABET)))
        (SPADCALL (|XDPOLYF1;last| (SPADCALL |x| (QREFELT $ 36)) |n| $)
                  (QREFELT $ 36))) 

(SDEFUN |XDPOLYF1;prefixes|
        ((|x| |FreeMonoid| (|OrderedVariableList| ALPHABET))
         ($ |List| (|FreeMonoid| (|OrderedVariableList| ALPHABET))))
        (SPROG ((#1=#:G427 NIL) (|i| NIL) (#2=#:G426 NIL))
               (SEQ
                (PROGN
                 (LETT #2# NIL)
                 (SEQ (LETT |i| 0)
                      (LETT #1# (- (SPADCALL |x| (QREFELT $ 34)) 1)) G190
                      (COND ((|greater_SI| |i| #1#) (GO G191)))
                      (SEQ
                       (EXIT
                        (LETT #2# (CONS (|XDPOLYF1;first| |x| |i| $) #2#))))
                      (LETT |i| (|inc_SI| |i|)) (GO G190) G191
                      (EXIT (NREVERSE #2#))))))) 

(SDEFUN |XDPOLYF1;suffixes|
        ((|x| |FreeMonoid| (|OrderedVariableList| ALPHABET))
         ($ |List| (|FreeMonoid| (|OrderedVariableList| ALPHABET))))
        (SPROG ((#1=#:G431 NIL) (|i| NIL) (#2=#:G430 NIL))
               (SEQ
                (PROGN
                 (LETT #2# NIL)
                 (SEQ (LETT |i| 0)
                      (LETT #1# (- (SPADCALL |x| (QREFELT $ 34)) 1)) G190
                      (COND ((|greater_SI| |i| #1#) (GO G191)))
                      (SEQ
                       (EXIT
                        (LETT #2# (CONS (|XDPOLYF1;last| |x| |i| $) #2#))))
                      (LETT |i| (|inc_SI| |i|)) (GO G190) G191
                      (EXIT (NREVERSE #2#))))))) 

(SDEFUN |XDPOLYF1;leftSubwords|
        ((|x| |XDistributedPolynomial| (|OrderedVariableList| ALPHABET) F)
         ($ |List| (|FreeMonoid| (|OrderedVariableList| ALPHABET))))
        (SPADCALL
         (SPADCALL
          (SPADCALL
           (SPADCALL (CONS (|function| |XDPOLYF1;prefixes|) $)
                     (SPADCALL |x| (QREFELT $ 39)) (QREFELT $ 43))
           (QREFELT $ 45))
          (QREFELT $ 47))
         (QREFELT $ 48))) 

(SDEFUN |XDPOLYF1;rightSubwords|
        ((|x| |XDistributedPolynomial| (|OrderedVariableList| ALPHABET) F)
         ($ |List| (|FreeMonoid| (|OrderedVariableList| ALPHABET))))
        (SPADCALL
         (SPADCALL
          (SPADCALL
           (SPADCALL (CONS (|function| |XDPOLYF1;suffixes|) $)
                     (SPADCALL |x| (QREFELT $ 39)) (QREFELT $ 43))
           (QREFELT $ 45))
          (QREFELT $ 47))
         (QREFELT $ 48))) 

(SDEFUN |XDPOLYF1;terms|
        ((|s| |Symbol|)
         (|w| |List| (|FreeMonoid| (|OrderedVariableList| ALPHABET)))
         ($ |List|
          (|XDistributedPolynomial| (|OrderedVariableList| ALPHABET)
                                    (|Fraction| (|Polynomial| F)))))
        (SPROG ((#1=#:G463 NIL) (|i| NIL) (#2=#:G462 NIL))
               (SEQ
                (SPADCALL (ELT $ 21)
                          (PROGN
                           (LETT #2# NIL)
                           (SEQ (LETT |i| 1) (LETT #1# (LENGTH |w|)) G190
                                (COND ((|greater_SI| |i| #1#) (GO G191)))
                                (SEQ
                                 (EXIT
                                  (LETT #2#
                                        (CONS
                                         (SPADCALL
                                          (SPADCALL |s|
                                                    (LIST
                                                     (SPADCALL |i|
                                                               (QREFELT $ 51)))
                                                    (QREFELT $ 54))
                                          (QREFELT $ 55))
                                         #2#))))
                                (LETT |i| (|inc_SI| |i|)) (GO G190) G191
                                (EXIT (NREVERSE #2#))))
                          |w| (QREFELT $ 60))))) 

(SDEFUN |XDPOLYF1;leftPoly;XdpXdp;10|
        ((|x| |XDistributedPolynomial| (|OrderedVariableList| ALPHABET) F)
         ($ |XDistributedPolynomial| (|OrderedVariableList| ALPHABET)
          (|Fraction| (|Polynomial| F))))
        (SPADCALL (ELT $ 22)
                  (|XDPOLYF1;terms| '|a| (|XDPOLYF1;leftSubwords| |x| $) $)
                  (QREFELT $ 62))) 

(SDEFUN |XDPOLYF1;rightPoly;XdpXdp;11|
        ((|x| |XDistributedPolynomial| (|OrderedVariableList| ALPHABET) F)
         ($ |XDistributedPolynomial| (|OrderedVariableList| ALPHABET)
          (|Fraction| (|Polynomial| F))))
        (SPADCALL (ELT $ 22)
                  (|XDPOLYF1;terms| '|b| (|XDPOLYF1;rightSubwords| |x| $) $)
                  (QREFELT $ 62))) 

(SDEFUN |XDPOLYF1;factorizationEquations;XdpL;12|
        ((|p| |XDistributedPolynomial| (|OrderedVariableList| ALPHABET) F)
         ($ |List| (|Fraction| (|Polynomial| F))))
        (SPADCALL
         (SPADCALL
          (SPADCALL (SPADCALL |p| (QREFELT $ 63)) (SPADCALL |p| (QREFELT $ 64))
                    (QREFELT $ 65))
          (|XDPOLYF1;mapPoly| |p| $) (QREFELT $ 66))
         (QREFELT $ 67))) 

(SDEFUN |XDPOLYF1;vars|
        ((|p| |XDistributedPolynomial| (|OrderedVariableList| ALPHABET)
          (|Fraction| (|Polynomial| F)))
         ($ |List| (|Symbol|)))
        (SPADCALL
         (SPADCALL
          (SPADCALL
           (SPADCALL (CONS #'|XDPOLYF1;vars!0| $) (SPADCALL |p| (QREFELT $ 67))
                     (QREFELT $ 77))
           (QREFELT $ 78))
          (QREFELT $ 80))
         (QREFELT $ 81))) 

(SDEFUN |XDPOLYF1;vars!0| ((|x| NIL) ($ NIL))
        (SPADCALL (SPADCALL (SPADCALL |x| (QREFELT $ 69)) (QREFELT $ 71))
                  (SPADCALL (SPADCALL |x| (QREFELT $ 72)) (QREFELT $ 71))
                  (QREFELT $ 73))) 

(SDEFUN |XDPOLYF1;factor;XdpL;14|
        ((|p| |XDistributedPolynomial| (|OrderedVariableList| ALPHABET) F)
         ($ |List|
          (|XDistributedPolynomial| (|OrderedVariableList| ALPHABET) F)))
        (SPROG
         ((#1=#:G587 NIL)
          (|f|
           (|List|
            (|XDistributedPolynomial| (|OrderedVariableList| ALPHABET) F)))
          (|ss| (|Equation| (|Fraction| (|Polynomial| F))))
          (|bi| (|Fraction| (|Polynomial| F)))
          (|bis| (|List| (|Fraction| (|Polynomial| F))))
          (|s0| (|List| (|Equation| (|Fraction| (|Polynomial| F)))))
          (|v| (|List| (|Boolean|))) (#2=#:G589 NIL) (|s1| NIL)
          (|s| (|List| (|List| (|Equation| (|Fraction| (|Polynomial| F))))))
          (#3=#:G588 NIL) (|i| NIL)
          (|e| (|List| (|Fraction| (|Polynomial| F))))
          (|r| #4=(|List| (|Symbol|))) (|l| #4#)
          (|rp|
           (|XDistributedPolynomial| (|OrderedVariableList| ALPHABET)
                                     (|Fraction| (|Polynomial| F))))
          (|lp|
           (|XDistributedPolynomial| (|OrderedVariableList| ALPHABET)
                                     (|Fraction| (|Polynomial| F)))))
         (SEQ
          (EXIT
           (SEQ (LETT |lp| (SPADCALL |p| (QREFELT $ 63)))
                (LETT |rp| (SPADCALL |p| (QREFELT $ 64)))
                (LETT |l| (|XDPOLYF1;vars| |lp| $))
                (LETT |r| (|XDPOLYF1;vars| |rp| $))
                (LETT |e| (SPADCALL |p| (QREFELT $ 68))) (LETT |s0| NIL)
                (SEQ (LETT |i| NIL) (LETT #3# |r|) G190
                     (COND
                      ((OR (NULL (NULL |s0|)) (ATOM #3#)
                           (PROGN (LETT |i| (CAR #3#)) NIL))
                       (GO G191)))
                     (SEQ
                      (LETT |s|
                            (SPADCALL |e|
                                      (SPADCALL |l|
                                                (SPADCALL |i| |r|
                                                          (QREFELT $ 82))
                                                (QREFELT $ 73))
                                      (QREFELT $ 85)))
                      (EXIT
                       (SEQ (LETT |s1| NIL) (LETT #2# |s|) G190
                            (COND
                             ((OR (NULL (NULL |s0|)) (ATOM #2#)
                                  (PROGN (LETT |s1| (CAR #2#)) NIL))
                              (GO G191)))
                            (SEQ
                             (LETT |v|
                                   (SPADCALL
                                    (CONS #'|XDPOLYF1;factor;XdpL;14!0| $) |s1|
                                    (QREFELT $ 94)))
                             (EXIT
                              (COND
                               ((SPADCALL (LENGTH |v|) 0 (QREFELT $ 96))
                                (COND
                                 ((SPADCALL (ELT $ 97) |v| (QREFELT $ 99))
                                  (LETT |s0| |s1|)))))))
                            (LETT #2# (CDR #2#)) (GO G190) G191 (EXIT NIL))))
                     (LETT #3# (CDR #3#)) (GO G190) G191 (EXIT NIL))
                (COND
                 ((NULL |s0|) (PROGN (LETT #1# (LIST |p|)) (GO #5=#:G586))))
                (LETT |bis|
                      (SPADCALL
                       (CONS #'|XDPOLYF1;factor;XdpL;14!1| (VECTOR |i| $))
                       (SPADCALL (ELT $ 102) |s0| (QREFELT $ 105))
                       (QREFELT $ 107)))
                (LETT |bi|
                      (SPADCALL
                       (SPADCALL (SPADCALL (ELT $ 69) |bis| (QREFELT $ 111))
                                 (QREFELT $ 112))
                       (QREFELT $ 17)))
                (LETT |ss|
                      (SPADCALL (SPADCALL |i| (QREFELT $ 55)) |bi|
                                (QREFELT $ 113)))
                (LETT |f|
                      (SPADCALL
                       (LIST
                        (SPADCALL
                         (SPADCALL
                          (SPADCALL
                           (CONS #'|XDPOLYF1;factor;XdpL;14!2|
                                 (VECTOR |ss| $ |s0|))
                           |lp| (QREFELT $ 118))
                          (QREFELT $ 31))
                         (QREFELT $ 120))
                        (SPADCALL
                         (SPADCALL
                          (SPADCALL
                           (CONS #'|XDPOLYF1;factor;XdpL;14!3|
                                 (VECTOR |ss| $ |s0|))
                           |rp| (QREFELT $ 118))
                          (QREFELT $ 31))
                         (QREFELT $ 120)))
                       (QREFELT $ 121)))
                (COND
                 ((SPADCALL (SPADCALL (ELT $ 122) |f| (QREFELT $ 124)) |p|
                            (QREFELT $ 125))
                  (|error| "factor failed")))
                (EXIT (PROGN (LETT #1# |f|) (GO #5#)))))
          #5# (EXIT #1#)))) 

(SDEFUN |XDPOLYF1;factor;XdpL;14!3| ((|x| NIL) ($$ NIL))
        (PROG (|s0| $ |ss|)
          (LETT |s0| (QREFELT $$ 2))
          (LETT $ (QREFELT $$ 1))
          (LETT |ss| (QREFELT $$ 0))
          (RETURN
           (PROGN
            (SPADCALL (SPADCALL |x| |s0| (QREFELT $ 115)) |ss|
                      (QREFELT $ 116)))))) 

(SDEFUN |XDPOLYF1;factor;XdpL;14!2| ((|x| NIL) ($$ NIL))
        (PROG (|s0| $ |ss|)
          (LETT |s0| (QREFELT $$ 2))
          (LETT $ (QREFELT $$ 1))
          (LETT |ss| (QREFELT $$ 0))
          (RETURN
           (PROGN
            (SPADCALL (SPADCALL |x| |s0| (QREFELT $ 115)) |ss|
                      (QREFELT $ 116)))))) 

(SDEFUN |XDPOLYF1;factor;XdpL;14!1| ((|x| NIL) ($$ NIL))
        (PROG ($ |i|)
          (LETT $ (QREFELT $$ 1))
          (LETT |i| (QREFELT $$ 0))
          (RETURN
           (PROGN
            (SPADCALL (SPADCALL |x| (QREFELT $ 100))
                      (SPADCALL |i| (QREFELT $ 55)) (QREFELT $ 101)))))) 

(SDEFUN |XDPOLYF1;factor;XdpL;14!0| ((|x| NIL) ($ NIL))
        (QEQCAR (SPADCALL (SPADCALL |x| (QREFELT $ 87)) (QREFELT $ 89)) 0)) 

(DECLAIM (NOTINLINE |XDistributedPolynomialFunctions1;|)) 

(DEFUN |XDistributedPolynomialFunctions1| (&REST #1=#:G590)
  (SPROG NIL
         (PROG (#2=#:G591)
           (RETURN
            (COND
             ((LETT #2#
                    (|lassocShiftWithFunction| (|devaluateList| #1#)
                                               (HGET |$ConstructorCache|
                                                     '|XDistributedPolynomialFunctions1|)
                                               '|domainEqualList|))
              (|CDRwithIncrement| #2#))
             ('T
              (UNWIND-PROTECT
                  (PROG1
                      (APPLY (|function| |XDistributedPolynomialFunctions1;|)
                             #1#)
                    (LETT #2# T))
                (COND
                 ((NOT #2#)
                  (HREM |$ConstructorCache|
                        '|XDistributedPolynomialFunctions1|)))))))))) 

(DEFUN |XDistributedPolynomialFunctions1;| (|#1| |#2|)
  (SPROG ((|pv$| NIL) ($ NIL) (|dv$| NIL) (DV$2 NIL) (DV$1 NIL))
         (PROGN
          (LETT DV$1 (|devaluate| |#1|))
          (LETT DV$2 (|devaluate| |#2|))
          (LETT |dv$| (LIST '|XDistributedPolynomialFunctions1| DV$1 DV$2))
          (LETT $ (GETREFV 126))
          (QSETREFV $ 0 |dv$|)
          (QSETREFV $ 3 (LETT |pv$| (|buildPredVector| 0 0 NIL)))
          (|haddProp| |$ConstructorCache| '|XDistributedPolynomialFunctions1|
                      (LIST DV$1 DV$2) (CONS 1 $))
          (|stuffDomainSlots| $)
          (QSETREFV $ 6 |#1|)
          (QSETREFV $ 7 |#2|)
          (SETF |pv$| (QREFELT $ 3))
          $))) 

(MAKEPROP '|XDistributedPolynomialFunctions1| '|infovec|
          (LIST
           '#(NIL NIL NIL NIL NIL NIL (|local| |#1|) (|local| |#2|)
              (|XDistributedPolynomial|
               (|OrderedVariableList| (NRTEVAL (QREFELT $ 6))) 7)
              (0 . |reductum|) (5 . |Zero|) (|Boolean|) (9 . =)
              (15 . |leadingCoefficient|) (|Polynomial| 7) (20 . |coerce|)
              (|Fraction| 14) (25 . |coerce|)
              (|FreeMonoid| (|OrderedVariableList| (NRTEVAL (QREFELT $ 6))))
              (30 . |leadingSupport|)
              (|XDistributedPolynomial|
               (|OrderedVariableList| (NRTEVAL (QREFELT $ 6))) 16)
              (35 . |monomial|) (41 . +) (47 . |reductum|) (52 . |Zero|)
              (56 . =) (62 . |leadingCoefficient|) (67 . |retract|)
              (72 . |retract|) (77 . |leadingSupport|) (82 . |monomial|)
              |XDPOLYF1;mapPoly2XDP;XdpXdp;2| (88 . +) (|NonNegativeInteger|)
              (94 . |length|) (99 . |rest|) (104 . |mirror|) (109 . |One|)
              (|List| 18) (113 . |support|) (|List| 38) (|Mapping| 38 18)
              (|ListFunctions2| 18 38) (118 . |map|) (|List| $)
              (124 . |concat|) (|Set| 18) (129 . |set|) (134 . |members|)
              (|Integer|) (|OutputForm|) (139 . |outputForm|) (|List| 50)
              (|Symbol|) (144 . |subscript|) (150 . |coerce|) (|List| 20)
              (|Mapping| 20 16 18) (|List| 16) (|ListFunctions3| 16 18 20)
              (155 . |map|) (|Mapping| 20 20 20) (162 . |reduce|)
              |XDPOLYF1;leftPoly;XdpXdp;10| |XDPOLYF1;rightPoly;XdpXdp;11|
              (168 . *) (174 . -) (180 . |coefficients|)
              |XDPOLYF1;factorizationEquations;XdpL;12| (185 . |numer|)
              (|List| 53) (190 . |variables|) (195 . |denom|) (200 . |concat|)
              (|List| 70) (|Mapping| 70 16) (|ListFunctions2| 16 70)
              (206 . |map|) (212 . |concat|) (|Set| 53) (217 . |set|)
              (222 . |members|) (227 . |remove|) (|List| 92)
              (|SystemSolvePackage| 7) (233 . |solve|) (|Equation| 16)
              (239 . |lhs|) (|Union| 53 '"failed") (244 . |retractIfCan|)
              (|List| 11) (|Mapping| 11 86) (|List| 86)
              (|ListFunctions2| 86 11) (249 . |map|) (255 . |Zero|) (259 . >)
              (265 . |and|) (|Mapping| 11 11 11) (271 . |reduce|)
              (277 . |denominator|) (282 . =) (288 . |rhs|) (|Mapping| 16 86)
              (|ListFunctions2| 86 16) (293 . |map|) (|Mapping| 11 16)
              (299 . |select|) (|List| 14) (|Mapping| 14 16)
              (|ListFunctions2| 16 14) (305 . |map|) (311 . |gcd|)
              (316 . |equation|) (|RationalFunction| 7) (322 . |eval|)
              (328 . |eval|) (|Mapping| 16 16) (334 . |map|) (|List| 8)
              |XDPOLYF1;factor;XdpL;14| (340 . |concat|) (345 . *)
              (|Mapping| 8 8 8) (351 . |reduce|) (357 . ~=))
           '#(|rightPoly| 363 |mapPoly2XDP| 368 |leftPoly| 373
              |factorizationEquations| 378 |factor| 383)
           'NIL
           (CONS (|makeByteWordVec2| 1 '(0))
                 (CONS '#(NIL)
                       (CONS
                        '#((|Join|
                            (|mkCategory|
                             (LIST
                              '((|factorizationEquations|
                                 ((|List| (|Fraction| (|Polynomial| |#2|)))
                                  (|XDistributedPolynomial|
                                   (|OrderedVariableList| |#1|) |#2|)))
                                T)
                              '((|factor|
                                 ((|List|
                                   (|XDistributedPolynomial|
                                    (|OrderedVariableList| |#1|) |#2|))
                                  (|XDistributedPolynomial|
                                   (|OrderedVariableList| |#1|) |#2|)))
                                T)
                              '((|mapPoly2XDP|
                                 ((|XDistributedPolynomial|
                                   (|OrderedVariableList| |#1|) |#2|)
                                  (|XDistributedPolynomial|
                                   (|OrderedVariableList| |#1|)
                                   (|Fraction| (|Polynomial| |#2|)))))
                                T)
                              '((|leftPoly|
                                 ((|XDistributedPolynomial|
                                   (|OrderedVariableList| |#1|)
                                   (|Fraction| (|Polynomial| |#2|)))
                                  (|XDistributedPolynomial|
                                   (|OrderedVariableList| |#1|) |#2|)))
                                T)
                              '((|rightPoly|
                                 ((|XDistributedPolynomial|
                                   (|OrderedVariableList| |#1|)
                                   (|Fraction| (|Polynomial| |#2|)))
                                  (|XDistributedPolynomial|
                                   (|OrderedVariableList| |#1|) |#2|)))
                                T))
                             (LIST) NIL NIL)))
                        (|makeByteWordVec2| 125
                                            '(1 8 0 0 9 0 8 0 10 2 8 11 0 0 12
                                              1 8 7 0 13 1 14 0 7 15 1 16 0 14
                                              17 1 8 18 0 19 2 20 0 16 18 21 2
                                              20 0 0 0 22 1 20 0 0 23 0 20 0 24
                                              2 20 11 0 0 25 1 20 16 0 26 1 16
                                              14 0 27 1 14 7 0 28 1 20 18 0 29
                                              2 8 0 7 18 30 2 8 0 0 0 32 1 18
                                              33 0 34 1 18 0 0 35 1 18 0 0 36 0
                                              7 0 37 1 8 38 0 39 2 42 40 41 38
                                              43 1 38 0 44 45 1 46 0 38 47 1 46
                                              38 0 48 1 50 0 49 51 2 53 0 0 52
                                              54 1 16 0 53 55 3 59 56 57 58 38
                                              60 2 56 20 61 0 62 2 20 0 0 0 65
                                              2 20 0 0 0 66 1 20 58 0 67 1 16
                                              14 0 69 1 14 70 0 71 1 16 14 0 72
                                              2 70 0 0 0 73 2 76 74 75 58 77 1
                                              70 0 44 78 1 79 0 70 80 1 79 70 0
                                              81 2 70 0 53 0 82 2 84 83 58 70
                                              85 1 86 16 0 87 1 16 88 0 89 2 93
                                              90 91 92 94 0 7 0 95 2 33 11 0 0
                                              96 2 11 0 0 0 97 2 90 11 98 0 99
                                              1 16 0 0 100 2 16 11 0 0 101 1 86
                                              16 0 102 2 104 58 103 92 105 2 58
                                              0 106 0 107 2 110 108 109 58 111
                                              1 14 0 44 112 2 86 0 16 16 113 2
                                              114 16 16 92 115 2 114 16 16 86
                                              116 2 20 0 117 0 118 1 119 0 44
                                              121 2 8 0 0 0 122 2 119 8 123 0
                                              124 2 8 11 0 0 125 1 0 20 8 64 1
                                              0 8 20 31 1 0 20 8 63 1 0 58 8 68
                                              1 0 119 8 120)))))
           '|lookupComplete|)) 
