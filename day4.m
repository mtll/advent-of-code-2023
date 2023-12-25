(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 4*)


(* ::Input:: *)
(*wins=Intersection[#[[1,3;;]],#[[2]]]&@StringSplit[#," "..]&/@StringSplit[ReadList["4.txt","String"],"|"];*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*2^(Length@#-1)&/@DeleteCases[wins,{}]//Total*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*edges[x_,{i_}]:=Map[{i,#}->1&,i+Range[Length@x]];*)
(*mat=SparseArray[Flatten@MapIndexed[edges,wins],Length[wins]*{1,1}];*)
(*Total[Inverse[IdentityMatrix[Length@mat]-mat],3]*)
