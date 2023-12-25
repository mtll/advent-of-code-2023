(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 13*)


(* ::Input:: *)
(*input=Characters@StringSplit[StringSplit[ReadString["13.txt"],"\n\n"]];*)


(* ::Input:: *)
(*reflect[m_]:=Table[Flatten/@{m[[1;;n/2]],m[[n;;n/2+1;;-1]]},{n,2,Length[m],2}];*)
(*symmetry[m_,d_]:=First@FirstPosition[HammingDistance@@@Join[reflect[m],Reverse@reflect[Reverse@m]],d,{0}];*)


(* ::Subsection:: *)
(*Part 1 & 2*)


(* ::Input:: *)
(*Map[d|->{1,100} . Total[{symmetry[#\[Transpose],d]&/@input,symmetry[#,d]&/@input}\[Transpose]],{0,1}]*)
