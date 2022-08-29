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

**# set up
* define directory  

	cd "/Users/23088313/Documents/git_repos/hamre_esperanceRUM"

* read data 

	clear
	import delimited "ignore/02_data/2.1_scbio.csv"

**# data prep 


* making binary columns factors not numeric

	* gen fkids = kids == 1
	gen fisl_adj = isl_adj == 1
	gen fchoice = choice == 1
	gen fshelter = shelter == 1
	* gen fline = line == 1
	* gen ftroll = troll == 1
	* gen fdive = dive == 1

* changing strings to factors

	* encode resident, gen(fres)

* changing strings to numeric

	destring *, ignore("NA") replace

* transformations

	* gen depthsquared = depth*depth
	gen arealog = log(area+1)
	
* making interactions
* line
	* gen line_depth = fline*depth 
	* gen  line_depthsq = fline*depthsquared
	* gen line_reef = fline*reef
	* gen line_ma = fline*macroalgae
	* gen line_sg = fline*seagrass
	* gen line_isl = fline*fisl_adj
	
* troll	
	* gen troll_sst = ftroll*sst
	* gen troll_area = ftroll*area
	* gen troll_reef = ftroll*reef	
	* gen troll_sg = ftroll*seagrass
	* gen troll_ma = ftroll*macroalgae
	
* dive
	* gen dive_depth = fdive*depth
	* gen dive_depthsq = fdive*depthsquared
	* gen dive_reef = fdive*reef
	* gen dive_ma = fdive*macroalgae
	
* kids
	* gen kids_tc = fkids*travelcost
	* gen kids_isl = fkids*isl_adj
	* gen res_reef = fres*reef
	* gen boat_tc = boatlength*travelcost
	

* storing new data 

	export delimited using "ignore/03_data/3.0_scbio.csv", replace

**# model
* use "#" for interaction, ## for full factorial interaction
* need to prefix numeric variables with "c." when including in interaction
* prefix factors with "i."

* base model
	
	clogit choice c.travelcost c.depth arealog km_mainland fisl_adj fshelter, group(tripid)
	estimates store basemod

* line_ma - test interactions example
	* clogit choice c.travelcost c.depth c.depthsquared area i.fisl_adj line_ma, group(tripid)
	* estimates store mod1
	
* get AIC for each

	estimate stats basemod

* store variance-covariance matrix 

	matrix b = e(b)'
	matrix v = e(V)

**# store outputs 

	* define directory  to store

	cd "/Users/23088313/Documents/git_repos/hamre_esperanceRUM/ignore/03_data"

	putexcel set mod.xlsx, replace
	putexcel A2 = matrix(b), rownames
	putexcel B1 = "Vars"
	putexcel C1 = "Coef"
	putexcel set mod.xlsx, modify sheet(v)
	putexcel A2 = matrix(v), rownames
	putexcel set mod.xlsx, modify sheet(v)
	putexcel A1 = matrix(v), rownames
