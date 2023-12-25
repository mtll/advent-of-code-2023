(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 11*)


(* ::Input:: *)
(*input=Characters/@ReadList["11.txt",String];*)
(*{xs,ys}=Flatten@Position[#,_?(!MemberQ[#,"#"]&),{1},Heads->False]&/@{input,input\[Transpose]};*)
(*galaxies=(p|->p+x*{Count[xs,_?(p[[1]]>#&)],Count[ys,_?(p[[2]]>#&)]})/@Position[input,"#"];*)


(* ::Input:: *)
(*dists[c_Association]:=Module[{d,s,v},*)
(*d=Prepend[Differences[Keys@c],0];*)
(*s=Values[c];*)
(*v=Accumulate[FoldList[Plus,0,s][[;;-2]]*d];*)
(*s . v];*)
(*dists[g_List]:=dists[CountsBy[g,First]]+dists[CountsBy[SortBy[g,Last],Last]];*)


(* ::Subsection:: *)
(*Part 1 & 2*)


(* ::Input:: *)
(*dists[galaxies]/.x->{1,999999}*)
