(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 19*)


(* ::Input:: *)
(*input=StringSplit@StringSplit[ReadString["19.txt"],"\n\n"];*)
(*workflows=StringCases[input[[2]],{x:DigitCharacter..:>ToExpression[x]}];*)


(* ::Input:: *)
(*ToExpression[#<>StringCases[#,"If"->"]"]&@StringJoin[#]&/@StringCases[input[[1]],*)
(*{n:WordCharacter..~~"{":>n~~"[x_,m_,a_,s_] := ",*)
(*s:WordCharacter~~op:(">"|"<")~~n:DigitCharacter..:>"If["~~s~~op~~n,*)
(*"R"->"False","A"->"True",v:WordCharacter..:>v~~"[x,m,a,s]",","|":"->","}]];*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Total[Select[workflows,in@@#&],2]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*\[Mu][l_,m__,u_]:=u-l+1-Count[{m},Less];*)


(* ::Input:: *)
(*Plus@@Times@@@(\[Mu]@@@Reduce[#]&)/@LogicalExpand[in[x,m,a,s]&&1\[VectorLessEqual]{x,m,a,s}\[VectorLessEqual]4000]*)
