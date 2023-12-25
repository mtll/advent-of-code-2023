(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 16*)


(* ::Input:: *)
(*input=ArrayPad[Characters@ReadList["16.txt",String],1,"#"];*)


(* ::Input:: *)
(*rot[v_,"\\"]:={Conjugate[v*-I]};*)
(*rot[v_,"/"]:={Conjugate[v*I]};*)
(*rot[v_Integer,"-"]:={I,-I};*)
(*rot[v_Complex,"|"]:={1,-1};*)
(*rot[v_,_]:={v};*)
(*rot[_,"#"]={};*)
(*move[p_,v_]:={p+#,#}&/@rot[v,input[[Sequence@@ReIm[p]]]];*)


(* ::Input:: *)
(*Module[{step},*)
(*step[pts_]:=With[{new=Select[pts,KeyFreeQ[memo,#]&]},*)
(*With[{next=Flatten[move@@@new,1]},*)
(*If[next=={},{},*)
(*memo[[Key/@pts]]=1;*)
(*arr=ReplacePart[arr,(ReIm/@new[[All,1]])->1];*)
(*next]]];*)
(*size[s_]:=Block[{arr=ConstantArray[0,Dimensions[input]],memo=<||>},*)
(*NestWhile[step,{s},#!={}&];*)
(*Total[arr[[2;;Length[input]-1,2;;Length[input]-1]],2]]]*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*size[{2+2I,I}]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Table[{{n+2I,I},{n-2I,-I},{2+n I,1},{-2+n I,-1}},{n,2,Length[input]-1}]//Max@@ParallelMap[size,#,{2}]&*)
