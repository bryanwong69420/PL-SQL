CREATE OR REPLACE PROCEDURE create_record(
    t_IYEAR IN NUMBER,
    t_IMONTH IN NUMBER,
    t_IDAY	IN NUMBER,
    t_APPROXDATE IN	VARCHAR2,
    t_EXTENDED IN NUMBER,
    t_RESOLUTION IN VARCHAR2,
    t_COUNTRY IN NUMBER,
    t_COUNTRY_TXT IN VARCHAR2,
    t_REGION IN NUMBER,
    t_REGION_TXT IN VARCHAR2,
    t_PROVSTATE IN VARCHAR2,
    t_CITY IN VARCHAR2,
    t_LATITUDE IN NUMBER,
    t_LONGITUDE IN NUMBER,
    t_SPECIFICITY IN NUMBER,
    t_VICINITY IN NUMBER,
    t_LOCATION IN VARCHAR2,
    t_SUMMARY IN VARCHAR2,
    t_CRIT1 IN NUMBER,
    t_CRIT2 IN NUMBER,
    t_CRIT3 IN NUMBER,
    t_DOUBTTERR	NUMBER,
    t_ALTERNATIVE IN NUMBER,
    t_ALTERNATIVE_TXT IN VARCHAR2,
    t_MULTIPLE IN NUMBER,
    t_SUCCESS IN NUMBER,
    t_SUICIDE IN NUMBER,
    t_ATTACKTYPE1 IN NUMBER,
    t_ATTACKTYPE1_TXT IN VARCHAR2,
    t_ATTACKTYPE2 IN NUMBER,
    t_ATTACKTYPE2_TXT IN VARCHAR2,
    t_ATTACKTYPE3 IN VARCHAR2,
    t_ATTACKTYPE3_TXT IN VARCHAR2,
    t_TARGTYPE1 IN NUMBER,
    t_TARGTYPE1_TXT IN VARCHAR2,
    t_TARGSUBTYPE1 IN NUMBER,
    t_TARGSUBTYPE1_TXT IN VARCHAR2,
    t_CORP1 IN VARCHAR2,
    t_TARGET1 IN VARCHAR2,
    t_NATLTY1 IN NUMBER,
    t_NATLTY1_TXT IN VARCHAR2,
    t_TARGTYPE2 IN VARCHAR2,
    t_TARGTYPE2_TXT IN VARCHAR2,
    t_TARGSUBTYPE2 IN VARCHAR2,
    t_TARGSUBTYPE2_TXT IN VARCHAR2,
    t_CORP2 IN VARCHAR2,
    t_TARGET2 IN VARCHAR2,
    t_NATLTY2 IN VARCHAR2,
    t_NATLTY2_TXT IN VARCHAR2,
    t_TARGTYPE3 IN VARCHAR2,
    t_TARGTYPE3_TXT IN VARCHAR2,
    t_TARGSUBTYPE3 IN VARCHAR2,
    t_TARGSUBTYPE3_TXT IN VARCHAR2,
    t_CORP3 IN VARCHAR2,
    t_TARGET3 IN VARCHAR2,
    t_NATLTY3 IN VARCHAR2,
    t_NATLTY3_TXT IN VARCHAR2,
    t_GNAME IN VARCHAR2,
    t_GSUBNAME IN VARCHAR2,
    t_GNAME2 IN VARCHAR2,
    t_GSUBNAME2 IN VARCHAR2,
    t_GNAME3 IN VARCHAR2,
    t_GSUBNAME3 IN VARCHAR2,
    t_MOTIVE IN VARCHAR2,
    t_GUNCERTAIN1 IN NUMBER,
    t_GUNCERTAIN2 IN VARCHAR2,
    t_GUNCERTAIN3 IN VARCHAR2,
    t_INDIVIDUAL IN NUMBER,
    t_NPERPS IN NUMBER,
    t_NPERPCAP IN NUMBER,
    t_CLAIMED IN NUMBER,
    t_CLAIMMODE IN NUMBER,
    t_CLAIMMODE_TXT IN VARCHAR2,
    t_CLAIM2 IN VARCHAR2,
    t_CLAIMMODE2 IN VARCHAR2,
    t_CLAIMMODE2_TXT IN VARCHAR2,
    t_CLAIM3 IN VARCHAR2,
    t_CLAIMMODE3 IN VARCHAR2,
    t_CLAIMMODE3_TXT IN VARCHAR2,
    t_COMPCLAIM IN VARCHAR2,
    t_WEAPTYPE1 IN NUMBER,
    t_WEAPTYPE1_TXT IN VARCHAR2,
    t_WEAPSUBTYPE1 IN NUMBER,
    t_WEAPSUBTYPE1_TXT IN VARCHAR2,
    t_WEAPTYPE2 IN NUMBER,
    t_WEAPTYPE2_TXT IN VARCHAR2,
    t_WEAPSUBTYPE2 IN NUMBER,
    t_WEAPSUBTYPE2_TXT IN VARCHAR2,
    t_WEAPTYPE3 IN VARCHAR2,
    t_WEAPTYPE3_TXT IN VARCHAR2,
    t_WEAPSUBTYPE3 IN VARCHAR2,
    t_WEAPSUBTYPE3_TXT IN VARCHAR2,
    t_WEAPTYPE4 IN VARCHAR2,
    t_WEAPTYPE4_TXT IN VARCHAR2,
    t_WEAPSUBTYPE4 IN VARCHAR2,
    t_WEAPSUBTYPE4_TXT IN VARCHAR2,
    t_WEAPDETAIL IN VARCHAR2,
    t_NKILL IN NUMBER,
    t_NKILLUS IN NUMBER,
    t_NKILLTER IN NUMBER,
    t_NWOUND IN NUMBER,
    t_NWOUNDUS IN NUMBER,
    t_NWOUNDTE IN NUMBER,
    t_PROPERTY IN NUMBER,
    t_PROPEXTENT IN NUMBER,
    t_PROPEXTENT_TXT IN VARCHAR2,
    t_PROPVALUE IN NUMBER,
    t_PROPCOMMENT IN VARCHAR2,
    t_ISHOSTKID IN NUMBER,
    t_NHOSTKID IN NUMBER,
    t_NHOSTKIDUS IN NUMBER,
    t_NHOURS IN VARCHAR2,
    t_NDAYS IN VARCHAR2,
    t_DIVERT IN VARCHAR2,
    t_KIDHIJCOUNTRY IN VARCHAR2,
    t_RANSOM IN NUMBER,
    t_RANSOMAMT IN NUMBER,
    t_RANSOMAMTUS IN VARCHAR2,
    t_RANSOMPAID IN NUMBER,
    t_RANSOMPAIDUS IN VARCHAR2,
    t_RANSOMNOTE IN VARCHAR2,
    t_HOSTKIDOUTCOME IN NUMBER,
    t_HOSTKIDOUTCOME_TXT IN VARCHAR2,
    t_NRELEASED IN NUMBER,
    t_ADDNOTES IN VARCHAR2,
    t_SCITE1 IN VARCHAR2,
    t_SCITE2 IN VARCHAR2,
    t_SCITE3 IN VARCHAR2,
    t_DBSOURCE IN VARCHAR2,
    t_INT_LOG IN NUMBER,
    t_INT_IDEO IN NUMBER,
    t_INT_MISC IN NUMBER,
    t_INT_ANY IN NUMBER,
    t_RELATED IN VARCHAR2
    )
    IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Enter IYEAR:');
    t_IYEAR := &IYEAR;
    DBMS_OUTPUT.PUT_LINE('Enter IMONTH:');
    t_IMONTH := &IMONTH;
    DBMS_OUTPUT.PUT_LINE('Enter IDAY:');
    t_IDAY := &IDAY;
    DBMS_OUTPUT.PUT_LINE('Enter APPROXDATE:');
    t_APPROXDATE := '&APPROXDATE';
    DBMS_OUTPUT.PUT_LINE('Enter EXTENDED:');
    t_EXTENDED := &EXTENDED;
    DBMS_OUTPUT.PUT_LINE('Enter RESOLUTION:');
    t_RESOLUTION := '&RESOLUTION';
    DBMS_OUTPUT.PUT_LINE('Enter COUNTRY:');
    t_COUNTRY := &COUNTRY;
    DBMS_OUTPUT.PUT_LINE('Enter COUNTRY_TXT:');
    t_COUNTRY_TXT := '&COUNTRY_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter REGION:');
    t_REGION := &REGION;
    DBMS_OUTPUT.PUT_LINE('Enter REGION_TXT:');
    t_REGION_TXT := '&REGION_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter PROVSTATE:');
    t_PROVSTATE := '&PROVSTATE';
    DBMS_OUTPUT.PUT_LINE('Enter CITY:');
    t_CITY := '&CITY';
    DBMS_OUTPUT.PUT_LINE('Enter LATITUDE:');
    t_LATITUDE := &LATITUDE;
    DBMS_OUTPUT.PUT_LINE('Enter LONGITUDE:');
    t_LONGITUDE := &LONGITUDE;
    DBMS_OUTPUT.PUT_LINE('Enter SPECIFICITY:');
    t_SPECIFICITY := &SPECIFICITY;
    DBMS_OUTPUT.PUT_LINE('Enter VICINITY:');
    t_VICINITY := &VICINITY;
    DBMS_OUTPUT.PUT_LINE('Enter LOCATION:');
    t_LOCATION := '&LOCATION';
    DBMS_OUTPUT.PUT_LINE('Enter SUMMARY:');
    t_SUMMARY := '&SUMMARY';
    DBMS_OUTPUT.PUT_LINE('Enter CRIT1:');
    t_CRIT1 := &CRIT1;
    DBMS_OUTPUT.PUT_LINE('Enter CRIT2:');
    t_CRIT2 := &CRIT2;
    DBMS_OUTPUT.PUT_LINE('Enter CRIT3:');
    t_CRIT3 := &CRIT3;
    DBMS_OUTPUT.PUT_LINE('Enter DOUBTTERR:');
    t_DOUBTTERR := &DOUBTTERR;
    DBMS_OUTPUT.PUT_LINE('Enter ALTERNATIVE:');
    t_ALTERNATIVE := &ALTERNATIVE;
    DBMS_OUTPUT.PUT_LINE('Enter ALTERNATIVE_TXT:');
    t_ALTERNATIVE_TXT := '&ALTERNATIVE_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter MULTIPLE:');
    t_MULTIPLE := &MULTIPLE;
    DBMS_OUTPUT.PUT_LINE('Enter SUCCESS:');
    t_SUCCESS := &SUCCESS;
    DBMS_OUTPUT.PUT_LINE('Enter SUICIDE:');
    t_SUICIDE := &SUICIDE;
    DBMS_OUTPUT.PUT_LINE('Enter ATTACKTYPE1:');
    t_ATTACKTYPE1 := &ATTACKTYPE1;
    DBMS_OUTPUT.PUT_LINE('Enter ATTACKTYPE1_TXT:');
    t_ATTACKTYPE1_TXT := '&ATTACKTYPE1_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter ATTACKTYPE2:');
    t_ATTACKTYPE2 := &ATTACKTYPE2;
    DBMS_OUTPUT.PUT_LINE('Enter ATTACKTYPE2_TXT:');
    t_ATTACKTYPE2_TXT := '&ATTACKTYPE2_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter ATTACKTYPE3:');
    t_ATTACKTYPE3 := '&ATTACKTYPE3';
    DBMS_OUTPUT.PUT_LINE('Enter ATTACKTYPE3_TXT:');
    t_ATTACKTYPE3_TXT := '&ATTACKTYPE3_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter TARGTYPE1:');
    t_TARGTYPE1 := &TARGTYPE1;
    DBMS_OUTPUT.PUT_LINE('Enter TARGTYPE1_TXT:');
    t_TARGTYPE1_TXT := '&TARGTYPE1_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter TARGSUBTYPE1:');
    t_TARGSUBTYPE1 := &TARGSUBTYPE1;
    DBMS_OUTPUT.PUT_LINE('Enter TARGSUBTYPE1_TXT:');
    t_TARGSUBTYPE1_TXT := '&TARGSUBTYPE1_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter CORP1:');
    t_CORP1 := '&CORP1';
    DBMS_OUTPUT.PUT_LINE('Enter TARGET1:');
    t_TARGET1 := '&TARGET1';
    DBMS_OUTPUT.PUT_LINE('Enter NATLTY1:');
    t_NATLTY1 := &NATLTY1;
    DBMS_OUTPUT.PUT_LINE('Enter NATLTY1_TXT:');
    t_NATLTY1_TXT := '&NATLTY1_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter TARGTYPE2:');
    t_TARGTYPE2 := '&TARGTYPE2';
    DBMS_OUTPUT.PUT_LINE('Enter TARGTYPE2_TXT:');
    t_TARGTYPE2_TXT := '&TARGTYPE2_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter TARGSUBTYPE2:');
    t_TARGSUBTYPE2 := '&TARGSUBTYPE2';
    DBMS_OUTPUT.PUT_LINE('Enter TARGSUBTYPE2_TXT:');
    t_TARGSUBTYPE2_TXT := '&TARGSUBTYPE2_TXT';
        DBMS_OUTPUT.PUT_LINE('Enter CORP2:');
    t_CORP2 := '&CORP2';
    DBMS_OUTPUT.PUT_LINE('Enter TARGET2:');
    t_TARGET2 := '&TARGET2';
    DBMS_OUTPUT.PUT_LINE('Enter NATLTY2:');
    t_NATLTY2 := '&NATLTY2';
    DBMS_OUTPUT.PUT_LINE('Enter NATLTY2_TXT:');
    t_NATLTY2_TXT := '&NATLTY2_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter TARGTYPE3:');
    t_TARGTYPE3 := '&TARGTYPE3';
    DBMS_OUTPUT.PUT_LINE('Enter TARGTYPE3_TXT:');
    t_TARGTYPE3_TXT := '&TARGTYPE3_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter TARGSUBTYPE3:');
    t_TARGSUBTYPE3 := '&TARGSUBTYPE3';
    DBMS_OUTPUT.PUT_LINE('Enter TARGSUBTYPE3_TXT:');
    t_TARGSUBTYPE3_TXT := '&TARGSUBTYPE3_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter CORP3:');
    t_CORP3 := '&CORP3';
    DBMS_OUTPUT.PUT_LINE('Enter TARGET3:');
    t_TARGET3 := '&TARGET3';
    DBMS_OUTPUT.PUT_LINE('Enter NATLTY3:');
    t_NATLTY3 := '&NATLTY3';
    DBMS_OUTPUT.PUT_LINE('Enter NATLTY3_TXT:');
    t_NATLTY3_TXT := '&NATLTY3_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter GNAME:');
    t_GNAME := '&GNAME';
    DBMS_OUTPUT.PUT_LINE('Enter GSUBNAME:');
    t_GSUBNAME := '&GSUBNAME';
    DBMS_OUTPUT.PUT_LINE('Enter GNAME2:');
    t_GNAME2 := '&GNAME2';
    DBMS_OUTPUT.PUT_LINE('Enter GSUBNAME2:');
    t_GSUBNAME2 := '&GSUBNAME2';
    DBMS_OUTPUT.PUT_LINE('Enter GNAME3:');
    t_GNAME3 := '&GNAME3';
    DBMS_OUTPUT.PUT_LINE('Enter GSUBNAME3:');
    t_GSUBNAME3 := '&GSUBNAME3';
    DBMS_OUTPUT.PUT_LINE('Enter MOTIVE:');
    t_MOTIVE := '&MOTIVE';
    DBMS_OUTPUT.PUT_LINE('Enter GUNCERTAIN1:');
    t_GUNCERTAIN1 := &GUNCERTAIN1;
    DBMS_OUTPUT.PUT_LINE('Enter GUNCERTAIN2:');
    t_GUNCERTAIN2 := '&GUNCERTAIN2';
    DBMS_OUTPUT.PUT_LINE('Enter GUNCERTAIN3:');
    t_GUNCERTAIN3 := '&GUNCERTAIN3';
    DBMS_OUTPUT.PUT_LINE('Enter INDIVIDUAL:');
    t_INDIVIDUAL := &INDIVIDUAL;
    DBMS_OUTPUT.PUT_LINE('Enter NPERPS:');
    t_NPERPS := &NPERPS;
    DBMS_OUTPUT.PUT_LINE('Enter NPERPCAP:');
    t_NPERPCAP := &NPERPCAP;
    DBMS_OUTPUT.PUT_LINE('Enter CLAIMED:');
    t_CLAIMED := &CLAIMED;
    DBMS_OUTPUT.PUT_LINE('Enter CLAIMMODE:');
    t_CLAIMMODE := &CLAIMMODE;
    DBMS_OUTPUT.PUT_LINE('Enter CLAIMMODE_TXT:');
    t_CLAIMMODE_TXT := '&CLAIMMODE_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter CLAIM2:');
    t_CLAIM2 := '&CLAIM2';
    DBMS_OUTPUT.PUT_LINE('Enter CLAIMMODE2:');
    t_CLAIMMODE2 := '&CLAIMMODE2';
    DBMS_OUTPUT.PUT_LINE('Enter CLAIMMODE2_TXT:');
    t_CLAIMMODE2_TXT := '&CLAIMMODE2_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter CLAIM3:');
    t_CLAIM3 := '&CLAIM3';
    DBMS_OUTPUT.PUT_LINE('Enter CLAIMMODE3:');
    t_CLAIMMODE3 := '&CLAIMMODE3';
    DBMS_OUTPUT.PUT_LINE('Enter CLAIMMODE3_TXT:');
    t_CLAIMMODE3_TXT := '&CLAIMMODE3_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter COMPCLAIM:');
    t_COMPCLAIM := '&COMPCLAIM';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPTYPE1:');
    t_WEAPTYPE1 := &WEAPTYPE1;
    DBMS_OUTPUT.PUT_LINE('Enter WEAPTYPE1_TXT:');
    t_WEAPTYPE1_TXT := '&WEAPTYPE1_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPSUBTYPE1:');
    t_WEAPSUBTYPE1 := &WEAPSUBTYPE1;
    DBMS_OUTPUT.PUT_LINE('Enter WEAPSUBTYPE1_TXT:');
    t_WEAPSUBTYPE1_TXT := '&WEAPSUBTYPE1_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPTYPE2:');
    t_WEAPTYPE2 := &WEAPTYPE2;
    DBMS_OUTPUT.PUT_LINE('Enter WEAPTYPE2_TXT:');
    t_WEAPTYPE2_TXT := '&WEAPTYPE2_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPSUBTYPE2:');
    t_WEAPSUBTYPE2 := &WEAPSUBTYPE2;
    DBMS_OUTPUT.PUT_LINE('Enter WEAPSUBTYPE2_TXT:');
    t_WEAPSUBTYPE2_TXT := '&WEAPSUBTYPE2_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPTYPE3:');
    t_WEAPTYPE3 := '&WEAPTYPE3';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPTYPE3_TXT:');
    t_WEAPTYPE3_TXT := '&WEAPTYPE3_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPSUBTYPE3:');
    t_WEAPSUBTYPE3 := '&WEAPSUBTYPE3';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPSUBTYPE3_TXT:');
    t_WEAPSUBTYPE3_TXT := '&WEAPSUBTYPE3_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPTYPE4:');
    t_WEAPTYPE4 := '&WEAPTYPE4';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPTYPE4_TXT:');
    t_WEAPTYPE4_TXT := '&WEAPTYPE4_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPSUBTYPE4:');
    t_WEAPSUBTYPE4 := '&WEAPSUBTYPE4';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPSUBTYPE4_TXT:');
    t_WEAPSUBTYPE4_TXT := '&WEAPSUBTYPE4_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter WEAPDETAIL:');
    t_WEAPDETAIL := '&WEAPDETAIL';
    DBMS_OUTPUT.PUT_LINE('Enter NKILL:');
    t_NKILL := &NKILL;
    DBMS_OUTPUT.PUT_LINE('Enter NKILLUS:');
    t_NKILLUS := &NKILLUS;
    DBMS_OUTPUT.PUT_LINE('Enter NKILLTER:');
    t_NKILLTER := &NKILLTER;
    DBMS_OUTPUT.PUT_LINE('Enter NWOUND:');
    t_NWOUND := &NWOUND;
    DBMS_OUTPUT.PUT_LINE('Enter NWOUNDUS:');
    t_NWOUNDUS := &NWOUNDUS;
    DBMS_OUTPUT.PUT_LINE('Enter NWOUNDTE:');
    t_NWOUNDTE := &NWOUNDTE;
    DBMS_OUTPUT.PUT_LINE('Enter PROPERTY:');
    t_PROPERTY := &PROPERTY;
    DBMS_OUTPUT.PUT_LINE('Enter PROPEXTENT:');
    t_PROPEXTENT := &PROPEXTENT;
    DBMS_OUTPUT.PUT_LINE('Enter PROPEXTENT_TXT:');
    t_PROPEXTENT_TXT := '&PROPEXTENT_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter PROPVALUE:');
    t_PROPVALUE := &PROPVALUE;
    DBMS_OUTPUT.PUT_LINE('Enter PROPCOMMENT:');
    t_PROPCOMMENT := '&PROPCOMMENT';
        DBMS_OUTPUT.PUT_LINE('Enter ISHOSTKID:');
    t_ISHOSTKID := &ISHOSTKID;
    DBMS_OUTPUT.PUT_LINE('Enter NHOSTKID:');
    t_NHOSTKID := &NHOSTKID;
    DBMS_OUTPUT.PUT_LINE('Enter NHOSTKIDUS:');
    t_NHOSTKIDUS := &NHOSTKIDUS;
    DBMS_OUTPUT.PUT_LINE('Enter NHOURS:');
    t_NHOURS := '&NHOURS';
    DBMS_OUTPUT.PUT_LINE('Enter NDAYS:');
    t_NDAYS := '&NDAYS';
    DBMS_OUTPUT.PUT_LINE('Enter DIVERT:');
    t_DIVERT := '&DIVERT';
    DBMS_OUTPUT.PUT_LINE('Enter KIDHIJCOUNTRY:');
    t_KIDHIJCOUNTRY := '&KIDHIJCOUNTRY';
    DBMS_OUTPUT.PUT_LINE('Enter RANSOM:');
    t_RANSOM := &RANSOM;
    DBMS_OUTPUT.PUT_LINE('Enter RANSOMAMT:');
    t_RANSOMAMT := &RANSOMAMT;
    DBMS_OUTPUT.PUT_LINE('Enter RANSOMAMTUS:');
    t_RANSOMAMTUS := '&RANSOMAMTUS';
    DBMS_OUTPUT.PUT_LINE('Enter RANSOMPAID:');
    t_RANSOMPAID := &RANSOMPAID;
    DBMS_OUTPUT.PUT_LINE('Enter RANSOMPAIDUS:');
    t_RANSOMPAIDUS := '&RANSOMPAIDUS';
    DBMS_OUTPUT.PUT_LINE('Enter RANSOMNOTE:');
    t_RANSOMNOTE := '&RANSOMNOTE';
    DBMS_OUTPUT.PUT_LINE('Enter HOSTKIDOUTCOME:');
    t_HOSTKIDOUTCOME := &HOSTKIDOUTCOME;
    DBMS_OUTPUT.PUT_LINE('Enter HOSTKIDOUTCOME_TXT:');
    t_HOSTKIDOUTCOME_TXT := '&HOSTKIDOUTCOME_TXT';
    DBMS_OUTPUT.PUT_LINE('Enter NRELEASED:');
    t_NRELEASED := &NRELEASED;
    DBMS_OUTPUT.PUT_LINE('Enter ADDNOTES:');
    t_ADDNOTES := '&ADDNOTES';
    DBMS_OUTPUT.PUT_LINE('Enter SCITE1:');
    t_SCITE1 := '&SCITE1';
    DBMS_OUTPUT.PUT_LINE('Enter SCITE2:');
    t_SCITE2 := '&SCITE2';
    DBMS_OUTPUT.PUT_LINE('Enter SCITE3:');
    t_SCITE3 := '&SCITE3';
    DBMS_OUTPUT.PUT_LINE('Enter DBSOURCE:');
    t_DBSOURCE := '&DBSOURCE';
    DBMS_OUTPUT.PUT_LINE('Enter INT_LOG:');
    t_INT_LOG := &INT_LOG;
    DBMS_OUTPUT.PUT_LINE('Enter INT_IDEO:');
    t_INT_IDEO := &INT_IDEO;
    DBMS_OUTPUT.PUT_LINE('Enter INT_MISC:');
    t_INT_MISC := &INT_MISC;
    DBMS_OUTPUT.PUT_LINE('Enter INT_ANY:');
    t_INT_ANY := &INT_ANY;
    DBMS_OUTPUT.PUT_LINE('Enter RELATED:');
    t_RELATED := '&RELATED';
    INSERT INTO GLOBALTERRORISM(IYEAR,IMONTH,IDAY,APPROXDATE,EXTENDED,RESOLUTION,COUNTRY,COUNTRY_TXT,REGION,REGION_TXT,PROVSTATE,CITY,LATITUDE,LONGITUDE,SPECIFICITY,VICINITY,LOCATION,SUMMARY,CRIT1,CRIT2,CRIT3,DOUBTTERR,ALTERNATIVE,ALTERNATIVE_TXT,MULTIPLE,SUCCESS,SUICIDE,ATTACKTYPE1,ATTACKTYPE1_TXT,ATTACKTYPE2,ATTACKTYPE2_TXT,ATTACKTYPE3,ATTACKTYPE3_TXT,TARGTYPE1,TARGTYPE1_TXT,TARGSUBTYPE1,TARGSUBTYPE1_TXT,CORP1,TARGET1,NATLTY1,NATLTY1_TXT,TARGTYPE2,TARGTYPE2_TXT,TARGSUBTYPE2,TARGSUBTYPE2_TXT,CORP2,TARGET2,NATLTY2,NATLTY2_TXT,TARGTYPE3,TARGTYPE3_TXT,TARGSUBTYPE3,TARGSUBTYPE3_TXT,CORP3,TARGET3,NATLTY3,NATLTY3_TXT,GNAME,GSUBNAME,GNAME2,GSUBNAME2,GNAME3,GSUBNAME3,MOTIVE,GUNCERTAIN1,GUNCERTAIN2,GUNCERTAIN3,INDIVIDUAL,NPERPS,NPERPCAP,CLAIMED,CLAIMMODE,CLAIMMODE_TXT,CLAIM2,CLAIMMODE2,CLAIMMODE2_TXT,CLAIM3,CLAIMMODE3,CLAIMMODE3_TXT,COMPCLAIM,WEAPTYPE1,WEAPTYPE1_TXT,WEAPSUBTYPE1,WEAPSUBTYPE1_TXT,WEAPTYPE2,WEAPTYPE2_TXT,WEAPSUBTYPE2,WEAPSUBTYPE2_TXT,WEAPTYPE3,WEAPTYPE3_TXT,WEAPSUBTYPE3,WEAPSUBTYPE3_TXT,WEAPTYPE4,WEAPTYPE4_TXT,WEAPSUBTYPE4,WEAPSUBTYPE4_TXT,WEAPDETAIL,NKILL,NKILLUS,NKILLTER,NWOUND,NWOUNDUS,NWOUNDTE,PROPERTY,PROPEXTENT,PROPEXTENT_TXT,PROPVALUE,PROPCOMMENT,ISHOSTKID,NHOSTKID,NHOSTKIDUS,NHOURS,NDAYS,DIVERT,KIDHIJCOUNTRY,RANSOM,RANSOMAMT,RANSOMAMTUS,RANSOMPAID,RANSOMPAIDUS,RANSOMNOTE,HOSTKIDOUTCOME,HOSTKIDOUTCOME_TXT,NRELEASED,ADDNOTES,SCITE1,SCITE2,SCITE3,DBSOURCE,INT_LOG,INT_IDEO,INT_MISC,INT_ANY,RELATED)
            VALUES(t_IYEAR,t_IMONTH,t_IDAY,t_APPROXDATE,t_EXTENDED,t_RESOLUTION,t_COUNTRY,t_COUNTRY_TXT,t_REGION,t_REGION_TXT,t_PROVSTATE,t_CITY,t_LATITUDE,t_LONGITUDE,t_SPECIFICITY,t_VICINITY,t_LOCATION,t_SUMMARY,t_CRIT1,t_CRIT2, t_CRIT3,t_DOUBTTERR,t_ALTERNATIVE, t_ALTERNATIVE_TXT,t_MULTIPLE,t_SUCCESS,t_SUICIDE,t_ATTACKTYPE1,t_ATTACKTYPE1_TXT,t_ATTACKTYPE2,t_ATTACKTYPE2_TXT,t_ATTACKTYPE3,t_ATTACKTYPE3_TXT,t_TARGTYPE1,t_TARGTYPE1_TXT,t_TARGSUBTYPE1,t_TARGSUBTYPE1_TXT,t_CORP1,t_TARGET1,t_NATLTY1,t_NATLTY1_TXT,t_TARGTYPE2,t_TARGTYPE2_TXT,t_TARGSUBTYPE2,t_TARGSUBTYPE2_TXT,t_CORP2,t_TARGET2,t_NATLTY2,t_NATLTY2_TXT,t_TARGTYPE3,t_TARGTYPE3_TXT,t_TARGSUBTYPE3,t_TARGSUBTYPE3_TXT,t_CORP3,t_TARGET3,t_NATLTY3,t_NATLTY3_TXT,t_GNAME,t_GSUBNAME,t_GNAME2,t_GSUBNAME2,t_GNAME3,t_GSUBNAME3,t_MOTIVE,t_GUNCERTAIN1,t_GUNCERTAIN2,t_GUNCERTAIN3,t_INDIVIDUAL,t_NPERPS,t_NPERPCAP,t_CLAIMED,t_CLAIMMODE,t_CLAIMMODE_TXT,t_CLAIM2,t_CLAIMMODE2,t_CLAIMMODE2_TXT,t_CLAIM3,t_CLAIMMODE3,t_CLAIMMODE3_TXT,t_COMPCLAIM,t_WEAPTYPE1,t_WEAPTYPE1_TXT,t_WEAPSUBTYPE1,t_WEAPSUBTYPE1_TXT,t_WEAPTYPE2,t_WEAPTYPE2_TXT,t_WEAPSUBTYPE2,t_WEAPSUBTYPE2_TXT,t_WEAPTYPE3,t_WEAPTYPE3_TXT,t_WEAPSUBTYPE3,t_WEAPSUBTYPE3_TXT,t_WEAPTYPE4,t_WEAPTYPE4_TXT,t_WEAPSUBTYPE4,t_WEAPSUBTYPE4_TXT,t_WEAPDETAIL,t_NKILL,t_NKILLUS,t_NKILLTER,t_NWOUND,t_NWOUNDUS,t_NWOUNDTE,t_PROPERTY,t_PROPEXTENT,t_PROPEXTENT_TXT,t_PROPVALUE,t_PROPCOMMENT,t_ISHOSTKID,t_NHOSTKID,t_NHOSTKIDUS,t_NHOURS,t_NDAYS,t_DIVERT,t_KIDHIJCOUNTRY,t_RANSOM,t_RANSOMAMT,t_RANSOMAMTUS,t_RANSOMPAID,t_RANSOMPAIDUS,t_RANSOMNOTE,t_HOSTKIDOUTCOME,t_HOSTKIDOUTCOME_TXT,t_NRELEASED,t_ADDNOTES,t_SCITE1,t_SCITE2,t_SCITE3,t_DBSOURCE,t_INT_LOG,t_INT_IDEO,t_INT_MISC,t_INT_ANY,t_RELATED);
    DBMS_OUTPUT.PUTLINE('Record inserted successfully');
END;
/
CREATE OR REPLACE PROCEDURE retrieve_records(query_year OUT NUMBER, query_country OUT VARCHAR2) IS
t_IYEAR NUMBER(4);
t_COUNTRY_TXT VARCHAR(30);
 
BEGIN
    DBMS_OUTPUT.PUT_LINE('Enter a value for year: ');
    query_year := &t_IYEAR;
    DBMS_OUTPUT.PUT_LINE('Enter a value for country: ');
    query_country := '&t_COUNTRY_TXT';
    FOR rec IN (SELECT * FROM GLOBALTERRORISM WHERE IYEAR = query_year AND COUNTRY_TXT = query_country) LOOP
        DBMS_OUTPUT.PUT_LINE('EVENTID: ' || rec.EVENTID || ' ,IYEAR: ' || rec.IYEAR || ', IMONTH: ' || rec.IMONTH || ', IDAY: ' || rec.IDAY || ', APPROXDATE: ' || rec.APPROXDATE || ', EXTENDED: ' || rec.EXTENDED || ', RESOLUTION: ' || rec.RESOLUTION || ', COUNTRY: ' || rec.COUNTRY || ', COUNTRY_TXT: ' || rec.COUNTRY_TXT || ', REGION: ' || rec.REGION || ', REGION_TXT: ' || rec.REGION_TXT || ', PROVSTATE: ' || rec.PROVSTATE || ', CITY: ' || rec.CITY || ', LATITUDE: ' || rec.LATITUDE || ', LONGITUDE: ' || rec.LONGITUDE || ', SPECIFICITY: ' || rec.SPECIFICITY || ', VICINITY: ' || rec.VICINITY || ', LOCATION: ' || rec.LOCATION || ', SUMMARY: ' || rec.SUMMARY || ', CRIT1: ' || rec.CRIT1 || ', CRIT2: ' || rec.CRIT2 || ', CRIT3: ' || rec.CRIT3 || ', DOUBTTERR: ' || rec.DOUBTTERR || ', ALTERNATIVE: ' || rec.ALTERNATIVE || ', ALTERNATIVE_TXT: ' || rec.ALTERNATIVE_TXT || ', MULTIPLE: ' || rec.MULTIPLE || ', SUCCESS: ' || rec.SUCCESS || ', SUICIDE: ' || rec.SUICIDE || ', ATTACKTYPE1: ' || rec.ATTACKTYPE1 || ', ATTACKTYPE1_TXT: ' || rec.ATTACKTYPE1_TXT || ', ATTACKTYPE2: ' || rec.ATTACKTYPE2 || ', ATTACKTYPE2_TXT: ' || rec.ATTACKTYPE2_TXT || ', ATTACKTYPE3: ' || rec.ATTACKTYPE3 || ', ATTACKTYPE3_TXT: ' || rec.ATTACKTYPE3_TXT || ', TARGTYPE1: ' || rec.TARGTYPE1 || ', TARGTYPE1_TXT: ' || rec.TARGTYPE1_TXT || ', TARGSUBTYPE1: ' || rec.TARGSUBTYPE1 || ', TARGSUBTYPE1_TXT: ' || rec.TARGSUBTYPE1_TXT || ', CORP1: ' || rec.CORP1 || ', TARGET1: ' || rec.TARGET1 || ', NATLTY1: ' || rec.NATLTY1 || ', NATLTY1_TXT: ' || rec.NATLTY1_TXT || ', TARGTYPE2: ' || rec.TARGTYPE2 || ', TARGTYPE2_TXT: ' || rec.TARGTYPE2_TXT || ', TARGSUBTYPE2: ' || rec.TARGSUBTYPE2 || ', TARGSUBTYPE2_TXT: ' || rec.TARGSUBTYPE2_TXT || ', CORP2: ' || rec.CORP2 || ', TARGET2: ' || rec.TARGET2 || ', NATLTY2: ' || rec.NATLTY2 || ', NATLTY2_TXT: ' || rec.NATLTY2_TXT || ', TARGTYPE3: ' || rec.TARGTYPE3 || ', TARGTYPE3_TXT: ' || rec.TARGTYPE3_TXT || ', TARGSUBTYPE3: ' || rec.TARGSUBTYPE3 || ', TARGSUBTYPE3_TXT: ' || rec.TARGSUBTYPE3_TXT || ', CORP3: ' || rec.CORP3 || ', TARGET3: ' || rec.TARGET3 || ', NATLTY3: ' || rec.NATLTY3 || ', NATLTY3_TXT: ' || rec.NATLTY3_TXT || ', GNAME: ' || rec.GNAME || ', GSUBNAME: ' || rec.GSUBNAME || ', GNAME2: ' || rec.GNAME2 || ', GSUBNAME2: ' || rec.GSUBNAME2 || ', GNAME3: ' || rec.GNAME3 || ', GSUBNAME3: ' || rec.GSUBNAME3 || ', MOTIVE: ' || rec.MOTIVE || ', GUNCERTAIN1: ' || rec.GUNCERTAIN1 || ', GUNCERTAIN2: ' || rec.GUNCERTAIN2 || ', GUNCERTAIN3: ' || rec.GUNCERTAIN3 || ', INDIVIDUAL: ' || rec.INDIVIDUAL || ', NPERPS: ' || rec.NPERPS || ', NPERPCAP: ' || rec.NPERPCAP || ', CLAIMED: ' || rec.CLAIMED || ', CLAIMMODE: ' || rec.CLAIMMODE || ', CLAIMMODE_TXT: ' || rec.CLAIMMODE_TXT || ', CLAIM2: ' || rec.CLAIM2 || ', CLAIMMODE2: ' || rec.CLAIMMODE2 || ', CLAIMMODE2_TXT: ' || rec.CLAIMMODE2_TXT || ', CLAIM3: ' || rec.CLAIM3 || ', CLAIMMODE3: ' || rec.CLAIMMODE3 || ', CLAIMMODE3_TXT: ' || rec.CLAIMMODE3_TXT || ', COMPCLAIM: ' || rec.COMPCLAIM || ', WEAPTYPE1: ' || rec.WEAPTYPE1 || ', WEAPTYPE1_TXT: ' || rec.WEAPTYPE1_TXT || ', WEAPSUBTYPE1: ' || rec.WEAPSUBTYPE1 || ', WEAPSUBTYPE1_TXT: ' || rec.WEAPSUBTYPE1_TXT || ', WEAPTYPE2: ' || rec.WEAPTYPE2 || ', WEAPTYPE2_TXT: ' || rec.WEAPTYPE2_TXT || ', WEAPSUBTYPE2: ' || rec.WEAPSUBTYPE2 || ', WEAPSUBTYPE2_TXT: ' || rec.WEAPSUBTYPE2_TXT || ', WEAPTYPE3: ' || rec.WEAPTYPE3 || ', WEAPTYPE3_TXT: ' || rec.WEAPTYPE3_TXT || ', WEAPSUBTYPE3: ' || rec.WEAPSUBTYPE3 || ', WEAPSUBTYPE3_TXT: ' || rec.WEAPSUBTYPE3_TXT || ', WEAPTYPE4: ' || rec.WEAPTYPE4 || ', WEAPTYPE4_TXT: ' || rec.WEAPTYPE4_TXT || ', WEAPSUBTYPE4: ' || rec.WEAPSUBTYPE4 || ', WEAPSUBTYPE4_TXT: ' || rec.WEAPSUBTYPE4_TXT || ', WEAPDETAIL: ' || rec.WEAPDETAIL || ', NKILL: ' || rec.NKILL || ', NKILLUS: ' || rec.NKILLUS || ', NKILLTER: ' || rec.NKILLTER || ', NWOUND: ' || rec.NWOUND || ', NWOUNDUS: ' || rec.NWOUNDUS || ', NWOUNDTE: ' || rec.NWOUNDTE || ', PROPERTY: ' || rec.PROPERTY || ', PROPEXTENT: ' || rec.PROPEXTENT || ', PROPEXTENT_TXT: ' || rec.PROPEXTENT_TXT || ', PROPVALUE: ' || rec.PROPVALUE || ', PROPCOMMENT: ' || rec.PROPCOMMENT || ', ISHOSTKID: ' || rec.ISHOSTKID || ', NHOSTKID: ' || rec.NHOSTKID || ', NHOSTKIDUS: ' || rec.NHOSTKIDUS || ', NHOURS: ' || rec.NHOURS || ', NDAYS: ' || rec.NDAYS || ', DIVERT: ' || rec.DIVERT || ', KIDHIJCOUNTRY: ' || rec.KIDHIJCOUNTRY || ', RANSOM: ' || rec.RANSOM || ', RANSOMAMT: ' || rec.RANSOMAMT || ', RANSOMAMTUS: ' || rec.RANSOMAMTUS || ', RANSOMPAID: ' || rec.RANSOMPAID || ', RANSOMPAIDUS: ' || rec.RANSOMPAIDUS || ', RANSOMNOTE: ' || rec.RANSOMNOTE || ', HOSTKIDOUTCOME: ' || rec.HOSTKIDOUTCOME || ', HOSTKIDOUTCOME_TXT: ' || rec.HOSTKIDOUTCOME_TXT || ', NRELEASED: ' || rec.NRELEASED || ', ADDNOTES: ' || rec.ADDNOTES || ', SCITE1: ' || rec.SCITE1 || ', SCITE2: ' || rec.SCITE2 || ', SCITE3: ' || rec.SCITE3 || ', DBSOURCE: ' || rec.DBSOURCE || ', INT_LOG: ' || rec.INT_LOG || ', INT_IDEO: ' || rec.INT_IDEO || ', INT_MISC: ' || rec.INT_MISC || ', INT_ANY: ' || rec.INT_ANY || ', RELATED: ' || rec.RELATED);
    END LOOP;
