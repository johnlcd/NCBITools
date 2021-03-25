
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


