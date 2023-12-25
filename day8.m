(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 8*)


(* ::Input:: *)
(*{dir,map}={Characters@#[[1]],<|#[[1]]->#[[2;;]]&/@StringCases[#[[2;;]],WordCharacter..]|>}&@ReadList["8.txt",String];*)


(* ::Input:: *)
(*steps[{i_,s_}]:={i+1,map[[s]][[dir[[Mod[i+1,Length@dir,1]]]/.{"L"->1,"R"->2}]]};*)
(*steps[s_String]:=NestWhile[steps,{0,s},!StringEndsQ[#[[2]],"Z"]&][[1]]*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*steps["AAA"]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*LCM@@(steps/@Select[Keys[map],StringEndsQ["A"]])*)
