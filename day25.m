(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 25*)


(* ::Input:: *)
(*input=StringCases[ReadList["25.txt",String],WordCharacter..]//Map[vs|->vs[[1]]\[UndirectedEdge]#&/@Rest[vs]]//Flatten//Graph;*)


(* ::Input:: *)
(*Times@@(Length/@Last@FindMinimumCut[input])*)
