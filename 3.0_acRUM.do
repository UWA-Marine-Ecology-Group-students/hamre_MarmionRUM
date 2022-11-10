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

**# sim_og
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM"

* read data 

	clear
	import delimited "data/02_data/2.1_acdat_rum.csv"

* making binary columns factors not numeric

	gen fsz3 = sz3 == 1
	gen fsz4 = sz4 == 1
	gen fsz5 = sz5 == 1
	gen fsz6 = sz6 == 1
	gen fchoice = choice == 1

* base model
	
	clogit fchoice c.travelcost fsz3 fsz4 fsz5 fsz6, group(tripid)
	estimates store sim_og
	
* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

* store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM/data/03_data"

	putexcel set ac_sim_og.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set ac_sim_og.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set ac_sim_og.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames
	
**# sim_1
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM"
	
* read data 

	clear
	import delimited "data/02_data/2.1_acsim1_rum.csv"

* making binary columns factors not numeric

	gen fsz2 = sz2 == 1
	gen fsz4 = sz4 == 1
	gen fsz5 = sz5 == 1
	gen fsz6 = sz6 == 1
	gen fchoice = choice == 1

* base model
	
	clogit fchoice c.travelcost fsz2 fsz4 fsz5 fsz6, group(tripid)
	estimates store sim_1
	
* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

* store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM/data/03_data"

	putexcel set ac_sim1.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set ac_sim1.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set ac_sim1.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames
	
**# sim_2
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM"
	
* read data 

	clear
	import delimited "data/02_data/2.1_acsim2_rum.csv"

* making binary columns factors not numeric

	gen fsz2 = sz2 == 1
	gen fsz4 = sz4 == 1
	gen fsz5 = sz5 == 1
	gen fsz6 = sz6 == 1
	gen fchoice = choice == 1

* base model
	
	clogit fchoice c.travelcost fsz2 fsz4 fsz5 fsz6, group(tripid)
	estimates store sim_2
	
* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

* store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM/data/03_data"

	putexcel set ac_sim2.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set ac_sim2.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set ac_sim2.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames
	
**# sim_3
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM"
	
* read data 

	clear
	import delimited "data/02_data/2.1_acsim3_rum.csv"

* making binary columns factors not numeric

	gen fsz2 = sz2 == 1
	gen fsz4 = sz4 == 1
	gen fsz5 = sz5 == 1
	gen fchoice = choice == 1

* base model
	
	clogit fchoice c.travelcost fsz2 fsz4 fsz5, group(tripid)
	estimates store sim_3
	
* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

* store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM/data/03_data"

	putexcel set ac_sim3.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set ac_sim3.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set ac_sim3.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames
	
**# sim_4
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM"
	
* read data 

	clear
	import delimited "data/02_data/2.1_acsim4_rum.csv"

* making binary columns factors not numeric

	gen fsz3 = sz3 == 1
	gen fsz4 = sz4 == 1
	gen fsz5 = sz5 == 1
	gen fsz6 = sz6 == 1
	gen fchoice = choice == 1

* base model
	
	clogit fchoice c.travelcost fsz3 fsz4 fsz5 fsz6, group(tripid)
	estimates store sim_4
	
* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

* store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_MarmionRUM/data/03_data"

	putexcel set ac_sim4.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set ac_sim4.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set ac_sim4.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames
