/***********************************************************
*	model.c                                                   
*                                                           
*	  用于求解器的模型描述文件，其配合init.txt, para.mat      
*	和setting.txt文件与求解器实现完整的模型求解。             
*                                                           
*	  该文件由MWorks代码生成器CodeGenerator自动生成。         
*                                                           
*	  模型名称：Y_axis.Y_axis_model
*	  生成时间：2016-03-25 11:47:13
*                                                           
*	  苏州同元软控信息技术有限公司                            
*	           2005-2016
*                                                           
***********************************************************/

#include "model_block1.h"

#define model_name "Y_axis.Y_axis_model"
#define model_guid "e04d7cde-7302-4aa5-973f-a8197246a06d"



#include "model_types.h"



BEGIN_MO_FUNCTION_WITH_LMP(BeforeDaeFn)
    MoAssertWithCondText((R_[226] >= R_[227]), "servo.IqLimiter.uMax >= servo.IqLimiter.uMin", string_add_m(string_add_m(
      string_add_m(string_add_m("Limiter: Limits must be consistent. However, uMax (=", u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
      MWS_MDL_ARGU_PTR R_[226], TRUE, 0)), ") < uMin (="), u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
      MWS_MDL_ARGU_PTR R_[227], TRUE, 0)), ")"), 1);
    MoAssertWithCondText((R_[219] >= R_[220]), "servo.VdLimiter.uMax >= servo.VdLimiter.uMin", string_add_m(string_add_m(
      string_add_m(string_add_m("Limiter: Limits must be consistent. However, uMax (=", u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
      MWS_MDL_ARGU_PTR R_[219], TRUE, 0)), ") < uMin (="), u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
      MWS_MDL_ARGU_PTR R_[220], TRUE, 0)), ")"), 1);
    MoAssertWithCondText((R_[216] >= R_[217]), "servo.VqLimiter.uMax >= servo.VqLimiter.uMin", string_add_m(string_add_m(
      string_add_m(string_add_m("Limiter: Limits must be consistent. However, uMax (=", u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR 
      R_[216], TRUE, 0)), ") < uMin (="), u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR 
      R_[217], TRUE, 0)), ")"), 1);
    R_[290] = ((0.01 * R_[286]) * R_[285]);
    R_[38] = (0.1 * R_[33]);
    R_[37] = ((6.35349074219143e-11 * R_[31]) * R_[38]);
END_MO_FUNCTION_WITH_LMP(BeforeDaeFn)


