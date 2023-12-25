(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 1*)


(* ::Input:: *)
(*input=ReadList["1.txt","String"];*)
(*cval[r_]:=FromDigits/@StringCases[input,r,Overlaps->True][[All,{1,-1}]]*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Total@cval[x:DigitCharacter:>ToExpression[x]]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Total@cval[Table[IntegerName[i]|IntegerString[i]->i,{i,9}]]*)
