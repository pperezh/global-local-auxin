Introduction
PaCeQuant is a Fiji Plug-in and it is the leading tool for pavement cell shape quantification1. PaCeQuant can calculate 28 shape values from each pavement cell. Normally, a few hundreds of cells are analyzed per conditions, therefore, these data sets can become difficult to manage manually. In PaCeQuant, each image generates a file results table. In this repository, we share a custom code that compiles those results tables into one data-frame suitable for building ggplot2 graphs. 
Other Solutions
PaceQuant is a Fiji Plug-in. PaCeQuantAna2 is a very useful Rstudio-compatible R library for analysis results obtained by PaCeQuant. However, the final figures are limited in their customization and specific pairwise statistical analysis is difficult to integrate.
This Solution
In this repository, we share a custom code that compiles PaCeQuant 2  result tables into one data-frame suitable for building ggplot2 graphs. Once the data-frame is built, the is more flexibility to build graphs suited to the user’s needs.
To use the code:
1. Arrange your data in folders named with 2 variables in your experiment 
2. Name the folders using 2 variables, e.g. “time”, “position”, “genotype”, “treatment”, “concentration”, 
3. Make sure the two variables are separated with an underscore “_”.
4. By default these variables are “Genotype” and “Treatment”.
e.g: “wt_mock”, “wt_hormone”, “mutant1_mock”, “mutant1_hormone”, “mutant2_mock”, “mutant2_hormone”, etc
 5. If variables different than Genotype and Treatment will be used, Introduce the name of the 2 variables in the code as indicated by “ ### Change accordingly”

This code was built and used in the following research project:
Hierarchical global and local auxin signals coordinate cellular interdigitation in Arabidopsis.
Patricio Pérez-Henríquez1,2, Hongjiang Li1,5, Xiang Zhou3,4, Xue Pan6, Wenwei Lin2, Wenxin Tang2，Shingo Nagawa2, Deshu Lin2, Tongda Xu2, Marta Michniewicz7, Michael J. Prigge8, Lucia C. Strader7, Mark Estelle8, Ken-ichiro Hayashi9, Jiří Friml5, Linlin Qi3, Zhongchi Liu3,, Jaimie Van Norman2, Zhenbiao Yang3,4,1,10*
References
1.    Möller, B., Poeschl, Y., Plötner, R., and Bürstenbinder, K. (2017). PaCeQuant: A Tool for High-Throughput Quantification of Pavement Cell Shape Characteristics. Plant Physiol. 175, 998–1017. 10.1104/pp.17.00961.
2.    Poeschl, Y., Möller, B., Müller, L., and Bürstenbinder, K. (2020). User-friendly assessment of pavement cell shape features with PaCeQuant: Novel functions and tools. Methods Cell Biol. 160, 349–363. 10.1016/bs.mcb.2020.04.010. 
