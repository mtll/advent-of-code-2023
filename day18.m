(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 18*)


(* ::Input:: *)
(*input=StringCases[ReadList["18.txt",String],{"L"->{0,-1},"R"->{0,1},"U"->{-1,0},"D"->{1,0}," "~~x:DigitCharacter..~~" ":>ToExpression[x],"("~~x__~~")":>x}];*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*trench=Accumulate[Times@@@ input[[All,1;;2]]];*)
(*Abs@Total@BlockMap[Det[#\[Transpose]]&,trench,2]+Total@input[[All,2]]/2+1*)


(* ::Input:: *)
(*trench2=Polygon@Accumulate[Times@@@ input[[All,1;;2]]];*)


(* ::Input:: *)
(*Area[trench2]+Perimeter[trench2]/2+1*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*dirs=<|"0"->{0,-1},"1"->{-1,0},"2"->{0,1},"3"->{1,0}|>;*)
(*input2=Flatten[StringCases[input[[All,3]],*)
(*{"#"~~dist__~~d_~~EndOfString:>{dirs[[d]],FromDigits[dist,16]}}],1];*)
(*trench2=Accumulate[Times@@@input2];*)


(* ::Input:: *)
(*Area[Polygon[trench2]]+Perimeter[Polygon[trench2]]/2+1*)


(* ::Input:: *)
(*Abs@Total@BlockMap[Det[#\[Transpose]]&,trench2,2]+Total@input2[[All,2]]/2+1*)
