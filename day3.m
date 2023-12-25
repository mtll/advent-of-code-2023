(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 3*)


(* ::Input:: *)
(*input=ArrayPad[Characters@ReadList["3.txt","String"],1,"."];*)
(*syms=Position[input,Except["."|_?DigitQ],{2},Heads->False];*)
(*nums=<|Split[Position[input,_String?DigitQ],#1==#2+{0,-1}&]//Map[ps|->With[{n=Unique[][FromDigits//@Extract[input,ps]]},#->n&/@ps]]|>;*)
(*adjacent[p_]:=Map[nums,Tuples[{-1,0,1},2]+Threaded[p]]//*)
(*DeleteMissing//DeleteDuplicates;*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*First/@DeleteDuplicates[Join@@Map[adjacent,syms],1]//Total*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Dot@@(Cases[adjacent/@Position[input,"*",{2}],p:{_,_}:>First/@p]\[Transpose])*)
