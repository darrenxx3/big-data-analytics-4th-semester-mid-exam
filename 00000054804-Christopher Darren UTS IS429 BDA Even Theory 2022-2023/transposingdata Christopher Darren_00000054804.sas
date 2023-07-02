
proc print data=work.kimochimart;
run;


proc sort data=work.kimochimart out=kimochimart_sorted;
	by Date;
	
run;

proc print data=work.kimochimart_sorted; run;

proc transpose data=work.kimochimart_sorted
	out=work.kimochimart_transposed(drop=_NAME_);
	by Date;
	var Sales; 
	

quit;