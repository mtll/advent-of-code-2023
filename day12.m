(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)


(* ::Title:: *)
(*2023 Day 12*)


(* ::Input:: *)
(*p1={Characters@#1,ToExpression@StringCases[#2,NumberString]}&@@@StringSplit[ReadList["12.txt",String]," "];p2={Flatten@Riffle[ConstantArray[#1,5],"?"],Catenate[ConstantArray[#2,5]]}&@@@p1;*)


(* ::Input:: *)
(*Clear[instances];*)
(*instances[{".",___},_,_]=0;*)
(*instances[{"."|"?"...},0,{}]=1;*)
(*instances[{},n_,{n_}]=1;*)
(*instances[{},_,_]=0;*)
(*instances[_,n_,{p_,___}]/;n>p=0;*)
(**)
(*instances[suffix:{".",___},n_,ps:{n_,___}]:=instances[suffix,n,ps]=*)
(*instances[Rest@suffix,0,Rest@ps];*)
(*instances[suffix:{".",___},0,ps_]:=instances[suffix,0,ps]=*)
(*instances[Rest@suffix,0,ps];*)
(**)
(*instances[suffix:{"?",___},n_,ps:{n_,___}]:=instances[suffix,n,ps]=*)
(*instances[Rest@suffix,0,Rest@ps];*)
(*instances[suffix:{"?",___},n_,ps_]:=instances[suffix,n,ps]=*)
(*instances[Rest@suffix,n+1,ps];*)
(*instances[suffix:{"?",___},0,ps_]:=instances[suffix,0,ps]=*)
(*instances[Rest@suffix,1,ps]+instances[Rest@suffix,0,ps];*)
(**)
(*instances[suffix:{"#",___},n_,ps_]:=instances[suffix,n,ps]=*)
(*instances[Rest@suffix,n+1,ps];*)
(**)
(*instances[suffix_,ps_]:=instances[suffix,0,ps];*)


(* ::Subsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Total[instances@@@p1]*)


(* ::Subsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Total[instances@@@p2]*)
