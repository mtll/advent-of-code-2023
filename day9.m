(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 9*)


(* ::Input:: *)
(*InterpolatingPolynomial[#,0]&/@{Reverse@#,#}&/@ToExpression@StringSplit@ReadList["9.txt",String]//Total*)


(* ::Input:: *)
(*input=ToExpression@StringSplit@ReadList["9.txt",String];*)
(*w={1,-21,210,-1330,5985,-20349,54264,-116280,203490,-293930,352716,-352716,293930,-203490,116280,-54264,20349,-5985,1330,-210,21};*)


(* ::Input:: *)
(*Total[{# . w&/@input,# . Reverse@w&/@input},{2}]*)
