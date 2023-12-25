(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 22*)


(* ::Input:: *)
(*input=StringCases[#,DigitCharacter..]&/@StringSplit[ReadList["22.txt",String],"~"]//ToExpression//Map[#+Threaded@{1,1,0}&,#]&;*)
(*expanded=Threaded[#[[1]]]+Prepend[Table[Unitize[#[[2]]-#[[1]]]i,{i,Max[#[[2]]-#[[1]]]}],{0,0,0}]&/@input//SortBy[#,MinMax[#[[All,-1]]]&]&;*)


(* ::Input:: *)
(*findSupport[blocks_,newblock_]:=*)
(*Catch@Module[{support},*)
(*Do[support=*)
(*Select[*)
(*Lookup[blocks,i,{}],*)
(*IntersectingQ[#[[All,1;;2]],newblock[[All,1;;2]]]&];*)
(*If[support!={},Throw[support]];*)
(*,{i,Length[blocks],1,-1}];*)
(*{}]*)


(* ::Input:: *)
(*tower=Module[{support,settled,curr,edges,top},*)
(*settled=Select[expanded,Min[#[[All,-1]]]==1&];*)
(*edges=0\[DirectedEdge]#&/@settled;*)
(*settled=GroupBy[Select[expanded,Min[#[[All,-1]]]==1&],Max[#[[All,-1]]]&];*)
(*Do[*)
(*curr=expanded[[i]];*)
(*support=findSupport[settled,curr];*)
(*If[support!={},*)
(*curr=curr-Threaded[{0,0,Min[Last/@curr]-Max[support[[1,All,-1]]]-1}];*)
(*AppendTo[edges,#\[DirectedEdge]curr&/@support]*)
(*,(* Else *)*)
(*curr=curr-Threaded[{0,0,Min[Last/@curr]-1}];*)
(*AppendTo[edges,0\[DirectedEdge]curr]];*)
(*top=Max[curr[[All,-1]]];*)
(*AssociateTo[settled,top->Append[Lookup[settled,top,{}],curr]];*)
(*,{i,Length[edges]+1,Length[expanded]}];*)
(*edges//Flatten//Graph];*)


(* ::Subsection:: *)
(*Part 1 & 2*)


(* ::Input:: *)
(*pull[g_,v_]:=With[{d=Length@VertexOutComponent[VertexDelete[g,v],{0}]},*)
(*Length[VertexOutComponent[g,{0}]]-d-1];*)


(* ::Input:: *)
(*t=pull[tower,#]&/@DeleteCases[VertexList[tower],0]*)


(* ::Input:: *)
(*GraphPlot[tower,GraphLayout->{"LayeredDigraphEmbedding", "RootVertex"->0}]*)
