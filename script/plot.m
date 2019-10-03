#!/usr/local/bin/WolframScript -script

res = Input[]
Print[res]
res = SortBy[res,First];
res = res[[All,2]]
plot = BarChart[res];
Export["test.jpg", plot]
