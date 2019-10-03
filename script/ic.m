#!/usr/local/bin/WolframScript -script

l = Input[]

lFreq = Counts[l];
values = Values[lFreq];
sum = Sum[values[[i]]*(values[[i]] -1),{i,Length[values]}];
quot = Length[l]*(Length[l]-1);
res = sum/quot;
Print[res*1.0];
