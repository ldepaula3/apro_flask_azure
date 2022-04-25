 %MACRO V24H86H1; 
 %**********************************************************************
 1  MACRO NAME: V24H86H1
 2  PURPOSE:    HCC HIERARCHIES: version 24 of HCCs,
                only 86 CMS HCCs are included
 3  COMMENT:    it is assumed that:
                 -MAX number of CCs are placed into global macro 
                  variable N_CC in the main program
                 -the following arrays are set in the main program
                  ARRAY C(&N_CC)   CC1-CC&N_CC
                  ARRAY HCC(&N_CC) HCC1-HCC&N_CC
                 -format ICD to CC creates only 86 out of &N_CC CMS CCs
 **********************************************************************;
 %* set to 0 HCCs in HIER parameter;
 %MACRO SET0( CC=, HIER= );
     IF HCC&CC=1 THEN DO I = &HIER; HCC(I) = 0; END;
 %MEND SET0;

 %*to copy CC into HCC;
  DO K=1 TO &N_CC;
     HCC(K)=C(K);
  END;

 %*imposing hierarchies;
 /*Neoplasm 1 */   %SET0(CC=8     , HIER=%STR(9, 10, 11, 12 ));
 /*Neoplasm 2 */   %SET0(CC=9     , HIER=%STR(10, 11, 12 ));
 /*Neoplasm 3 */   %SET0(CC=10    , HIER=%STR(11, 12 ));
 /*Neoplasm 4 */   %SET0(CC=11    , HIER=%STR(12 ));
 /*Diabetes 1 */   %SET0(CC=17    , HIER=%STR(18, 19 ));
 /*Diabetes 2 */   %SET0(CC=18    , HIER=%STR(19 ));
 /*Liver 1 */      %SET0(CC=27    , HIER=%STR(28, 29, 80 ));
 /*Liver 2 */      %SET0(CC=28    , HIER=%STR(29 ));
 /*Blood 1 */      %SET0(CC=46    , HIER=%STR(48 ));
 /*Cognitive 2 */  %SET0(CC=51    , HIER=%STR(52 ));
 /*SUD 1 */        %SET0(CC=54    , HIER=%STR(55, 56 ));
 /*SUD 2 */        %SET0(CC=55    , HIER=%STR(56 ));
 /*Psychiatric 1 */%SET0(CC=57    , HIER=%STR(58, 59, 60 ));
 /*Psychiatric 2 */%SET0(CC=58    , HIER=%STR(59, 60 ));
 /*Psychiatric 3 */%SET0(CC=59    , HIER=%STR(60 ));
 /*Spinal 1 */     %SET0(CC=70    , HIER=%STR(71, 72, 103, 104, 169 ));
 /*Spinal 2 */     %SET0(CC=71    , HIER=%STR(72, 104, 169 ));
 /*Spinal 3 */     %SET0(CC=72    , HIER=%STR(169 ));
 /*Arrest 1 */     %SET0(CC=82    , HIER=%STR(83, 84 ));
 /*Arrest 2 */     %SET0(CC=83    , HIER=%STR(84 ));
 /*Heart 2 */      %SET0(CC=86    , HIER=%STR(87, 88 ));
 /*Heart 3 */      %SET0(CC=87    , HIER=%STR(88 ));
 /*CVD 1 */        %SET0(CC=99    , HIER=%STR(100 ));
 /*CVD 5 */        %SET0(CC=103   , HIER=%STR(104 ));
 /*Vascular 1 */   %SET0(CC=106   , HIER=%STR(107, 108, 161, 189 ));
 /*Vascular 2 */   %SET0(CC=107   , HIER=%STR(108 ));
 /*Lung 1 */       %SET0(CC=110   , HIER=%STR(111, 112 ));
 /*Lung 2 */       %SET0(CC=111   , HIER=%STR(112 ));
 /*Lung 5 */       %SET0(CC=114   , HIER=%STR(115 ));
 /*Kidney 3 */     %SET0(CC=134   , HIER=%STR(135, 136, 137, 138 ));
 /*Kidney 4 */     %SET0(CC=135   , HIER=%STR(136, 137, 138 ));
 /*Kidney 5 */     %SET0(CC=136   , HIER=%STR(137, 138 ));
 /*Kidney 6 */     %SET0(CC=137   , HIER=%STR(138 ));
 /*Skin 1 */       %SET0(CC=157   , HIER=%STR(158, 159, 161 ));
 /*Skin 2 */       %SET0(CC=158   , HIER=%STR(159, 161 ));
 /*Skin 3 */       %SET0(CC=159   , HIER=%STR(161 ));
 /*Injury 1 */     %SET0(CC=166   , HIER=%STR(80, 167 ));

  %MEND V24H86H1;
