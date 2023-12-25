(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 21*)


(* ::Input:: *)
(*input=Characters@ReadList["21.txt",String];*)


(* ::Input:: *)
(*next[pt_]:=Select[Threaded[pt]+{{1,0},{-1,0},{0,1},{0,-1}},*)
(*MatchQ[Extract[input,Mod[#,Length[input],1]],"."|"S"]&]*)


(* ::Input:: *)
(*visited=<||>;*)
(*Module[{pts=Position[input,"S"]},*)
(*Do[*)
(*pts=DeleteDuplicates@Select[Flatten[next/@pts,1],!KeyExistsQ[visited,#]&];*)
(*AssociateTo[visited,#->d&/@pts]*)
(*,{d,1,196+131*2}]];*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Count[visited,_?(#<=64&&EvenQ[#]&)]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Table[Count[visited,_?(#<=d&&EvenQ[d]==EvenQ[#]&)],{d,65+131{0,1,2}}]//InterpolatingPolynomial[#,(26501365-65)/131+1]&*)


(* ::Input:: *)
(*KeyValueMap[#1+150+131*2->#2&,visited]//SparseArray[#,{950,950},\[Infinity]]&//ArrayPlot[#,ColorFunction->Hue]&*)