BEGIN_MO_FUNCTION_WITH_LMP(OdeResFn)
    _BEGIN_WHEN_BLOCK_
    _WHEN_ (MwsSample(R_[288], R_[286], 0), 0) 
        R_[289] = _time;
    _END_WHEN_
    _END_WHEN_BLOCK_
    R_[291] = (R_[287] + ( _IF_ (_LESS_TIME_(R_[288], 2+0) _OR_ _GREATER_EQUAL_TIME_((R_[289] + R_[290]), 1+0)) 
      _THEN_ 0 _ELSE_ R_[284]));
    R_[402] = (R_[292] * R_[291]);
    R_[342] = (I_[2] * R_[380]);
    R_[233] = (R_[337] + ( _IF_ _LESS_TIME_(R_[338], 3+0) _THEN_ 0 _ELSE_ (R_[334] * sin((((6.28318530717959 * R_[335]) 
      * (_time + ((-1) * R_[338]))) + R_[336])))));
    R_[234] = (R_[233] + ((-1) * R_[379]));
    R_[313] = (R_[314] * R_[234]);
    R_[228] = (R_[313] + ((-1) * R_[380]));
    R_[401] = (R_[228] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[230], "servo.vPI.T"));
    R_[224] = (R_[229] * (R_[389] + R_[228]));
    R_[225] = ( _IF_ (MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[13])) _THEN_ R_[224] _ELSE_ ( _IF_ _GREATER_(R_[224], "servo.IqLimiter.u", 
      R_[226], "servo.IqLimiter.uMax", 7+0) _THEN_ R_[226] _ELSE_ ( _IF_ _LESS_(R_[224], "servo.IqLimiter.u", R_[227], "servo.IqLimiter.uMin", 
      6+0) _THEN_ R_[227] _ELSE_ R_[224])));
    R_[222] = (R_[221] * R_[379]);
    R_[35] = ((6.35349074219143e-11 * R_[31]) * R_[333]);
    R_[331] = (R_[32] * R_[381]);
    R_[395] = ( _IF_ B_[0] _THEN_ 0 _ELSE_ ((R_[331] + ((-1) * R_[383])) * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", 
      R_[40], "y_axis_mechnical_model.simpleprojectworktable.derivative.T")));
    R_[332] = ( _IF_ B_[0] _THEN_ 0 _ELSE_ ((R_[39] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[40], "y_axis_mechnical_model.simpleprojectworktable.derivative.T")) 
      * (R_[331] + ((-1) * R_[383]))));
    R_[29] = (((R_[27] * (((9.80665 * R_[26]) + (9.80665 * R_[328])) + R_[329])) + (R_[28] * abs_m(R_[332]))) * 
      sign_m(R_[332]));
    R_[36] = ((6.35349074219143e-11 * R_[31]) * R_[29]);
    R_[396] = ( _IF_ B_[1] _THEN_ 0 _ELSE_ ((R_[332] + ((-1) * R_[384])) * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", 
      R_[44], "y_axis_mechnical_model.simpleprojectworktable.derivative1.T")));
    R_[23] = ((R_[35] + R_[36]) + R_[37]);
    R_[393] = R_[382];
    R_[101] = (R_[385] + R_[106]);
    R_[93] = ((R_[102] * R_[101]) + (R_[103] * R_[386]));
    R_[94] = ((R_[104] * R_[101]) + (R_[105] * R_[386]));
    R_[86] = (I_[2] * (R_[379] + ((-1) * R_[68])));
    R_[95] = cos(R_[86]);
    R_[96] = ((-1) * sin(R_[86]));
    R_[87] = ((R_[95] * R_[385]) + (R_[96] * R_[386]));
    R_[91] = ((R_[95] * R_[93]) + (R_[96] * R_[94]));
    R_[97] = sin(R_[86]);
    R_[98] = cos(R_[86]);
    R_[88] = ((R_[97] * R_[385]) + (R_[98] * R_[386]));
    /* 完全撕裂的线性方程 (59, 0) */
    R_[131] = (((-0.5) * R_[87]) + (0.866025403784439 * R_[88]));
    R_[136] = ((1.0 * R_[131]) + ((-1.73205080756888) * R_[88]));
    R_[126] = (((0.5 * R_[131]) + (0.5 * R_[136])) + (1.5 * R_[87]));
    R_[117] = (R_[118] * R_[136]);
    R_[197] = (((0.816496580927726 * R_[126]) + ((-0.408248290463863) * R_[131])) + ((-0.408248290463863) * R_[136]));
      
    R_[198] = ((0.707106781186548 * R_[131]) + ((-0.707106781186548) * R_[136]));
    R_[199] = ((R_[197] * cos(R_[222])) + (R_[198] * sin(R_[222])));
    R_[201] = (R_[223] + ((-1) * R_[199]));
    R_[399] = (R_[201] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[203], "servo.IdPI.T"));
    R_[218] = (R_[202] * (R_[387] + R_[201]));
    R_[211] = ( _IF_ (MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[12])) _THEN_ R_[218] _ELSE_ ( _IF_ _GREATER_(R_[218], "servo.VdLimiter.u", 
      R_[219], "servo.VdLimiter.uMax", 9+0) _THEN_ R_[219] _ELSE_ ( _IF_ _LESS_(R_[218], "servo.VdLimiter.u", R_[220], "servo.VdLimiter.uMin", 
      8+0) _THEN_ R_[220] _ELSE_ R_[218])));
    R_[200] = ((((-1) * R_[197]) * sin(R_[222])) + (R_[198] * cos(R_[222])));
    R_[206] = (R_[225] + ((-1) * R_[200]));
    R_[400] = (R_[206] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[208], "servo.IqPI.T"));
    R_[215] = (R_[207] * (R_[388] + R_[206]));
    R_[212] = ( _IF_ (MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[11])) _THEN_ R_[215] _ELSE_ ( _IF_ _GREATER_(R_[215], "servo.VqLimiter.u", 
      R_[216], "servo.VqLimiter.uMax", 11+0) _THEN_ R_[216] _ELSE_ ( _IF_ _LESS_(R_[215], "servo.VqLimiter.u", R_[217], "servo.VqLimiter.uMin", 
      10+0) _THEN_ R_[217] _ELSE_ R_[215])));
    R_[213] = ((R_[211] * cos(R_[222])) + (((-1) * R_[212]) * sin(R_[222])));
    R_[214] = ((R_[211] * sin(R_[222])) + (R_[212] * cos(R_[222])));
    R_[309] = (((-0.5) * R_[214]) + (0.866025403784439 * R_[213]));
    R_[310] = (((-0.5) * R_[214]) + ((-0.866025403784439) * R_[213]));
    I_[7] = ((( _IF_ _GREATER_(R_[214], "servo.rPark1.V_beta", 0, "0", 14+0) _THEN_ 1 _ELSE_ 0) + ( _IF_ _GREATER_(
      R_[309], "servo.svpwm1.ab_n.vb", 0, "0", 13+0) _THEN_ 2 _ELSE_ 0)) + ( _IF_ _GREATER_(R_[310], "servo.svpwm1.ab_n.vc", 
      0, "0", 12+0) _THEN_ 4 _ELSE_ 0));
    I_[6] = I_[7];
    R_[238] = (R_[237] * R_[214]);
    R_[247] = (R_[238] * R_[312]);
    R_[254] = (R_[247] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[311], "servo.svpwm1.Ux.k"));
    R_[240] = (R_[239] * R_[214]);
    R_[241] = ((R_[242] * R_[240]) + (R_[243] * R_[213]));
    R_[248] = (R_[241] * R_[312]);
    R_[249] = (R_[248] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[311], "servo.svpwm1.Ux.k"));
    R_[255] = (R_[252] * R_[249]);
    R_[244] = ((R_[245] * R_[240]) + (R_[246] * R_[213]));
    R_[250] = (R_[244] * R_[312]);
    R_[251] = (R_[250] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[311], "servo.svpwm1.Ux.k"));
    R_[256] = (R_[253] * R_[251]);
    R_[259] = ( _IF_ (I_[7] == 1) _THEN_ R_[256] _ELSE_ ( _IF_ (I_[7] == 2) _THEN_ R_[255] _ELSE_ ( _IF_ (I_[7] 
      == 3) _THEN_ ((-1) * R_[256]) _ELSE_ ( _IF_ (I_[7] == 4) _THEN_ ((-1) * R_[254]) _ELSE_ ( _IF_ (I_[7] == 5) 
      _THEN_ R_[254] _ELSE_ ((-1) * R_[255]))))));
    R_[260] = ( _IF_ (I_[7] == 1) _THEN_ R_[255] _ELSE_ ( _IF_ (I_[7] == 2) _THEN_ ((-1) * R_[254]) _ELSE_ ( _IF_ 
      (I_[7] == 3) _THEN_ R_[254] _ELSE_ ( _IF_ (I_[7] == 4) _THEN_ R_[256] _ELSE_ ( _IF_ (I_[7] == 5) _THEN_ ((
      -1) * R_[255]) _ELSE_ ((-1) * R_[256]))))));
    R_[257] = ( _IF_ _GREATER_((R_[259] + R_[260]), "servo.svpwm1.nxyz_t1t2_1.Temp1 + servo.svpwm1.nxyz_t1t2_1.Temp2", 
      R_[312], "servo.svpwm1.T.k", 15+0) _THEN_ ((R_[259] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", (R_[259] + R_[260]), "servo.svpwm1.nxyz_t1t2_1.Temp1 + servo.svpwm1.nxyz_t1t2_1.Temp2")) 
      * R_[312]) _ELSE_ R_[259]);
    R_[271] = (R_[264] * R_[257]);
    R_[258] = ( _IF_ _GREATER_((R_[259] + R_[260]), "servo.svpwm1.nxyz_t1t2_1.Temp1 + servo.svpwm1.nxyz_t1t2_1.Temp2", 
      R_[312], "servo.svpwm1.T.k", 15+0) _THEN_ ((R_[260] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", (R_[259] + R_[260]), "servo.svpwm1.nxyz_t1t2_1.Temp1 + servo.svpwm1.nxyz_t1t2_1.Temp2")) 
      * R_[312]) _ELSE_ R_[260]);
    R_[269] = (((R_[266] * R_[257]) + (R_[267] * R_[258])) + (R_[268] * R_[312]));
    R_[261] = (R_[270] * R_[269]);
    R_[277] = R_[261];
    R_[262] = ((R_[272] * R_[271]) + (R_[273] * R_[261]));
    R_[278] = R_[262];
    R_[274] = (R_[265] * R_[258]);
    R_[263] = ((R_[275] * R_[274]) + (R_[276] * R_[262]));
    R_[279] = R_[263];
    R_[280] = 0;
    R_[281] = 0;
    R_[282] = 0;
    if ((I_[6] == 1)) {
        R_[280] = R_[278];
        R_[281] = R_[277];
        R_[282] = R_[279];
    }
    else { 
        if ((I_[6] == 2)) {
            R_[280] = R_[277];
            R_[281] = R_[279];
            R_[282] = R_[278];
        }
        else { 
            if ((I_[6] == 3)) {
                R_[280] = R_[277];
                R_[281] = R_[278];
                R_[282] = R_[279];
            }
            else { 
                if ((I_[6] == 4)) {
                    R_[280] = R_[279];
                    R_[281] = R_[278];
                    R_[282] = R_[277];
                }
                else { 
                    if ((I_[6] == 5)) {
                        R_[280] = R_[279];
                        R_[281] = R_[277];
                        R_[282] = R_[278];
                    }
                    else { 
                        R_[280] = R_[278];
                        R_[281] = R_[279];
                        R_[282] = R_[277];
                    }
                }
            }
        }
    }
    R_[308] = ((R_[298] * R_[390]) + (R_[299] * R_[282]));
    B_[19] = (_GREATER_(R_[308], "servo.svpwm1.pwm.hysteresis3.u", R_[307], "servo.svpwm1.pwm.hysteresis3.uHigh", 
      17+0) _OR_ (B_[22] _AND_ _GREATER_EQUAL_(R_[308], "servo.svpwm1.pwm.hysteresis3.u", R_[306], "servo.svpwm1.pwm.hysteresis3.uLow", 
      16+0)));
    B_[4] = _NOT_(B_[19]);
    R_[305] = ((R_[296] * R_[390]) + (R_[297] * R_[281]));
    B_[17] = (_GREATER_(R_[305], "servo.svpwm1.pwm.hysteresis2.u", R_[304], "servo.svpwm1.pwm.hysteresis2.uHigh", 
      19+0) _OR_ (B_[21] _AND_ _GREATER_EQUAL_(R_[305], "servo.svpwm1.pwm.hysteresis2.u", R_[303], "servo.svpwm1.pwm.hysteresis2.uLow", 
      18+0)));
    B_[3] = _NOT_(B_[17]);
    R_[302] = ((R_[294] * R_[390]) + (R_[295] * R_[280]));
    B_[15] = (_GREATER_(R_[302], "servo.svpwm1.pwm.hysteresis1.u", R_[301], "servo.svpwm1.pwm.hysteresis1.uHigh", 
      21+0) _OR_ (B_[20] _AND_ _GREATER_EQUAL_(R_[302], "servo.svpwm1.pwm.hysteresis1.u", R_[300], "servo.svpwm1.pwm.hysteresis1.uLow", 
      20+0)));
    B_[2] = _NOT_(B_[15]);
    /* 连续离散混合方程 (116, 0) */
    _BEGIN_MIXED_EQUATIONS_BLOCK_
    _DECLARE_DOUBLE_ARRAY_(6, 36)
    _BEGIN_SOLVE_EQUATIONS_
    /* 线性方程 (116, 0) */
    BEGIN_LINEAR_BLOCK(12)
    const char* const varname[] = {
        "servo.dcac.idealDiode4.s", "servo.dcac.idealDiode1.s", "servo.dcac.idealDiode5.s", "servo.dcac.idealDiode2.s", 
          "servo.dcac.idealClosingSwitch5.s", "servo.dcac.idealClosingSwitch2.s", "servo.dcac.idealDiode6.s", 
        
          "servo.dcac.idealDiode3.s", "servo.dcac.idealClosingSwitch3.s", "servo.dcac.idealClosingSwitch6.s", "servo.dcac.idealClosingSwitch4.s", "servo.dcac.idealClosingSwitch1.s", 
    0};
    x[0] = R_[192];
    x[1] = R_[184];
    x[2] = R_[190];
    x[3] = R_[196];
    x[4] = R_[175];
    x[5] = R_[181];
    x[6] = R_[194];
    x[7] = R_[187];
    x[8] = R_[172];
    x[9] = R_[179];
    x[10] = R_[177];
    x[11] = R_[169];
    EvalRecordedVariables(x, 1, 12);
    SOLVE_LINEAR(116, 0, 0);
    CheckReturnValue();
    R_[192] = x[0];
    R_[184] = x[1];
    R_[190] = x[2];
    R_[196] = x[3];
    R_[175] = x[4];
    R_[181] = x[5];
    R_[194] = x[6];
    R_[187] = x[7];
    R_[172] = x[8];
    R_[179] = x[9];
    R_[177] = x[10];
    R_[169] = x[11];
    END_LINEAR_BLOCK
    R_[167] = (R_[357] * R_[169]);
    R_[168] = (R_[358] * R_[169]);
    R_[170] = (R_[359] * R_[172]);
    R_[171] = (R_[360] * R_[172]);
    R_[173] = (R_[361] * R_[175]);
    R_[174] = (R_[362] * R_[175]);
    R_[159] = (R_[363] * R_[177]);
    R_[162] = (R_[159] + R_[167]);
    R_[160] = (((-1) * R_[170]) + R_[162]);
    R_[161] = (((-1) * R_[173]) + R_[162]);
    R_[176] = (R_[364] * R_[177]);
    R_[178] = (R_[365] * R_[179]);
    R_[180] = (R_[366] * R_[181]);
    R_[182] = (R_[159] + ((-1) * R_[162]));
    R_[183] = (R_[367] * R_[184]);
    R_[185] = (R_[160] + ((-1) * R_[162]));
    R_[186] = (R_[368] * R_[187]);
    R_[188] = (R_[161] + ((-1) * R_[162]));
    R_[189] = (R_[369] * R_[190]);
    R_[191] = (R_[370] * R_[192]);
    R_[193] = (R_[371] * R_[194]);
    R_[195] = (R_[372] * R_[196]);
    R_[324] = (((-1) * R_[162]) + R_[326]);
    R_[318] = (((((((-1) * R_[168]) + ((-1) * R_[171])) + ((-1) * R_[174])) + R_[183]) + R_[186]) + R_[189]);
    _BEGIN_EVENT_UPDATE_
    _BEGIN_DISCRETE_UPDATE_
    _UPDATE_DISCRETE_(B_[5], "servo.dcac.idealDiode1.off", _LESS_(R_[184], "servo.dcac.idealDiode1.s", 0, "0", 0+0))
    
      _UPDATE_DISCRETE_(B_[8], "servo.dcac.idealDiode4.off", _LESS_(R_[192], "servo.dcac.idealDiode4.s", 0, "0", 
      1+0))
    _UPDATE_DISCRETE_(B_[6], "servo.dcac.idealDiode3.off", _LESS_(R_[187], "servo.dcac.idealDiode3.s", 0, "0", 2+0))
    _UPDATE_DISCRETE_(B_[9], "servo.dcac.idealDiode6.off", _LESS_(R_[194], "servo.dcac.idealDiode6.s", 0, "0", 3+0))
    
      _UPDATE_DISCRETE_(B_[10], "servo.dcac.idealDiode2.off", _LESS_(R_[196], "servo.dcac.idealDiode2.s", 0, "0", 
      4+0))
    _UPDATE_DISCRETE_(B_[7], "servo.dcac.idealDiode5.off", _LESS_(R_[190], "servo.dcac.idealDiode5.s", 0, "0", 5+0))
    
      _END_DISCRETE_UPDATE_
    _BEGIN_SPAN_COMPUTE_
    _COMPUTE_MINIMAL_SPAN_(0, 0)
    _COMPUTE_MINIMAL_SPAN_(1, 1)
    _COMPUTE_MINIMAL_SPAN_(2, 2)
    _COMPUTE_MINIMAL_SPAN_(3, 3)
    _COMPUTE_MINIMAL_SPAN_(4, 4)
    _COMPUTE_MINIMAL_SPAN_(5, 5)
    _END_SPAN_COMPUTE_
    _BEGIN_REAL_SET_
    _BEGIN_REAL_UPDATE_
    _UPDATE_REAL_(R_[192], 0);
    _UPDATE_REAL_(R_[191], 1);
    _UPDATE_REAL_(R_[167], 2);
    _UPDATE_REAL_(R_[182], 3);
    _UPDATE_REAL_(R_[184], 4);
    _UPDATE_REAL_(R_[183], 5);
    _UPDATE_REAL_(R_[188], 6);
    _UPDATE_REAL_(R_[190], 7);
    _UPDATE_REAL_(R_[189], 8);
    _UPDATE_REAL_(R_[196], 9);
    _UPDATE_REAL_(R_[195], 10);
    _UPDATE_REAL_(R_[175], 11);
    _UPDATE_REAL_(R_[173], 12);
    _UPDATE_REAL_(R_[161], 13);
    _UPDATE_REAL_(R_[181], 14);
    _UPDATE_REAL_(R_[180], 15);
    _UPDATE_REAL_(R_[174], 16);
    _UPDATE_REAL_(R_[194], 17);
    _UPDATE_REAL_(R_[193], 18);
    _UPDATE_REAL_(R_[185], 19);
    _UPDATE_REAL_(R_[187], 20);
    _UPDATE_REAL_(R_[186], 21);
    _UPDATE_REAL_(R_[172], 22);
    _UPDATE_REAL_(R_[170], 23);
    _UPDATE_REAL_(R_[160], 24);
    _UPDATE_REAL_(R_[179], 25);
    _UPDATE_REAL_(R_[178], 26);
    _UPDATE_REAL_(R_[171], 27);
    _UPDATE_REAL_(R_[318], 28);
    _UPDATE_REAL_(R_[324], 29);
    _UPDATE_REAL_(R_[162], 30);
    _UPDATE_REAL_(R_[159], 31);
    _UPDATE_REAL_(R_[177], 32);
    _UPDATE_REAL_(R_[176], 33);
    _UPDATE_REAL_(R_[168], 34);
    _UPDATE_REAL_(R_[169], 35);
    _END_REAL_UPDATE_
    _SET_REAL_(R_[192], 0);
    _SET_REAL_(R_[191], 1);
    _SET_REAL_(R_[167], 2);
    _SET_REAL_(R_[182], 3);
    _SET_REAL_(R_[184], 4);
    _SET_REAL_(R_[183], 5);
    _SET_REAL_(R_[188], 6);
    _SET_REAL_(R_[190], 7);
    _SET_REAL_(R_[189], 8);
    _SET_REAL_(R_[196], 9);
    _SET_REAL_(R_[195], 10);
    _SET_REAL_(R_[175], 11);
    _SET_REAL_(R_[173], 12);
    _SET_REAL_(R_[161], 13);
    _SET_REAL_(R_[181], 14);
    _SET_REAL_(R_[180], 15);
    _SET_REAL_(R_[174], 16);
    _SET_REAL_(R_[194], 17);
    _SET_REAL_(R_[193], 18);
    _SET_REAL_(R_[185], 19);
    _SET_REAL_(R_[187], 20);
    _SET_REAL_(R_[186], 21);
    _SET_REAL_(R_[172], 22);
    _SET_REAL_(R_[170], 23);
    _SET_REAL_(R_[160], 24);
    _SET_REAL_(R_[179], 25);
    _SET_REAL_(R_[178], 26);
    _SET_REAL_(R_[171], 27);
    _SET_REAL_(R_[318], 28);
    _SET_REAL_(R_[324], 29);
    _SET_REAL_(R_[162], 30);
    _SET_REAL_(R_[159], 31);
    _SET_REAL_(R_[177], 32);
    _SET_REAL_(R_[176], 33);
    _SET_REAL_(R_[168], 34);
    _SET_REAL_(R_[169], 35);
    _END_REAL_SET_
    _END_EVENT_UPDATE_
    _END_SOLVE_EQUATIONS_
    _DESTROY_DOUBLE_ARRAY_
    _END_MIXED_EQUATIONS_BLOCK_
    R_[137] = (((-1) * R_[117]) + R_[161]);
    R_[115] = (R_[116] * R_[131]);
    R_[132] = (((-1) * R_[115]) + R_[160]);
    R_[113] = (R_[114] * R_[126]);
    R_[127] = (((-1) * R_[113]) + R_[159]);
    R_[92] = ((R_[97] * R_[93]) + (R_[98] * R_[94]));
    R_[85] = ((1.5 * I_[2]) * ((R_[88] * R_[91]) + (((-1) * R_[87]) * R_[92])));
    R_[349] = (((-1.0) * sin(R_[86])) * R_[342]);
    R_[350] = (((-1) * cos(R_[86])) * R_[342]);
    R_[351] = (cos(R_[86]) * R_[342]);
    R_[352] = (((-1.0) * sin(R_[86])) * R_[342]);
    /* 线性方程 (143, 0) */
    BEGIN_LINEAR_BLOCK(4)
    const char* const varname[] = {
        "pmsm.PMSM.der(idq_sr[2])", "pmsm.PMSM.der(idq_sr[1])", "pmsm.PMSM.spacePhasorS.der(i[2])", "pmsm.PMSM.spacePhasorS.v[2]", 
          
    0};
    x[0] = R_[398];
    x[1] = R_[397];
    x[2] = R_[354];
    x[3] = R_[141];
    EvalRecordedVariables(x, 13, 4);
    SOLVE_LINEAR(143, 0, 1);
    CheckReturnValue();
    R_[398] = x[0];
    R_[397] = x[1];
    R_[354] = x[2];
    R_[141] = x[3];
    END_LINEAR_BLOCK
    R_[343] = (((R_[95] * R_[397]) + (R_[96] * R_[398])) - R_[373]);
    R_[344] = (((R_[97] * R_[397]) + (R_[98] * R_[398])) - R_[374]);
    R_[347] = ((R_[102] * R_[397]) + (R_[103] * R_[398]));
    R_[348] = ((R_[104] * R_[397]) + (R_[105] * R_[398]));
    R_[345] = (((R_[95] * R_[347]) + (R_[96] * R_[348])) - R_[375]);
    R_[346] = (((R_[97] * R_[347]) + (R_[98] * R_[348])) - R_[376]);
    R_[130] = (R_[134] * R_[354]);
    R_[133] = (((-1) * R_[130]) + R_[132]);
    R_[355] = (((-1.73205080756888) * R_[344]) + (1.0 * R_[354]));
    R_[135] = (R_[139] * R_[355]);
    R_[138] = (((-1) * R_[135]) + R_[137]);
    R_[353] = (((1.5 * R_[343]) + (0.5 * R_[354])) + (0.5 * R_[355]));
    R_[125] = (R_[129] * R_[353]);
    R_[128] = (((-1) * R_[125]) + R_[127]);
    R_[72] = (R_[133] + ((-1) * R_[141]));
    R_[140] = (R_[128] + ((-1) * R_[72]));
    R_[142] = (R_[138] + ((-1) * R_[72]));
    R_[391] = R_[380];
    R_[0] = (R_[381] + ((-1) * R_[379]));
    R_[1] = (R_[2] * (R_[0] + ((-1) * R_[3])));
    /* 标量线性方程 (154, 0) */
    BEGIN_LINEAR_BLOCK(1)
    const char* const varname[] = {
        "y_axis_mechnical_model.coupling.inertia1.der(w)", 
    0};
    x[0] = R_[394];
    EvalRecordedVariables(x, 17, 1);
    b[0] = (((0.3 + (R_[22] * R_[382])) + R_[23]) + R_[1]);
    A[0] = ((((-1) * R_[20]) + ((-1) * R_[25])) + ((-1) * R_[8]));
    SolveTrivialLinear(A, "", b, "", x, varname, 154);
    CheckReturnValue();
    R_[394] = x[0];
    END_LINEAR_BLOCK
    R_[12] = ((R_[8] * R_[394]) + R_[1]);

    /* 标量线性方程 (155, 0) */
    BEGIN_LINEAR_BLOCK(1)
    const char* const varname[] = {
        "y_axis_mechnical_model.coupling.inertia.der(w)", 
    0};
    x[0] = R_[392];
    EvalRecordedVariables(x, 18, 1);
    b[0] = (R_[85] + R_[1]);
    A[0] = (R_[64] + R_[4]);
    SolveTrivialLinear(A, "", b, "", x, varname, 155);
    CheckReturnValue();
    R_[392] = x[0];
    END_LINEAR_BLOCK
    R_[63] = ((((-1) * R_[4]) * R_[392]) + R_[1]);

END_MO_FUNCTION_WITH_LMP(OdeResFn)


BEGIN_MO_FUNCTION_WITH_LMP(UpdateVariablesAfterDae)
    R_[61] = (R_[379] + ((-1) * R_[68]));
    if ((MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[13]))) {
        MoAssertWithCondText(((R_[224] >= (R_[227] + ((-0.01) * abs_m(R_[227])))) _AND_ (R_[224] <= (R_[226] + (
          0.01 * abs_m(R_[226]))))), "servo.IqLimiter.u >= servo.IqLimiter.uMin + (-0.01) * abs(servo.IqLimiter.uMin) and servo.IqLimiter.u <= servo.IqLimiter.uMax + 0.01 * abs(servo.IqLimiter.uMax)", 
          string_add_m(string_add_m(string_add_m(string_add_m(string_add_m("Limiter: During initialization the limits have been ignored.\nHowever, the result is that the input u is not within the required limits:\n  u = ", 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[224], TRUE, 0)), ", uMin = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[227], TRUE, 0)), ", uMax = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[226], TRUE, 0)), 1);
    }
    else { 
    }
    R_[62] = (9.54929658551372 * R_[380]);
    R_[330] = ( _IF_ B_[1] _THEN_ 0 _ELSE_ ((R_[43] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[44], "y_axis_mechnical_model.simpleprojectworktable.derivative1.T")) 
      * (R_[332] + ((-1) * R_[384]))));
    R_[89] = (R_[95] * R_[106]);
    R_[90] = (R_[97] * R_[106]);
    if ((MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[12]))) {
        MoAssertWithCondText(((R_[218] >= (R_[220] + ((-0.01) * abs_m(R_[220])))) _AND_ (R_[218] <= (R_[219] + (
          0.01 * abs_m(R_[219]))))), "servo.VdLimiter.u >= servo.VdLimiter.uMin + (-0.01) * abs(servo.VdLimiter.uMin) and servo.VdLimiter.u <= servo.VdLimiter.uMax + 0.01 * abs(servo.VdLimiter.uMax)", 
          string_add_m(string_add_m(string_add_m(string_add_m(string_add_m("Limiter: During initialization the limits have been ignored.\nHowever, the result is that the input u is not within the required limits:\n  u = ", 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[218], TRUE, 0)), ", uMin = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[220], TRUE, 0)), ", uMax = "), u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
          MWS_MDL_ARGU_PTR R_[219], TRUE, 0)), 1);
    }
    else { 
    }
    if ((MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[11]))) {
        MoAssertWithCondText(((R_[215] >= (R_[217] + ((-0.01) * abs_m(R_[217])))) _AND_ (R_[215] <= (R_[216] + (
          0.01 * abs_m(R_[216]))))), "servo.VqLimiter.u >= servo.VqLimiter.uMin + (-0.01) * abs(servo.VqLimiter.uMin) and servo.VqLimiter.u <= servo.VqLimiter.uMax + 0.01 * abs(servo.VqLimiter.uMax)", 
          string_add_m(string_add_m(string_add_m(string_add_m(string_add_m("Limiter: During initialization the limits have been ignored.\nHowever, the result is that the input u is not within the required limits:\n  u = ", 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[215], TRUE, 0)), ", uMin = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[217], TRUE, 0)), ", uMax = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[216], TRUE, 0)), 1);
    }
    else { 
    }
    R_[163] = (((((((-1) * R_[180]) + ((-1) * R_[176])) + ((-1) * R_[178])) + R_[195]) + R_[191]) + R_[193]);
    R_[166] = (((R_[159] * ((-1) * R_[126])) + (R_[160] * ((-1) * R_[131]))) + (R_[161] * ((-1) * R_[136])));
    R_[109] = (R_[161] + ((-1) * R_[137]));
    R_[319] = (R_[162] * R_[318]);
    R_[316] = (R_[318] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", I_[9], "servo.batteryideal.np"));
    MoAssertWithCondText((abs_m(R_[318]) <= (R_[321] * I_[9])), "abs(servo.batteryideal.iPackage) <= servo.batteryideal.ICellMax * servo.batteryideal.np", 
      string_add_m(string_add_m("Battery current exceeded maximum admissible current (=", u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
      MWS_MDL_ARGU_PTR R_[321], TRUE, 0)), "A)"), 1);
    R_[327] = (R_[318] + ((-1) * R_[163]));
    R_[165] = (((-1) * R_[318]) * R_[162]);
    MoAssertWithCondText((((-1) * R_[318]) <= R_[164]), "(-1) * servo.batteryideal.iPackage <= servo.dcac.IConverterMax", string_add_m(string_add_m("Converter current exceeded maximum admissible current of the supply port (IConverterMax = ", 
  u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[164], TRUE, 0)), "A)"), 1);
    MoAssertWithCondText((R_[162] >= 0), "servo.dcac.pSupply.v >= 0", string_add_m(string_add_m("The voltage of the supply port must be greater than zero! (vSupply = ", 
      u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[162], TRUE, 0)), "V)"), 1);
    R_[315] = (R_[162] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", I_[8], "servo.batteryideal.ns"));
    R_[317] = (R_[315] * R_[316]);
    R_[83] = ((-0.333333333333333) * MoBuiltinRealSum(MWS_MDL_ARGU_PTR MoBuiltinRealArray(MWS_MDL_ARGU_PTR 3, (MoReal)(
      R_[126]), (MoReal)(R_[131]), (MoReal)(R_[136]))));
    R_[108] = (R_[160] + ((-1) * R_[132]));
    R_[107] = (R_[159] + ((-1) * R_[127]));
    R_[121] = (R_[137] + ((-1) * R_[138]));
    R_[339] = ((((-0.333333333333333) * R_[353]) + ((-0.333333333333333) * R_[354])) + ((-0.333333333333333) * R_[355]));
      
    R_[120] = (R_[132] + ((-1) * R_[133]));
    R_[119] = (R_[127] + ((-1) * R_[128]));
    R_[69] = (R_[159] + ((-1) * R_[72]));
    R_[70] = (R_[160] + ((-1) * R_[72]));
    R_[71] = (R_[161] + ((-1) * R_[72]));
END_MO_FUNCTION_WITH_LMP(UpdateVariablesAfterDae)


BEGIN_MO_FUNCTION_WITH_LMP(Dummy)
END_MO_FUNCTION_WITH_LMP(Dummy)


BEGIN_MO_FUNCTION_WITH_LMP(ReinitFn)
END_MO_FUNCTION_WITH_LMP(ReinitFn)


BEGIN_MO_FUNCTION_WITH_LMP(LoadDefaultStartValues)
    BEGIN_LOAD_CONST_DEFAULT_START_VALUE
        CI_[0] = 1;
        CI_[1] = 3;
        CI_[2] = 1;
        CI_[3] = 3;
        CR_[0] = 210000000000;
        CR_[1] = 82000000000;
        CR_[2] = 0.15;
        CR_[3] = 0.15;
        CR_[4] = 2505000000;
        CI_[4] = 1;
        CI_[5] = 1;
        CR_[5] = 760000000;
        CR_[6] = 0.15;
        CR_[7] = 760000000;
        CR_[8] = 0.15;
        CI_[6] = 1;
        CI_[7] = 3;
        CR_[10] = 3.141592653589793;
        CI_[8] = 3;
        CI_[9] = 3;
        CI_[10] = 3;
        CI_[11] = 3;
        CI_[12] = 3;
        CI_[13] = 3;
        CI_[14] = 3;
        CI_[15] = 3;
        CI_[16] = 3;
        CI_[17] = 3;
        CI_[18] = 3;
        CR_[15] = 3.141592653589793;
        CR_[16] = 0.6666666666666666;
        CR_[17] = -0.3333333333333332;
        CR_[18] = -0.3333333333333336;
        CR_[20] = 0.5773502691896257;
        CR_[21] = -0.5773502691896255;
        CR_[22] = 1;
        CR_[24] = -0.4999999999999998;
        CR_[25] = 0.8660254037844387;
        CR_[26] = -0.5000000000000004;
        CR_[27] = -0.8660254037844384;
        CI_[19] = 3;
        CI_[20] = 3;
        CI_[21] = 3;
        CI_[22] = 3;
        CI_[23] = 3;
        CI_[24] = 3;
        CI_[25] = 3;
        CI_[26] = 3;
        CI_[27] = 3;
        CI_[28] = 3;
        CI_[29] = 3;
        CI_[30] = 3;
        CI_[31] = 3;
        CR_[34] = 1.e-005;
        CR_[35] = 1.e-005;
        CR_[36] = 1.e-005;
        CR_[37] = 1.e-005;
        CR_[39] = 1.e-005;
        CR_[40] = 1.e-005;
        CR_[41] = 1;
        CR_[42] = 1;
        CR_[43] = 1.e-005;
        CR_[44] = 1.e-005;
        CR_[45] = 1;
        CR_[46] = 1;
        CR_[47] = 1.e-005;
        CR_[48] = 1.e-005;
        CR_[49] = 1;
        CR_[50] = 1;
        CR_[52] = 1.e-005;
        CR_[53] = 1.e-005;
        CR_[54] = 1;
        CR_[55] = 1;
        CR_[57] = 1.e-005;
        CR_[58] = 1.e-005;
        CR_[59] = 1;
        CR_[60] = 1;
        CR_[62] = 1.e-005;
        CR_[63] = 1.e-005;
        CR_[64] = 1;
        CR_[65] = 1;
        CR_[66] = 1.e-005;
        CR_[67] = 1.e-005;
        CR_[69] = 1;
        CR_[70] = 1;
        CR_[71] = 1.e-005;
        CR_[72] = 1.e-005;
        CR_[74] = 1;
        CR_[75] = 1;
        CR_[76] = 1.e-005;
        CR_[77] = 1.e-005;
        CR_[79] = 1;
        CR_[80] = 1;
        CR_[82] = 1.e-005;
        CR_[83] = 1.e-005;
        CR_[85] = 1;
        CR_[86] = 1;
        CR_[88] = 1.e-005;
        CR_[89] = 1.e-005;
        CR_[91] = 1;
        CR_[92] = 1;
        CR_[94] = 1.e-005;
        CR_[95] = 1.e-005;
        CR_[97] = 1;
        CR_[98] = 1;
        CI_[32] = 1;
        CI_[33] = 1;
        CI_[34] = 1;
        CI_[35] = 3;
        CI_[36] = 2;
        CI_[37] = 2;
        CI_[38] = 2;
        CI_[39] = 3;
        CR_[107] = 3.141592653589793;
    END_LOAD_CONST_DEFAULT_START_VALUE
    R_[2] = 96389.8;
    R_[4] = 4.e-005;
    R_[8] = 4.e-005;
    R_[13] = 4.e-002;
    R_[15] = 0.8;
    R_[16] = 1.2e-002;
    R_[17] = 0.766;
    R_[18] = 7850;
    R_[22] = 9.e-002;
    R_[24] = 169.3658;
    R_[26] = 100;
    R_[27] = 1.e-002;
    R_[28] = 56.6223;
    R_[30] = 100;
    R_[31] = 1.6e-002;
    R_[33] = 60313;
    R_[34] = 210000000000;
    R_[39] = 1;
    R_[40] = 1.e-002;
    R_[43] = 1;
    R_[44] = 1.e-002;
    I_[0] = 1;
    R_[47] = 110;
    R_[48] = 6;
    R_[49] = 50;
    R_[50] = 0.915;
    R_[51] = 3000;
    R_[52] = 5;
    R_[53] = 2.24e-003;
    R_[54] = 4.085e-003;
    R_[55] = 0.3567;
    R_[56] = 1.06e-004;
    R_[57] = 2.316e-003;
    R_[58] = 2.316e-003;
    R_[81] = 4.e-002;
    R_[143] = 311;
    R_[144] = 1.e-004;
    I_[3] = 1;
    R_[145] = 311;
    R_[146] = 800;
    R_[147] = 6.e-003;
    I_[4] = 1;
    I_[5] = 1;
    R_[148] = 400;
    R_[149] = 60;
    R_[150] = 0.5;
    R_[151] = 1.5e-002;
    R_[154] = 2.7432;
    R_[155] = 4.085e-003;
    R_[156] = 200;
    R_[157] = 200;
    R_[158] = 1000;
    B_[5] = 1;
    B_[6] = 1;
    B_[7] = 1;
    B_[8] = 1;
    B_[9] = 1;
    B_[10] = 1;
    B_[11] = 1;
    B_[12] = 1;
    B_[13] = 1;
    R_[237] = 1.732050807568877;
    R_[239] = 0.5773502691896257;
    R_[242] = 1;
    R_[243] = 1;
    R_[245] = 1;
    R_[246] = -1;
    R_[252] = 1.5;
    R_[253] = 1.5;
    R_[264] = 0.5;
    R_[265] = 0.5;
    R_[266] = -1;
    R_[267] = -1;
    R_[268] = 1;
    R_[270] = 0.25;
    R_[272] = 1;
    R_[273] = 1;
    R_[275] = 1;
    R_[276] = 1;
    R_[283] = 1.e-004;
    R_[284] = 2;
    R_[285] = 50;
    R_[287] = -1;
    R_[292] = 1;
    R_[294] = 1;
    R_[295] = -1;
    R_[296] = 1;
    R_[297] = -1;
    R_[298] = 1;
    R_[299] = -1;
    R_[300] = 1.e-015;
    R_[301] = 1.e-015;
    R_[303] = 1.e-015;
    R_[304] = 1.e-015;
    R_[306] = 1.e-015;
    R_[307] = 1.e-015;
    I_[8] = 1;
    I_[9] = 1;
    R_[334] = 1;
    R_[335] = 1;
END_MO_FUNCTION_WITH_LMP(LoadDefaultStartValues)


BEGIN_MO_FUNCTION_WITH_LMP(LoadVariableStartValues)
END_MO_FUNCTION_WITH_LMP(LoadVariableStartValues)


BEGIN_MO_FUNCTION_WITH_LMP(LoadGivenInitialValues)
END_MO_FUNCTION_WITH_LMP(LoadGivenInitialValues)


BEGIN_MO_FUNCTION_WITH_LMP(SolveDependentParameters)
    string_assign(CS_[0], "Y");
    string_assign(CS_[0], "Y");
    R_[286] = R_[283];
    R_[219] = R_[158];
    R_[220] = ((-1) * R_[158]);
    R_[216] = R_[157];
    R_[217] = ((-1) * R_[157]);
    R_[226] = R_[156];
    R_[227] = ((-1) * R_[156]);
    R_[153] = R_[155];
    R_[208] = R_[153];
    R_[203] = R_[155];
    R_[152] = R_[154];
    R_[207] = R_[152];
    R_[202] = R_[154];
    R_[230] = R_[151];
    R_[229] = R_[150];
    R_[314] = R_[149];
    R_[164] = R_[148];
    R_[322] = R_[147];
    R_[323] = ((R_[322] * I_[8]) * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", I_[9], "servo.batteryideal.np"));
    R_[325] = R_[323];
    R_[321] = R_[146];
    R_[320] = R_[145];
    R_[326] = (I_[8] * R_[320]);
    R_[221] = I_[3];
    R_[236] = R_[144];
    R_[312] = R_[236];
    R_[235] = R_[143];
    R_[311] = R_[235];
    R_[82] = R_[81];
    R_[78] = R_[58];
    R_[100] = R_[78];
    R_[77] = R_[57];
    R_[99] = R_[77];
    R_[102] = R_[99];
    R_[103] = 0;
    R_[104] = 0;
    R_[105] = R_[100];
    R_[75] = R_[56];
    R_[122] = R_[75];
    R_[123] = R_[75];
    R_[124] = R_[75];
    R_[129] = R_[122];
    R_[134] = R_[123];
    R_[139] = R_[124];
    R_[74] = R_[55];
    R_[110] = R_[74];
    R_[111] = R_[74];
    R_[112] = R_[74];
    R_[114] = R_[110];
    R_[116] = R_[111];
    R_[118] = R_[112];
    R_[59] = R_[50];
    R_[60] = R_[59];
    R_[64] = R_[59];
    R_[73] = R_[49];
    R_[79] = (0.05 * (0.159154943091895 * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[73], "pmsm.PMSM.fNominal")));
    R_[80] = R_[79];
    R_[76] = R_[47];
    R_[84] = ((1.4142135623731 * R_[76]) * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", ((6.28318530717959 * R_[77]) * 
      R_[73]), "6.28318530717959 * pmsm.PMSM.Lmd * pmsm.PMSM.fNominal"));
    R_[106] = R_[84];
    I_[1] = I_[0];
    I_[2] = I_[1];
    B_[1] = (abs_m(R_[43]) < 1e-15);
    B_[0] = (abs_m(R_[39]) < 1e-15);
    R_[32] = (0.159154943091895 * R_[31]);
    R_[21] = (0.159154943091895 * R_[16]);
    R_[25] = (((0.0253302959105844 * R_[24]) * R_[16]) * R_[16]);
    R_[14] = (0.785398163397448 * (R_[13] * R_[13]));
    R_[19] = (((0.098174770424681 * R_[18]) * R_[17]) * MwsPow(MWS_MDL_ARGU_PTR R_[13], "y_axis_mechnical_model.simpleprojectscrew.ds6", 
      4, "4"));
    R_[20] = R_[19];
    R_[390] = R_[293];
