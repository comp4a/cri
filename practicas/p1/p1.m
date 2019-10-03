EuclidesExt[a_, b_] := Module[{l, g},
  If[b == 0,
   Return[{1, a, 0}];,
   l = EuclidesExt[b, Mod[a, b]];
   g = {1, 2, 3};
   g[[1]] = l[[1]];
   g[[2]] = l[[3]];
   g[[3]] = l[[2]] - l[[3]]* Floor[a/b];
   Return[g];
   ]
  ]

EuclidesExt[2, 5]

Fermat[n_, k_] := Module[{a},
	For[1,k,1,
		a = RandomInteger[{1,n}]
		If[Inverso[a] !=  1,
			Return[False]
		]
	]
	Return[True]
]

BusquedaPrimos[k_,t_] := Module[{a,b},
	While[True,
		a = 0;
		While[EvenQ[a],
			a = RandomInteger[{2^k,2^(k+1)-1}]
		]
		If[Fermat[n,t],
   			Return[n]
		]
	]
]
