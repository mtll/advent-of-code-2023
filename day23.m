(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 23*)


(* ::Input:: *)
(*input=ArrayPad[Characters@ReadList["23.txt",String],1,"#"];*)


(* ::Input:: *)
(*rules[pt_]/;Extract[input,pt]==".":=With[{nhd={{1,0},{-1,0},{0,1},{0,-1}}},*)
(*Cases[nhd+Threaded[pt],x_?(Extract[input,#]=="."&):>pt\[UndirectedEdge]x]];*)
(*rules[pt_]/;Extract[input,pt]==">":={pt\[DirectedEdge]pt+{0,1},pt+{0,-1}\[DirectedEdge]pt};*)
(*rules[pt_]/;Extract[input,pt]=="<":={pt\[DirectedEdge]pt+{0,-1},pt+{0,1}\[DirectedEdge]pt};*)
(*rules[pt_]/;Extract[input,pt]=="v":={pt\[DirectedEdge]pt+{1,0},pt+{-1,0}\[DirectedEdge]pt};*)
(*rules[pt_]/;Extract[input,pt]=="^":={pt\[DirectedEdge]pt+{-1,0},pt+{1,0}\[DirectedEdge]pt};*)
(*rules[_]={};*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*g1=Table[rules[{r,c}],{r,2,Length[input]-1},{c,2,Length[input[[1]]]-1}]//Flatten//SimpleGraph*)


(* ::Input:: *)
(*Max[Length/@FindPath[g1,{2,3},{Length[input]-1,Length[input]-2},Infinity,All]]-1*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*g2=g1//UndirectedGraph;nodes=Join[VertexList[g2][[Flatten@Position[VertexDegree[g2],_?(#>=3&)]]],{{2,3},{Length[input]-1,Length[input]-2}}];*)


(* ::Input:: *)
(*amat=Table[First[FindPath[VertexDelete[g2,Delete[nodes,{{i},{j}}]],nodes[[i]],nodes[[j]]],{}]//*)
(*Length,{i,1,Length[nodes]},{j,1,Length[nodes]}]/. 0->\[Infinity];*)


(* ::Input:: *)
(*g3=WeightedAdjacencyGraph[amat]*)


(* ::Input:: *)
(*Max[FindPath[g3,Length[nodes],Length[nodes]-1,{4000,Infinity},All]//Map[Total@BlockMap[Extract[amat,#]&,#,2,1]-Length[#]+1&,#]&]*)


(* ::Input:: *)
(*N@(Total[amat/. \[Infinity]->0,2]/5)*)
