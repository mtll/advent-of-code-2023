(* ::Package:: *)

(* ::Title:: *)
(*2023 Day 6*)


(* ::Input:: *)
(*sol[t_,d_]:=Reduce[(t-x)x>d,x]/._[x_,__,y_]:>\[LeftFloor]y\[RightFloor]-\[LeftFloor]x\[RightFloor]-Boole@IntegerQ[y]*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Times@@MapThread[sol,{{56 ,71, 79, 99},{334, 1135, 1350, 2430}}]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*sol[56717999,334113513502430]*)
