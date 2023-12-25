(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 15*)


(* ::Input:: *)
(*input=StringSplit[ReadString["15.txt"],{",","\n"}];*)


(* ::Input:: *)
(*hash[v_]:=Fold[Mod[17(#1+#2),256]&,0,ToCharacterCode@v]*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Total[hash/@input]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*parseop[boxes_,op_]/;StringEndsQ[op,"-"]:=Module[{var=StringDrop[op,-1],h,b=boxes},*)
(*h=hash[var]+1;*)
(*b[[h]]=Delete[b[[h]],var];*)
(*b];*)
(*parseop[boxes_,op_]:=Module[{h,b=boxes,val,var},*)
(*{var,val}=StringSplit[op,"="];*)
(*h=hash[var]+1;*)
(*b[[h,var]]=h*ToExpression[val];*)
(*b];*)


(* ::Input:: *)
(*Total[Values[#] . Range[Length[#]]&/@Fold[parseop,ConstantArray[<||>,256],input]]*)
