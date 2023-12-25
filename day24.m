(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 24*)


(* ::Input:: *)
(*input=StringCases[ReadList["24.txt",String],x:NumberString..:>ToExpression[x]];*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*ParallelMap[*)
(*With[{a=#[[1,1;;2]]+#[[1,4;;5]]*t1,b=#[[2,1;;2]]+#[[2,4;;5]]*t2},*)
(*Length[Solve[a==b&&*)
(*200000000000000\[VectorLessEqual]a\[VectorLessEqual]400000000000000&&*)
(*200000000000000\[VectorLessEqual]b\[VectorLessEqual]400000000000000&&*)
(*t1>=0&&t2>=0,{t1,t2},Reals]]]&,Subsets[input,{2}]]//Count[1]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*x+y+z/.First@Solve[{x,y,z}+{vx,vy,vz}*t1==input[[1,1;;3]]+input[[1,4;;6]]*t1&&*)
(*{x,y,z}+{vx,vy,vz}*t2==input[[2,1;;3]]+input[[2,4;;6]]*t2&&*)
(*{x,y,z}+{vx,vy,vz}*t3==input[[3,1;;3]]+input[[3,4;;6]]*t3,{x,y,z,vx,vy,vz,t1,t2,t3}]*)


(* ::Input:: *)
(*ListLinePlot3D[Table[#[[1;;3]]+#[[4;;6]]*t,{t,1,2000000000000,2000000000000/4}]&/@input]*)
