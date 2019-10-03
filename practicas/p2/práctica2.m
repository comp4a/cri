(*c1: Poli, c2: mono, c3: mono, c4: mono, c5: mono, c6:poli, c7: mono, c8: poli*)

Ordenar[l_]:= Module[{lOrd,lFreq,keys,values,res},
	lOrd = Sort[l];
	lFreq = Counts[lOrd];
	keys = Keys[lFreq];
	values = Values[lFreq];
	res = Transpose[{keys,values}];
	res = SortBy[res,Last];
	res = Reverse[res];
	Return[res];
]

IC[l_]:= Module[{lFreq,i,sum,values,quot,res},
lFreq = Counts[l];
values = Values[lFreq];
sum = Sum[values[[i]]*(values[[i]] -1),{i,Length[values]}];
quot = Length[l]*(Length[l]-1);
res = sum/quot;
Return[N[res]];
]

Ordenar[c2]
IC[c2]
