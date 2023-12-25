(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 20*)


(* ::Input:: *)
(*input=Flatten@StringCases[#,{"%"|"&","broadcaster"->{" ","broadcaster"},__}]&/@StringSplit[StringReplace[ReadList["20.txt",String],","->""]];*)
(*type=<|#[[2]]->#[[1]]&/@input|>;*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*next[m_]:=Cases[Keys@state,{m,x_}:>x];*)
(*call[_,_,_]:={}*)
(*call[_,m_,False]/;type[[m]]=="%":={m,next[m],(state[[m]]=!state[[m]])}*)
(*call[callee_,m_,p_]/;type[[m]]=="&":=Module[{},*)
(*state[[Key[{callee,m}]]]=p;*)
(*{m,next[m],!And@@Lookup[state,Cases[Keys@state,{_,m}]]}]*)
(*call[{callee_,m_List,p_}]:=Module[{},*)
(*If[p,high+=Length[m],low+=Length[m]];*)
(*call[callee,#,p]&/@m]*)


(* ::Input:: *)
(*Block[{high=0,low=0,lists={},state},*)
(*state=<|Flatten[(n|->{{n[[1]],#}->False,n[[1]]->False}&/@n[[2;;]])@Delete[#,{{1},{3}}]&/@input]|>;*)
(*Do[*)
(*low++;*)
(*FixedPoint[DeleteCases[Flatten[call/@#,1],{}]&,{{"broadcaster",next["broadcaster"],False}}];*)
(*,1000];*)
(*high*low]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*countervalue[c_]:=Module[{flipflop,and,edges=EdgeList[c]},*)
(*flipflop=Reverse@TopologicalSort[VertexDelete[c,_?(type[[#]]=="&"&)]];*)
(*and=First@SymmetricDifference[VertexList[c],flipflop];*)
(*FromDigits[Boole[MemberQ[edges,#\[DirectedEdge]and]]&/@flipflop,2]]*)


(* ::Input:: *)
(*AbsoluteTiming[LCM@@Map[countervalue,Graph[Flatten[(p|->p[[2]]->#&/@p[[4;;]])/@input]]//*)
(*Select[ConnectedGraphComponents[#],VertexCount[#]>1&]&]]*)


(* ::Input:: *)
(*cycles=Graph[Flatten[(p|->p[[2]]->#&/@p[[4;;]])/@input],{VertexStyle->{_?(type[[#]]=="&"&)->LightYellow,_?(type[[#]]=="%"&)->LightBlue},*)
(*VertexSize->.55,VertexLabels->{x_:>Placed[type[[x]],Center]}}]//*)
(*Select[ConnectedGraphComponents[#],VertexCount[#]>1&]&;*)