END_MO_FUNCTION_WITH_LMP(SolveDependentParameters)


BEGIN_MO_FUNCTION_WITH_LMP(SolveInitialBlocks)
    R_[384] = R_[45];
    R_[383] = R_[41];
    R_[382] = R_[10];
    R_[381] = R_[9];
    R_[380] = R_[6];
    R_[379] = R_[5];
    R_[389] = R_[231];
    R_[356] = R_[288];
    R_[289] = R_[356];
    R_[390] = R_[293];
    B_[22] = B_[18];
    B_[21] = B_[16];
    B_[20] = B_[14];
    R_[388] = R_[209];
    R_[387] = R_[204];
END_MO_FUNCTION_WITH_LMP(SolveInitialBlocks)


BEGIN_MO_FUNCTION_NO_ERROR(SavePreVariables)
    _UPDATE_REAL_PRE_(R_[289], "servo.svpwm1.pwm.pulse.T0", R_[356], 1);
    _UPDATE_PRE_(B_[15], "servo.svpwm1.pwm.hysteresis1.y", B_[20], 1);
    _UPDATE_PRE_(B_[17], "servo.svpwm1.pwm.hysteresis2.y", B_[21], 1);
    _UPDATE_PRE_(B_[19], "servo.svpwm1.pwm.hysteresis3.y", B_[22], 1);
