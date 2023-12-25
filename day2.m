(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 2*)


(* ::Input:: *)
(*input=Values@KeySort@Merge[#,Max]&/@StringCases[ReadList["2.txt","String"],{x:DigitCharacter..~~" "~~y:LetterCharacter:>y->ToExpression[x]}];*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Total@Flatten@Position[input,_?(#\[VectorLessEqual]{14,13,12}&),{1}]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Total[Times@@(input\[Transpose])]*)
