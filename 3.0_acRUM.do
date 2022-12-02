* ============================================================================
*
* Random Utility Model Script
*
* Input: RUM_3.0.csv
* Output: 
*
* Nicole Hamre
*
* ============================================================================

**# sim_og split acs logit
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM"
	
* read data 

	clear
	import delimited "data/02_data/2.1_acsimog_split_rum.csv"

* making binary columns factors not numeric

	gen fchoice = choice == 1

* base model
	
	
	asclogit fchoice c.travelcost, case(tripid) alt(gridid_alt)
	estimates store asc_simog_split
	
* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

* store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM/data/03_data"

	putexcel set aclogit_simog_split.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set aclogit_simog_split.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set aclogit_simog_split.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames

**# sim_1 split acs logit
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM"
	
* read data 

	clear
	import delimited "data/02_data/2.1_acsim1_split_rum.csv"

* making binary columns factors not numeric

	gen fchoice = choice == 1

* base model
	
	
	asclogit fchoice c.travelcost, case(tripid) alt(gridid_alt)
	estimates store asc_sim1_split
	
* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

* store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM/data/03_data"

	putexcel set aclogit_sim1_split.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set aclogit_sim1_split.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set aclogit_sim1_split.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames
	
**# sim_2 split acs logit
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM"
	
* read data 

	clear
	import delimited "data/02_data/2.1_acsim2_split_rum.csv"

* making binary columns factors not numeric

	gen fchoice = choice == 1

* base model
	
	
	asclogit fchoice c.travelcost, case(tripid) alt(gridid_alt)
	estimates store asc_sim2_split
	
* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

* store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM/data/03_data"

	putexcel set aclogit_sim2_split.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set aclogit_sim2_split.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set aclogit_sim2_split.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames
	
**# sim_3 split acs logit
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM"
	
* read data 

	clear
	import delimited "data/02_data/2.1_acsim3_split_rum.csv"

* making binary columns factors not numeric

	gen fchoice = choice == 1

* base model
	
	
	asclogit fchoice c.travelcost, case(tripid) alt(gridid_alt)
	estimates store asc_sim3_split
	
* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

* store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM/data/03_data"

	putexcel set aclogit_sim3_split.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set aclogit_sim3_split.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set aclogit_sim3_split.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames

	
**# sim_4 split acs logit
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM"
	
* read data 

	clear
	import delimited "data/02_data/2.1_acsim4_split_rum.csv"

* making binary columns factors not numeric

	gen fchoice = choice == 1

* base model
	
	
	asclogit fchoice c.travelcost, case(tripid) alt(gridid_alt)
	estimates store asc_sim4_split
	
* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

* store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM/data/03_data"

	putexcel set aclogit_sim4_split.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set aclogit_sim4_split.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set aclogit_sim4_split.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames
