proc print data=_TEMP0.brfss_stroke;

/* Only descriptive of one variable*/
proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _PAINDX2  / cl row chisq ;
run;

/*Table 1 */
/* Crosstab of two variables */
proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _AGE_G  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _AGE_G*_PAINDX2  / cl row chisq ;
run;

/* Crosstab of two variables */
proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   SEXVAR  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   SEXVAR*_PAINDX2  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _IMPRACE  / cl row chisq ;
run;
proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _IMPRACE*_PAINDX2  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _EDUCAG  / cl row chisq;
run;

data _TEMP0.brfss_stroke;
set _TEMP0.brfss_stroke;
if _EDUCAG = 9 then _EDUCAG=.;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _EDUCAG*_PAINDX2  / cl row chisq ; 
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _INCOMG  / cl row chisq ;
run;

data _TEMP0.brfss_stroke;
set _TEMP0.brfss_stroke;
if      _INCOMG=9 then _INCOMG=.;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _INCOMG*_PAINDX2  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _STATE  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _STATE*_PAINDX2  / cl row chisq;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDCRHD4  / cl row chisq;
run;

data _TEMP0.brfss_stroke;
set _TEMP0.brfss_stroke;
if      CVDCRHD4=7 then CVDCRHD4=.;
if      CVDCRHD4=9 then CVDCRHD4=.;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDCRHD4*_PAINDX2  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDSTRK3  / cl row chisq;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDSTRK3*_PAINDX2  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   BPHIGH4  / cl row chisq;
run;

data _TEMP0.brfss_stroke;
set _TEMP0.brfss_stroke;
if      BPHIGH4=3 then BPHIGH4=.;
if      BPHIGH4=4 then BPHIGH4=.;
if      BPHIGH4=7 then BPHIGH4=.;
if      BPHIGH4=9 then BPHIGH4=.;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   BPHIGH4*_PAINDX2  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDINFR4  / cl row chisq;
run;

data _TEMP0.brfss_stroke;
set _TEMP0.brfss_stroke;
if      CVDINFR4=7 then CVDINFR4=.;
if      CVDINFR4=9 then CVDINFR4=.;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDINFR4*_PAINDX2  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   DIABETE4  / cl row chisq;
run;

data _TEMP0.brfss_stroke;
set _TEMP0.brfss_stroke;
if      DIABETE4=3 then DIABETE4=.;
if      DIABETE4=4 then DIABETE4=.;
if      DIABETE4=7 then DIABETE4=.;
if      DIABETE4=9 then DIABETE4=.;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   DIABETE4*_PAINDX2  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _RFCHOL2  / cl row chisq;
run;

data _TEMP0.brfss_stroke;
set _TEMP0.brfss_stroke;
if      _RFCHOL2=9 then _RFCHOL2=.;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _RFCHOL2*_PAINDX2  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _SMOKER3  / cl row chisq;
run;

data _TEMP0.brfss_stroke;
set _TEMP0.brfss_stroke;
if      _SMOKER3=3 then _SMOKER3=.;
if      _SMOKER3=4 then _SMOKER3=.;
if      _SMOKER3=9 then _SMOKER3=.;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _SMOKER3*_PAINDX2  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   HLTHPLN1  / cl row chisq;
run;

data _TEMP0.brfss_stroke;
set _TEMP0.brfss_stroke;
if      HLTHPLN1=7 then HLTHPLN1=.;
if      HLTHPLN1=9 then HLTHPLN1=.;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   HLTHPLN1*_PAINDX2  / cl row chisq ;
run;


/*table 2*/
/*Adjusted odds ratio for age and sex*/
/* we can add more variables here */
PROC SURVEYLOGISTIC DATA =_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _AGE_G (PARAM=REF REF="1") ;
CLASS SEXVAR (PARAM=REF REF="2") ;
CLASS _IMPRACE (PARAM=REF REF="2") ;
CLASS _EDUCAG (PARAM=REF REF="2") ;
CLASS _INCOMG (PARAM=REF REF="1") ;
CLASS _STATE (PARAM=REF REF="1") ;
CLASS CVDCRHD4 (PARAM=REF REF="2") ;
CLASS _PAINDX2 (PARAM=REF REF="2") ;
CLASS BPHIGH4 (PARAM=REF REF="2") ;
CLASS CVDINFR4 (PARAM=REF REF="2") ;
CLASS DIABETE4 (PARAM=REF REF="2") ;
CLASS _RFCHOL2 (PARAM=REF REF="2") ; 
CLASS _SMOKER3 (PARAM=REF REF="2") ;
CLASS HLTHPLN1 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =_AGE_G SEXVAR _IMPRACE _EDUCAG _INCOMG _STATE _PAINDX2 CVDCRHD4 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1;
run;


/* Table 3: crosstab (1st 3 columns) */
proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _AGE_G*CVDSTRK3  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   SEXVAR*CVDSTRK3  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _IMPRACE*CVDSTRK3  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _EDUCAG*CVDSTRK3  / cl row chisq ; 
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _INCOMG*CVDSTRK3  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _STATE*CVDSTRK3  / cl row chisq;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables  _PAINDX2*CVDSTRK3  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDCRHD4*CVDSTRK3  / cl row chisq ;
run;

proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   BPHIGH4*CVDSTRK3  / cl row chisq ;
run;


proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDINFR4*CVDSTRK3  / cl row chisq ;
run;


proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   DIABETE4*CVDSTRK3  / cl row chisq ;
run;


proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _RFCHOL2*CVDSTRK3  / cl row chisq ;
run;


proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _SMOKER3*CVDSTRK3  / cl row chisq ;
run;


proc surveyfreq data=_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   HLTHPLN1*CVDSTRK3  / cl row chisq ;
run;


/*table 4*/
PROC SURVEYLOGISTIC DATA =_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _IMPRACE (PARAM=REF REF="1") ;
MODEL CVDSTRK3 =_IMPRACE;
run;

/*Adjusted odds ratio for age and sex*/
/* we can add more variables here */
PROC SURVEYLOGISTIC DATA =_TEMP0.brfss_stroke;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _AGE_G (PARAM=REF REF="1") ;
CLASS _IMPRACE (PARAM=REF REF="2") ;
CLASS _EDUCAG (PARAM=REF REF="2") ;
CLASS _INCOMG (PARAM=REF REF="5") ;
CLASS _STATE (PARAM=REF REF="1") ;
CLASS CVDCRHD4 (PARAM=REF REF="2") ;
CLASS _PAINDX2 (PARAM=REF REF="2") ;
CLASS BPHIGH4 (PARAM=REF REF="2") ;
CLASS CVDINFR4 (PARAM=REF REF="2") ;
CLASS DIABETE4 (PARAM=REF REF="2") ;
CLASS _RFCHOL2 (PARAM=REF REF="1") ; 
CLASS _SMOKER3 (PARAM=REF REF="1") ;
CLASS HLTHPLN1 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =_AGE_G _IMPRACE _EDUCAG _INCOMG _STATE _PAINDX2 CVDCRHD4 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1;
run;
