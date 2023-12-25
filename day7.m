(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 7*)


(* ::Input:: *)
(*hands=MapThread[{Characters@#1,#2}/.{"A"->14,"K"->13,"Q"->12,"J"->11,"T"->10}&,(StringSplit[#]&/@ReadList["7.txt",String])\[Transpose]]//ToExpression;*)
(*handscore[hand_]:=ReverseSortBy[Tally[hand],Last]/.{{{_,5}}->7,{{_,4},_}->6,{{_,3},{_,2}}->5,{{_,3},__}->4,{{_,2},{_,2},_}->3,{{_,2},__}->2,_List->1};*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Sort[{handscore[#[[1]]],#}&/@hands][[All,2,2]] . Range[Length@hands]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*score[{hand_,s_}]:={handscore[hand/. 11->First@Commonest@DeleteCases[hand,11]],hand/. 11->1,s};*)
(*score[{{11,11,11,11,11},s_}]={7,{1,1,1,1,1},s};*)


(* ::Input:: *)
(*Sort[score/@hands][[All,3]] . Range[Length@hands]*)
