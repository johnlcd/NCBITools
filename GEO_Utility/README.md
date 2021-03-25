
# NCBITools  
> Toolkits for download and process ***`NCBI`*** data files 
<br>

## License
> This software is distributed under the terms of GPL 2.0  
<br>

## Source
> [https://github.com/johnlcd/NCBITools](https://github.com/johnlcd/NCBITools)  
<br>

## Maintainer
> **Jia-Bin Chen**  
> You can contact [:email:](johnlcd@stu.xjtu.edu.cn) johnlcd@stu.xjtu.edu.cn 
  when you have any questions, suggestions, comments, etc.  
<br>

## Building `NCBITools`

***CMD:***  

		git clone https://github.com/johnlcd/NCBITools.git

<br>

## Directory catalog

- **GEO_Utility**  	
	- **script**  
		- GEOquary_download.R
	- GEO_download
	- ... ...
	- ... ...
- **...**
	- **... ...**
		- ... ...
		- ... ...
<br>


## Runing preparation
- ### Set environment variables

***CMD:***  

		export NCBITools=/path/to/NCBITools
		export PATH=$PKG_DIR/bin:$PATH

- ### Set the environment variables of each tools (sub-directory)

***CMD:***  

		cd $PKG_DIR/data
		tar -zxvf intron_pairs_data.tgz
		cd $PKG_DIR/data/raw_data
		gunzip *.gz
		cat Histone_part1.txt Histone_part2.txt > Histone.txt
<br>


## Work flow
### **CIRCScan** Pipeline  
![CIRCScan pipeline](https://github.com/johnlcd/CIRCScan/blob/master/pipeline.jpg)  

### 1. Data preparation and feature generation
> Epigenetic data including DNaseI HS, Histone modification, downloaded from `ENCODE` [http://hgdownload.cse.ucsc.edu/goldenPath/hg19/encodeDCC/](http://hgdownload.cse.ucsc.edu/goldenPath/hg19/encodeDCC/)  
- ### Process the raw broadPeak/narrowPeak file of ENCODE

***CMD:***

For each histone mark: (e.g.: H3K36me3)
		
		zcat wgEncodeBroadHistoneK562H3k36me3StdPk.broadPeak.gz | awk -v OFS='\t' '{print "K562","None","H3K36me3",$1,$2,$3}' > K562_H3K36me3.txt

then merged all marks of selected cell lines:

		#rm -f Histon.txt
		cat <(echo "cell treatment antibody chr start end" | sed 's/ /\t/g') *.txt > Histon.txt (Put these '.txt' file in one directory)


For DHS:

		zcat wgEncodeAwgDnaseUwdukeK562UniPk.narrowPeak.gz | awk -v OFS='\t' '{print "K562","None",$1,$2,$3}' > K562_DNaseI.txt

then merged all cell line:

		#rm -f DNaseI.txt
		cat <(echo "cell treatment chr start end" | sed 's/ /\t/g') *.txt > DNaseI.txt
		

