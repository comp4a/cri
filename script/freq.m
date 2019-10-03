#!/usr/local/bin/WolframScript -script

l = Input[]
lOrd = Sort[l];
lFreq = Counts[lOrd];
keys = Keys[lFreq];
values = Values[lFreq];
res = Transpose[{keys,values}];
res = SortBy[res,Last];
res = Reverse[res];
Print[res];
