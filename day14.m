(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 14*)


(* ::Input:: *)
(*rot[m_]:=Reverse/@(m\[Transpose])*)
(*shift[row_]:=Flatten[Sort/@SplitBy[row,#!="#"&]]*)
(*spin[m_]:=Nest[rot[shift/@#]&,m,4]*)
(*score[m_]:=Total[Position[m,"O"][[All,2]]]*)


(* ::Input:: *)
(*input=rot@Characters@ReadList["14.txt",String];*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*score[shift/@input]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*AbsoluteTiming@Module[{seen={},rep={{},{}},mat=input},*)
(*While[rep[[2]]=={},*)
(*Do[seen=Append[seen,score[mat=spin[mat]]],50];*)
(*rep=FindTransientRepeat[seen,2]];*)
(*rep[[2,Mod[1000000000-Length[rep[[1]]],Length@rep[[2]],1]]]]*)
