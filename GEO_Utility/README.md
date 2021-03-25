
# GEO_Utility  
> Toolkits for ***`GEO`*** data utilitis 
<br>

## License
> This software is distributed under the terms of GPL 2.0  
<br>

## Source
> [https://github.com/johnlcd/NCBITools](https://github.com/johnlcd/NCBITools/GEO_download)  
<br>

## Maintainer
> **Jia-Bin Chen**  
> You can contact [:email:](johnlcd@stu.xjtu.edu.cn) johnlcd@stu.xjtu.edu.cn 
  when you have any questions, suggestions, comments, etc.  
<br>

## Directory catalog

- **script**  	
	- GEOquary_download.R  
	- ... ...  
- GEO_download 
- ... ... 
<br>


## Runing preparation
- ### Set environment variables

***CMD:***  

		export NCBITools=/path/to/NCBITools
		export PATH=${NCBITools}/GEO_Utility:$PATH


## Usage
### 1. **GEO_download**: download GEO data (including supplemetary files)   

***CMD:***

For GEO accession GSEXXXX: 
		
		GEO_download --file/--supp -a <GEO accession> [ -d <out directory> ] 

then the program downloads files ("--supp" for supplementary files).

		