END;
/
CREATE OR REPLACE PROCEDURE update_record IS
    t_EVENTID	NUMBER;
    t_LOCATION VARCHAR2(128);
    t_GNAME	VARCHAR2(128);
    t_MOTIVE	VARCHAR2(256);
 
BEGIN
    DBMS_OUTPUT.PUT_LINE('Enter EventID of the record to update: ');
    t_EVENTID := &EVENTID;
    DBMS_OUTPUT.PUT_LINE('Enter new Location(or press Enter to skip): ');
    t_LOCATION := '&LOCATION';
    DBMS_OUTPUT.PUT_LINE('Enter new Gname(or press Enter to skip): ');
    t_GNAME := '&GNAME';
    DBMS_OUTPUT.PUT_LINE('Enter new Motive(or press Enter to skip): ');
    t_MOTIVE := '&MOTIVE';
    UPDATE GLOBALTERRORIST
    SET LOCATION = NVL(t_LOCATION, LOCATION),
        GNAME = NVL(t_GNAME, GNAME),
        MOTIVE = NVL(t_MOTIVE, MOTIVE)
    WHERE EVENTID = t_EVENTID;
    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.put_line('Record updated successfully.');
    ELSE
        DBMS_OUTPUT.put_line('Record not found.');
    END IF;
END;
/
CREATE OR REPLACE PROCEDURE delete_record IS
    t_EVENTID NUMBER;
BEGIN
    DBMS_OUTPUT.put_line('Enter CarID of the record to delete:');
    t_EVENTID := &EVENTID;
 
    DELETE FROM GLOBALTERRORIST WHERE EVENTID = t_EVENTID;
 
    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.put_line('Record deleted successfully.');
    ELSE
        DBMS_OUTPUT.put_line('Record not found.');
    END IF;
END;
/