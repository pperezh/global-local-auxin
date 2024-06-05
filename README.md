**Introduction**

PaCeQuant is a Fiji Plug-in and it is the leading tool for pavement cell shape quantification (Moller _et al_, 2017). PaCeQuant can calculate 28 shape values from each pavement cell. Normally, a few hundred cells are analyzed per condition, therefore, these data sets can become difficult to manage manually. In PaCeQuant, each image generates a separate results file called "-table". In this repository, we share a custom code that compiles those result tables into one data-frame suitable for building ggplot2 graphs. 

**Other Solutions**
PaceQuant is a Fiji Plug-in. PaCeQuantAna (Poeschl _et al_, 2020) is a very useful Rstudio-compatible R library for analysis of the results obtained by PaCeQuant. However, the final figures are limited in their customization and specific pairwise statistical analysis is difficult to integrate.

**This Solution**

In this repository, we share a custom code that compiles PaCeQuant result tables into one data-frame suitable for building ggplot2 graphs. Once the data-frame is built, there is more flexibility to build graphs suited to the user’s needs.

This code : 1) will look for "results" folders and compile result tables within 2) use the name of the parent folder ("var1_var2") and assigned those variable to the compiled data 3) generate a data-frame ready to use with ggplot2. See the following example.

<img src= "https://github.com/pperezh/global-local-auxin/assets/80292580/e54c8114-cd43-488c-a576-1c07355f0d3c" width="200" height="300">

This is an example of a split violin graph. In y-axis is displaying one of the 28 shape values calculated from PaCeQuant, in this particular case "Lobes per cell". In the x-axis is variable1 (Genotype) and the 2 color on each violin are representing variable2 (Treament). 

**To use this code:**

1. In RStudio, set as working directory the same filepath used in PaCeQuant.  
2. Name the folders using 2 variables, e.g. “time”, “position”, “genotype”, “treatment”, “concentration”, 
3. Make sure the two variables are separated with an underscore, e.g “wt_mock”, “wt_hormone”, "mutant_mock", "mutant_hormone"
4. By default these variables are “Genotype” and “Treatment”.
5. If variables different from Genotype and Treatment will be used, please introduce the name of those 2 variables in each line of the code that annotated with  “### Change accordingly”

**This code was built and used in the following research project:**

Hierarchical global and local auxin signals coordinate cellular interdigitation in Arabidopsis.
Patricio Pérez-Henríquez1,2, Hongjiang Li1,5, Xiang Zhou3,4, Xue Pan6, Wenwei Lin2, Wenxin Tang2，Shingo Nagawa2, Deshu Lin2, Tongda Xu2, Marta Michniewicz7, Michael J. Prigge8, Lucia C. Strader7, Mark Estelle8, Ken-ichiro Hayashi9, Jiří Friml5, Linlin Qi3, Zhongchi Liu3,, Jaimie Van Norman2, Zhenbiao Yang3,4,1,10*

**References**

1.    Möller, B., Poeschl, Y., Plötner, R., and Bürstenbinder, K. (2017). PaCeQuant: A Tool for High-Throughput Quantification of Pavement Cell Shape Characteristics. Plant Physiol. 175, 998–1017. 10.1104/pp.17.00961.
2.    Poeschl, Y., Möller, B., Müller, L., and Bürstenbinder, K. (2020). User-friendly assessment of pavement cell shape features with PaCeQuant: Novel functions and tools. Methods Cell Biol. 160, 349–363. 10.1016/bs.mcb.2020.04.010. 
