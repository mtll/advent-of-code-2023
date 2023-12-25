(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 10*)


(* ::Input:: *)
(*nhd={"F"->{{1,0},{0,1}},"L"->{{-1,0},{0,1}},"7"->{{1,0},{0,-1}},"|"->{{1,0},{-1,0}},"J"->{{-1,0},{0,-1}},"-"->{{0,1},{0,-1}},"S"->{{0,1},{0,-1},{1,0},{-1,0}},"."->{{0,0}}};*)
(*input=MapIndexed[(#1/.nhd)+Threaded[#2]&,ArrayPad[Characters@ReadList["10.txt",String],1,"."],{2}];*)
(*start=FirstPosition[input,{_,_,_,_},{},{2}];*)
(*step[{f_,t_}]:={t,SelectFirst[Extract[input,t],MemberQ[Extract[input,#],t]&&f!=#&]};*)
(*loop=NestWhileList[step,{{0,0},start},!MatchQ[#,{Except[{0,0}],start}]&][[2;;]];*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Length[loop]/2*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*(Abs@Total[Det/@Transpose[loop,2<->3]]-Length[loop])/2+1*)


(* ::Chapter:: *)
(*Shorter*)


(* ::Input:: *)
(*nhd={"F"->{{1,0},{0,1}},"L"->{{-1,0},{0,1}},"7"->{{1,0},{0,-1}},"|"->{{1,0},{-1,0}},"J"->{{-1,0},{0,-1}},"-"->{{0,1},{0,-1}},"S"->{{0,1},{0,-1},{1,0},{-1,0}},"."->{{0,0}}};makeEdge[c_,pt_]:=pt->#&/@((c/.nhd)+Threaded[pt]);graph=Flatten@MapIndexed[makeEdge,Characters@ReadList["10.txt",String],{2}]//Graph;*)
(*loop=MaximalBy[FindCycle[graph,Infinity,All],Length][[1,All,1]];*)


(* ::Input:: *)
(*Length[loop]/2*)


(* ::Input:: *)
(*Area@Polygon[loop]-Length[loop]/2+1*)