END_MO_FUNCTION_NO_ERROR(SavePreVariables)


BEGIN_MO_FUNCTION_NO_ERROR(SaveEvalutedVariables)
    RecordVariable(_time, 0);
    RecordVariable(R_[192], 1);
    RecordVariable(R_[184], 2);
    RecordVariable(R_[190], 3);
    RecordVariable(R_[196], 4);
    RecordVariable(R_[175], 5);
    RecordVariable(R_[181], 6);
    RecordVariable(R_[194], 7);
    RecordVariable(R_[187], 8);
    RecordVariable(R_[172], 9);
    RecordVariable(R_[179], 10);
    RecordVariable(R_[177], 11);
    RecordVariable(R_[169], 12);
    RecordVariable(R_[398], 13);
    RecordVariable(R_[397], 14);
    RecordVariable(R_[354], 15);
    RecordVariable(R_[141], 16);
    RecordVariable(R_[394], 17);
    RecordVariable(R_[392], 18);
END_MO_FUNCTION_NO_ERROR(SaveEvalutedVariables)



BEGIN_DEFINE_LINEAR_AUX_FUNC(116, 0)
  LINEAR_AUX_FUNC_b_SECTION
    R_[357] = ( _IF_ B_[15] _THEN_ 1e-5 _ELSE_ 1);
    R_[358] = ( _IF_ B_[15] _THEN_ 1 _ELSE_ 1e-5);
    R_[359] = ( _IF_ B_[17] _THEN_ 1e-5 _ELSE_ 1);
    R_[360] = ( _IF_ B_[17] _THEN_ 1 _ELSE_ 1e-5);
    R_[361] = ( _IF_ B_[19] _THEN_ 1e-5 _ELSE_ 1);
    R_[362] = ( _IF_ B_[19] _THEN_ 1 _ELSE_ 1e-5);
    R_[363] = ( _IF_ B_[2] _THEN_ 1e-5 _ELSE_ 1);
    R_[364] = ( _IF_ B_[2] _THEN_ 1 _ELSE_ 1e-5);
    R_[365] = ( _IF_ B_[3] _THEN_ 1 _ELSE_ 1e-5);
    R_[366] = ( _IF_ B_[4] _THEN_ 1 _ELSE_ 1e-5);
    R_[367] = ( _IF_ B_[5] _THEN_ 1e-5 _ELSE_ 1);
    R_[368] = ( _IF_ B_[6] _THEN_ 1e-5 _ELSE_ 1);
    R_[369] = ( _IF_ B_[7] _THEN_ 1e-5 _ELSE_ 1);
    R_[370] = ( _IF_ B_[8] _THEN_ 1e-5 _ELSE_ 1);
    R_[371] = ( _IF_ B_[9] _THEN_ 1e-5 _ELSE_ 1);
    R_[372] = ( _IF_ B_[10] _THEN_ 1e-5 _ELSE_ 1);
    b[8] = R_[326];
    b[9] = ((-1) * R_[126]);
    b[10] = ((-1) * R_[131]);
    b[11] = ((-1) * R_[136]);
  LINEAR_AUX_FUNC_A_SECTION
    A[5] = ( _IF_ B_[8] _THEN_ (-1) _ELSE_ (-1e-5));
    A[9] = ((-1) * R_[370]);
    A[14] = ( _IF_ B_[5] _THEN_ (-1) _ELSE_ (-1e-5));
    A[20] = (((-1) * R_[325]) * R_[367]);
    A[21] = R_[367];
    A[28] = ( _IF_ B_[7] _THEN_ (-1) _ELSE_ (-1e-5));
    A[32] = (((-1) * R_[325]) * R_[369]);
    A[35] = R_[369];
    A[43] = ( _IF_ B_[10] _THEN_ (-1) _ELSE_ (-1e-5));
    A[47] = ((-1) * R_[372]);
    A[49] = ((-1) * R_[361]);
    A[52] = ((-1) * R_[361]);
    A[55] = R_[361];
    A[56] = (R_[325] * R_[362]);
    A[59] = ((-1) * R_[362]);
    A[61] = ( _IF_ B_[4] _THEN_ (-1e-5) _ELSE_ (-1));
    A[71] = R_[366];
    A[78] = ( _IF_ B_[9] _THEN_ (-1) _ELSE_ (-1e-5));
    A[82] = ((-1) * R_[371]);
    A[87] = ( _IF_ B_[6] _THEN_ (-1) _ELSE_ (-1e-5));
    A[92] = (((-1) * R_[325]) * R_[368]);
    A[94] = R_[368];
    A[96] = ((-1) * R_[359]);
    A[99] = ((-1) * R_[359]);
    A[102] = R_[359];
    A[104] = (R_[325] * R_[360]);
    A[106] = ((-1) * R_[360]);
    A[108] = ( _IF_ B_[3] _THEN_ (-1e-5) _ELSE_ (-1));
    A[118] = R_[365];
    A[120] = R_[363];
    A[121] = R_[363];
    A[125] = ((-1) * R_[363]);
    A[126] = ((-1) * R_[363]);
    A[127] = ((-1) * R_[363]);
    A[128] = R_[363];
    A[129] = R_[364];
    A[132] = R_[357];
    A[133] = R_[357];
    A[134] = ((-1) * R_[357]);
    A[138] = ((-1) * R_[357]);
    A[139] = ((-1) * R_[357]);
    A[140] = ((R_[325] * R_[358]) + R_[357]);
    A[141] = ((-1) * R_[358]);
END_DEFINE_LINEAR_AUX_FUNC

BEGIN_DEFINE_LINEAR_AUX_FUNC(143, 0)
  LINEAR_AUX_FUNC_b_SECTION
    R_[373] = ((((-1) * R_[349]) * R_[385]) + (((-1) * R_[350]) * R_[386]));
    R_[374] = ((((-1) * R_[351]) * R_[385]) + (((-1) * R_[352]) * R_[386]));
    R_[375] = ((((-1) * R_[349]) * R_[93]) + (((-1) * R_[350]) * R_[94]));
    R_[376] = ((((-1) * R_[351]) * R_[93]) + (((-1) * R_[352]) * R_[94]));
    R_[377] = (((-0.166666666666667) * R_[129]) + ((-0.333333333333333) * R_[139]));
    R_[378] = ((0.333333333333334 * R_[129]) + ((-0.333333333333334) * R_[139]));
    b[0] = ((((((-0.333333333333333) * R_[127]) + ((-0.333333333333333) * R_[137])) + (0.666666666666667 * R_[132])) 
      + (((-1.73205080756888) * R_[377]) * R_[374])) + (((-0.5) * R_[129]) * R_[373]));
    b[1] = ((((((0.666666666666667 * R_[127]) + ((-0.333333333333334) * R_[137])) + ((-0.333333333333333) * R_[132])) 
      + R_[375]) + (((-1.73205080756888) * R_[378]) * R_[374])) + (R_[129] * R_[373]));
    b[2] = (((((-0.577350269189626) * R_[137]) + (0.577350269189626 * R_[132])) + R_[376]) + (R_[139] * R_[374]));
      
    b[3] = ((2.59807621135332 * R_[374]) + ((-1.5) * R_[373]));
  LINEAR_AUX_FUNC_A_SECTION
    A[0] = ((((-1.73205080756888) * R_[377]) * R_[98]) + (((-0.5) * R_[129]) * R_[96]));
    A[1] = ((((R_[96] * R_[105]) + (R_[95] * R_[103])) + (((-1.73205080756888) * R_[378]) * R_[98])) + (R_[129] * R_[96]));
    A[2] = (((R_[98] * R_[105]) + (R_[97] * R_[103])) + (R_[139] * R_[98]));
    A[3] = ((2.59807621135332 * R_[98]) + ((-1.5) * R_[96]));
    A[4] = ((((-1.73205080756888) * R_[377]) * R_[97]) + (((-0.5) * R_[129]) * R_[95]));
    A[5] = ((((R_[96] * R_[104]) + (R_[95] * R_[102])) + (((-1.73205080756888) * R_[378]) * R_[97])) + (R_[129] 
      * R_[95]));
    A[6] = (((R_[98] * R_[104]) + (R_[97] * R_[102])) + (R_[139] * R_[97]));
    A[7] = ((2.59807621135332 * R_[97]) + ((-1.5) * R_[95]));
    A[8] = ((((-0.166666666666667) * R_[129]) + (1.0 * R_[377])) + (0.666666666666667 * R_[134]));
    A[9] = (((0.333333333333333 * R_[129]) + (1.0 * R_[378])) + ((-0.333333333333333) * R_[134]));
    A[10] = (((-0.577350269189626) * R_[139]) + (0.577350269189626 * R_[134]));
    A[11] = (-3.0);
    A[12] = 1.0;
    A[13] = 1.11022302462516e-16;
    A[14] = (-2.22044604925031e-16);
END_DEFINE_LINEAR_AUX_FUNC


MoString u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_PARAM_PTR MoReal number_0_0, MoBoolean leftJustified_0_0, 
  MoInteger minimumLength_0_0)
{
PushRuntimeContext("__MW_Blt_Real_Str_Cvt__.real2str_opt");
{
    MoString result_0_0;

    result_0_0 = "";

    result_0_0 = real2str_opt(number_0_0, leftJustified_0_0, minimumLength_0_0);
    PopRuntimeContext();
    return result_0_0;
}}






BEGIN_MO_FUNCTION_NO_ERROR(InitCompositeLiterals)

END_MO_FUNCTION_NO_ERROR(InitCompositeLiterals)


BEGIN_MO_FUNCTION_WITH_LMP(ValidateVariables)
    BEGIN_MIN_MAX_LIMIT_CHECK
        _MIN_LIMIT_CHECK_("y_axis_mechnical_model.coupling.spring.c", R_[2], 0);
        _MIN_LIMIT_CHECK_("y_axis_mechnical_model.coupling.inertia.J", R_[4], 0);
        _MIN_LIMIT_CHECK_("y_axis_mechnical_model.coupling.inertia1.J", R_[8], 0);
        _MIN_LIMIT_CHECK_("y_axis_mechnical_model.simpleprojectscrew.ds6", R_[13], 0);
        _MIN_LIMIT_CHECK_("y_axis_mechnical_model.simpleprojectscrew.midu", R_[18], 0);
        _MIN_LIMIT_CHECK_("y_axis_mechnical_model.simpleprojectscrew.M", R_[24], 0);
        _MIN_LIMIT_CHECK_("y_axis_mechnical_model.rollingguide.M", R_[26], 0);
        _MIN_LIMIT_CHECK_("y_axis_mechnical_model.simpleprojectworktable.M", R_[30], 0);
        _MIN_LIMIT_CHECK_("y_axis_mechnical_model.simpleprojectworktable.derivative.T", R_[40], 1.e-060);
        _MIN_LIMIT_CHECK_("y_axis_mechnical_model.simpleprojectworktable.derivative1.T", R_[44], 1.e-060);
        _MIN_LIMIT_CHECK_("pmsm.PMSM.inertiaRotor.J", R_[64], 0);
        _MIN_LIMIT_CHECK_("pmsm.PMSM.p", I_[1], 1);
        _MIN_LIMIT_CHECK_("pmsm.PMSM.airGapR.p", I_[2], 1);
        _MIN_LIMIT_CHECK_("servo.nsBatt", I_[4], 1);
        _MIN_LIMIT_CHECK_("servo.npBatt", I_[5], 1);
        _MIN_LIMIT_CHECK_("servo.dcac.IConverterMax", R_[164], 0);
        _MIN_LIMIT_CHECK_("servo.svpwm1.pwm.T_PWM", R_[283], 1.e-060);
        _MIN_MAX_LIMIT_CHECK_("servo.svpwm1.pwm.pulse.width", R_[285], 1.e-060, 100);
        _MIN_LIMIT_CHECK_("servo.svpwm1.pwm.pulse.period", R_[286], 1.e-060);
        _MIN_LIMIT_CHECK_("servo.batteryideal.ns", I_[8], 1);
        _MIN_LIMIT_CHECK_("servo.batteryideal.np", I_[9], 1);
        _MIN_LIMIT_CHECK_("servo.batteryideal.VCellNominal", R_[320], 0);
        _MIN_LIMIT_CHECK_("servo.batteryideal.ICellMax", R_[321], 0);
        _MIN_LIMIT_CHECK_("servo.batteryideal.RsCell", R_[322], 0);
    END_MIN_MAX_LIMIT_CHECK
END_MO_FUNCTION_WITH_LMP(ValidateVariables)



BEGIN_DEFINE_REFERENCE(state, 12)
    1516, 1520, 1524, 1528, 1532, 1536, 1540, 1544, 1548, 1552, 
    1556, 1560, 
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(der, 12)
    1564, 1568, 1572, 1576, 1580, 1584, 1588, 1592, 1596, 1600, 
    1604, 1608, 
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(indepState, 2)
    1540, 1544, 
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(indepRealParam, 112)
    8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 
    52, 60, 64, 68, 72, 88, 96, 104, 108, 112, 
    120, 124, 132, 136, 156, 160, 164, 168, 172, 176, 
    180, 184, 188, 192, 196, 200, 204, 208, 212, 216, 
    220, 224, 228, 232, 260, 264, 268, 272, 324, 572, 
    576, 580, 584, 588, 592, 596, 600, 604, 616, 620, 
    624, 628, 632, 816, 820, 836, 840, 892, 924, 928, 
    948, 956, 968, 972, 980, 984, 1008, 1012, 1056, 1060, 
    1064, 1068, 1072, 1080, 1088, 1092, 1100, 1104, 1132, 1136, 
    1140, 1148, 1152, 1168, 1172, 1176, 1180, 1184, 1188, 1192, 
    1196, 1200, 1204, 1212, 1216, 1224, 1228, 1336, 1340, 1344, 
    1348, 1352, 
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(indepIntegerParam, 6)
    0, 12, 16, 20, 32, 36, 
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(indepBooleanParam, 6)
    44, 48, 52, 56, 64, 72, 
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(indepStringParam, 0)
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(inputReal, 3)
    1312, 1316, 1332, 
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(inputInteger, 0)
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(inputBoolean, 0)
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(inputString, 0)
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(outputReal, 3)
    1320, 1324, 1328, 
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(outputInteger, 0)
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(outputBoolean, 0)
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(outputString, 0)
END_DEFINE_REFERENCE


#define _NREAL_ 511
#define _NSTRING_ 1
#define _NBOOLEAN_ 25
#define _NINTEGER_ 50
#define _NSTATE_ 12
#define _NALGEBRAIC_ 0
#define _NDISCRETE_ 0
#define _NPRE_ 4
#define _NDELAY_ 0
#define _NSTATEEVENT_ 22
#define _NTIMEEVENT_ 4
#define _NWHEN_ 1
#define _NITERCOND_ 0
#define _NGHELPER_ 0
#define _NRECVAR_ 18
#define _NCONST_ 151
#define _NREALCONST_ 108
#define _NINTEGERCONST_ 40
#define _NBOOLEANCONST_ 2
#define _NSTRINGCONST_ 1
#define _NPARAMETER_ 196
#define _NREALPARAMETER_ 180
#define _NINTEGERPARAMETER_ 8
#define _NBOOLEANPARAMETER_ 8
#define _NSTRINGPARAMETER_ 0
#define _NEXTERNALOBJECT_ 0
#define _LDUMMYBLOCK_ 0
#define _NLDUMMYBLOCK_ 0

#include "model_block3.h"

