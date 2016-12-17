/***********************************************************
*	model.c                                                   
*                                                           
*	  用于求解器的模型描述文件，其配合init.txt, para.mat      
*	和setting.txt文件与求解器实现完整的模型求解。             
*                                                           
*	  该文件由MWorks代码生成器CodeGenerator自动生成。         
*                                                           
*	  模型名称：XY_axis.X_axis_model
*	  生成时间：2016-04-13 18:25:18
*                                                           
*	  苏州同元软控信息技术有限公司                            
*	           2005-2016
*                                                           
***********************************************************/

#include "model_block1.h"

#define model_name "XY_axis.X_axis_model"
#define model_guid "913ce505-39c3-45b0-8cf2-c862ae773a50"



#include "model_types.h"



BEGIN_MO_FUNCTION_WITH_LMP(BeforeDaeFn)
    MoAssertWithCondText((R_[237] >= R_[238]), "servo.IqLimiter.uMax >= servo.IqLimiter.uMin", string_add_m(string_add_m(
      string_add_m(string_add_m("Limiter: Limits must be consistent. However, uMax (=", u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
      MWS_MDL_ARGU_PTR R_[237], TRUE, 0)), ") < uMin (="), u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
      MWS_MDL_ARGU_PTR R_[238], TRUE, 0)), ")"), 1);
    MoAssertWithCondText((R_[230] >= R_[231]), "servo.VdLimiter.uMax >= servo.VdLimiter.uMin", string_add_m(string_add_m(
      string_add_m(string_add_m("Limiter: Limits must be consistent. However, uMax (=", u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
      MWS_MDL_ARGU_PTR R_[230], TRUE, 0)), ") < uMin (="), u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
      MWS_MDL_ARGU_PTR R_[231], TRUE, 0)), ")"), 1);
    MoAssertWithCondText((R_[227] >= R_[228]), "servo.VqLimiter.uMax >= servo.VqLimiter.uMin", string_add_m(string_add_m(
      string_add_m(string_add_m("Limiter: Limits must be consistent. However, uMax (=", u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR 
      R_[227], TRUE, 0)), ") < uMin (="), u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR 
      R_[228], TRUE, 0)), ")"), 1);
    R_[301] = ((0.01 * R_[297]) * R_[296]);
    R_[49] = (0.1 * R_[44]);
    R_[48] = ((6.35349074219143e-11 * R_[42]) * R_[49]);
END_MO_FUNCTION_WITH_LMP(BeforeDaeFn)


BEGIN_MO_FUNCTION_WITH_LMP(OdeResFn)
    _BEGIN_WHEN_BLOCK_
    _WHEN_ (MwsSample(R_[299], R_[297], 0), 0) 
        R_[300] = _time;
    _END_WHEN_
    _END_WHEN_BLOCK_
    R_[302] = (R_[298] + ( _IF_ (_LESS_TIME_(R_[299], 2+0) _OR_ _GREATER_EQUAL_TIME_((R_[300] + R_[301]), 1+0)) 
      _THEN_ 0 _ELSE_ R_[295]));
    R_[402] = (R_[303] * R_[302]);
    R_[342] = (I_[2] * R_[380]);
    R_[244] = (R_[3] + ( _IF_ _LESS_TIME_(R_[4], 3+0) _THEN_ 0 _ELSE_ (R_[0] * sin((((6.28318530717959 * R_[1]) 
      * (_time + ((-1) * R_[4]))) + R_[2])))));
    R_[245] = (R_[244] + ((-1) * R_[379]));
    R_[324] = (R_[325] * R_[245]);
    R_[239] = (R_[324] + ((-1) * R_[380]));
    R_[401] = (R_[239] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[241], "servo.vPI.T"));
    R_[235] = (R_[240] * (R_[389] + R_[239]));
    R_[236] = ( _IF_ (MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[13])) _THEN_ R_[235] _ELSE_ ( _IF_ _GREATER_(R_[235], "servo.IqLimiter.u", 
      R_[237], "servo.IqLimiter.uMax", 7+0) _THEN_ R_[237] _ELSE_ ( _IF_ _LESS_(R_[235], "servo.IqLimiter.u", R_[238], "servo.IqLimiter.uMin", 
      6+0) _THEN_ R_[238] _ELSE_ R_[235])));
    R_[233] = (R_[232] * R_[379]);
    R_[46] = ((6.35349074219143e-11 * R_[42]) * R_[10]);
    R_[393] = R_[382];
    R_[112] = (R_[385] + R_[117]);
    R_[104] = ((R_[113] * R_[112]) + (R_[114] * R_[386]));
    R_[105] = ((R_[115] * R_[112]) + (R_[116] * R_[386]));
    R_[97] = (I_[2] * (R_[379] + ((-1) * R_[79])));
    R_[106] = cos(R_[97]);
    R_[107] = ((-1) * sin(R_[97]));
    R_[98] = ((R_[106] * R_[385]) + (R_[107] * R_[386]));
    R_[102] = ((R_[106] * R_[104]) + (R_[107] * R_[105]));
    R_[108] = sin(R_[97]);
    R_[109] = cos(R_[97]);
    R_[99] = ((R_[108] * R_[385]) + (R_[109] * R_[386]));
    /* 完全撕裂的线性方程 (51, 0) */
    R_[142] = (((-0.5) * R_[98]) + (0.866025403784439 * R_[99]));
    R_[147] = ((1.0 * R_[142]) + ((-1.73205080756888) * R_[99]));
    R_[137] = (((-1) * R_[142]) + ((-1) * R_[147]));
    R_[208] = (((0.816496580927726 * R_[137]) + ((-0.408248290463863) * R_[142])) + ((-0.408248290463863) * R_[147]));
      
    R_[209] = ((0.707106781186548 * R_[142]) + ((-0.707106781186548) * R_[147]));
    R_[210] = ((R_[208] * cos(R_[233])) + (R_[209] * sin(R_[233])));
    R_[212] = (R_[234] + ((-1) * R_[210]));
    R_[399] = (R_[212] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[214], "servo.IdPI.T"));
    R_[229] = (R_[213] * (R_[387] + R_[212]));
    R_[222] = ( _IF_ (MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[12])) _THEN_ R_[229] _ELSE_ ( _IF_ _GREATER_(R_[229], "servo.VdLimiter.u", 
      R_[230], "servo.VdLimiter.uMax", 9+0) _THEN_ R_[230] _ELSE_ ( _IF_ _LESS_(R_[229], "servo.VdLimiter.u", R_[231], "servo.VdLimiter.uMin", 
      8+0) _THEN_ R_[231] _ELSE_ R_[229])));
    R_[211] = ((((-1) * R_[208]) * sin(R_[233])) + (R_[209] * cos(R_[233])));
    R_[217] = (R_[236] + ((-1) * R_[211]));
    R_[400] = (R_[217] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[219], "servo.IqPI.T"));
    R_[226] = (R_[218] * (R_[388] + R_[217]));
    R_[223] = ( _IF_ (MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[11])) _THEN_ R_[226] _ELSE_ ( _IF_ _GREATER_(R_[226], "servo.VqLimiter.u", 
      R_[227], "servo.VqLimiter.uMax", 11+0) _THEN_ R_[227] _ELSE_ ( _IF_ _LESS_(R_[226], "servo.VqLimiter.u", R_[228], "servo.VqLimiter.uMin", 
      10+0) _THEN_ R_[228] _ELSE_ R_[226])));
    R_[224] = ((R_[222] * cos(R_[233])) + (((-1) * R_[223]) * sin(R_[233])));
    R_[225] = ((R_[222] * sin(R_[233])) + (R_[223] * cos(R_[233])));
    R_[320] = (((-0.5) * R_[225]) + (0.866025403784439 * R_[224]));
    R_[321] = (((-0.5) * R_[225]) + ((-0.866025403784439) * R_[224]));
    I_[7] = ((( _IF_ _GREATER_(R_[225], "servo.rPark1.V_beta", 0, "0", 14+0) _THEN_ 1 _ELSE_ 0) + ( _IF_ _GREATER_(R_[320], "servo.svpwm1.ab_n.vb", 0, "0", 13+0) _THEN_ 2 _ELSE_ 
  0)) + ( _IF_ _GREATER_(R_[321], "servo.svpwm1.ab_n.vc", 0, "0", 12+0) _THEN_ 4 _ELSE_ 0));
    I_[6] = I_[7];
    R_[249] = (R_[248] * R_[225]);
    R_[258] = (R_[249] * R_[323]);
    R_[265] = (R_[258] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[322], "servo.svpwm1.Ux.k"));
    R_[251] = (R_[250] * R_[225]);
    R_[252] = ((R_[253] * R_[251]) + (R_[254] * R_[224]));
    R_[259] = (R_[252] * R_[323]);
    R_[260] = (R_[259] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[322], "servo.svpwm1.Ux.k"));
    R_[266] = (R_[263] * R_[260]);
    R_[255] = ((R_[256] * R_[251]) + (R_[257] * R_[224]));
    R_[261] = (R_[255] * R_[323]);
    R_[262] = (R_[261] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[322], "servo.svpwm1.Ux.k"));
    R_[267] = (R_[264] * R_[262]);
    R_[270] = ( _IF_ (I_[7] == 1) _THEN_ R_[267] _ELSE_ ( _IF_ (I_[7] == 2) _THEN_ R_[266] _ELSE_ ( _IF_ (I_[7] 
      == 3) _THEN_ ((-1) * R_[267]) _ELSE_ ( _IF_ (I_[7] == 4) _THEN_ ((-1) * R_[265]) _ELSE_ ( _IF_ (I_[7] == 5) 
      _THEN_ R_[265] _ELSE_ ((-1) * R_[266]))))));
    R_[271] = ( _IF_ (I_[7] == 1) _THEN_ R_[266] _ELSE_ ( _IF_ (I_[7] == 2) _THEN_ ((-1) * R_[265]) _ELSE_ ( _IF_ 
      (I_[7] == 3) _THEN_ R_[265] _ELSE_ ( _IF_ (I_[7] == 4) _THEN_ R_[267] _ELSE_ ( _IF_ (I_[7] == 5) _THEN_ ((
      -1) * R_[266]) _ELSE_ ((-1) * R_[267]))))));
    R_[268] = ( _IF_ _GREATER_((R_[270] + R_[271]), "servo.svpwm1.nxyz_t1t2_1.Temp1 + servo.svpwm1.nxyz_t1t2_1.Temp2", 
      R_[323], "servo.svpwm1.T.k", 15+0) _THEN_ ((R_[270] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", (R_[270] + R_[271]), "servo.svpwm1.nxyz_t1t2_1.Temp1 + servo.svpwm1.nxyz_t1t2_1.Temp2")) 
      * R_[323]) _ELSE_ R_[270]);
    R_[282] = (R_[275] * R_[268]);
    R_[269] = ( _IF_ _GREATER_((R_[270] + R_[271]), "servo.svpwm1.nxyz_t1t2_1.Temp1 + servo.svpwm1.nxyz_t1t2_1.Temp2", 
      R_[323], "servo.svpwm1.T.k", 15+0) _THEN_ ((R_[271] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", (R_[270] + R_[271]), "servo.svpwm1.nxyz_t1t2_1.Temp1 + servo.svpwm1.nxyz_t1t2_1.Temp2")) * R_[323]) _ELSE_ R_[271]);
    R_[280] = (((R_[277] * R_[268]) + (R_[278] * R_[269])) + (R_[279] * R_[323]));
    R_[272] = (R_[281] * R_[280]);
    R_[288] = R_[272];
    R_[273] = ((R_[283] * R_[282]) + (R_[284] * R_[272]));
    R_[289] = R_[273];
    R_[285] = (R_[276] * R_[269]);
    R_[274] = ((R_[286] * R_[285]) + (R_[287] * R_[273]));
    R_[290] = R_[274];
    R_[291] = 0;
    R_[292] = 0;
    R_[293] = 0;
    if ((I_[6] == 1)) {
        R_[291] = R_[289];
        R_[292] = R_[288];
        R_[293] = R_[290];
    }
    else { 
        if ((I_[6] == 2)) {
            R_[291] = R_[288];
            R_[292] = R_[290];
            R_[293] = R_[289];
        }
        else { 
            if ((I_[6] == 3)) {
                R_[291] = R_[288];
                R_[292] = R_[289];
                R_[293] = R_[290];
            }
            else { 
                if ((I_[6] == 4)) {
                    R_[291] = R_[290];
                    R_[292] = R_[289];
                    R_[293] = R_[288];
                }
                else { 
                    if ((I_[6] == 5)) {
                        R_[291] = R_[290];
                        R_[292] = R_[288];
                        R_[293] = R_[289];
                    }
                    else { 
                        R_[291] = R_[289];
                        R_[292] = R_[290];
                        R_[293] = R_[288];
                    }
                }
            }
        }
    }
    R_[319] = ((R_[309] * R_[390]) + (R_[310] * R_[293]));
    B_[19] = (_GREATER_(R_[319], "servo.svpwm1.pwm.hysteresis3.u", R_[318], "servo.svpwm1.pwm.hysteresis3.uHigh", 
      17+0) _OR_ (B_[22] _AND_ _GREATER_EQUAL_(R_[319], "servo.svpwm1.pwm.hysteresis3.u", R_[317], "servo.svpwm1.pwm.hysteresis3.uLow", 
      16+0)));
    B_[4] = _NOT_(B_[19]);
    R_[316] = ((R_[307] * R_[390]) + (R_[308] * R_[292]));
    B_[17] = (_GREATER_(R_[316], "servo.svpwm1.pwm.hysteresis2.u", R_[315], "servo.svpwm1.pwm.hysteresis2.uHigh", 19+0) _OR_ (B_[21] _AND_ _GREATER_EQUAL_(R_[316], "servo.svpwm1.pwm.hysteresis2.u", 
  R_[314], "servo.svpwm1.pwm.hysteresis2.uLow", 18+0)));
    B_[3] = _NOT_(B_[17]);
    R_[313] = ((R_[305] * R_[390]) + (R_[306] * R_[291]));
    B_[15] = (_GREATER_(R_[313], "servo.svpwm1.pwm.hysteresis1.u", R_[312], "servo.svpwm1.pwm.hysteresis1.uHigh", 
      21+0) _OR_ (B_[20] _AND_ _GREATER_EQUAL_(R_[313], "servo.svpwm1.pwm.hysteresis1.u", R_[311], "servo.svpwm1.pwm.hysteresis1.uLow", 
      20+0)));
    B_[2] = _NOT_(B_[15]);
    /* 连续离散混合方程 (107, 0) */
    _BEGIN_MIXED_EQUATIONS_BLOCK_
    _DECLARE_DOUBLE_ARRAY_(6, 36)
    _BEGIN_SOLVE_EQUATIONS_
    /* 线性方程 (107, 0) */
    BEGIN_LINEAR_BLOCK(12)
    const char* const varname[] = {
        "servo.dcac.idealDiode4.s", "servo.dcac.idealDiode1.s", "servo.dcac.idealDiode5.s", "servo.dcac.idealDiode2.s", 
          "servo.dcac.idealClosingSwitch5.s", "servo.dcac.idealClosingSwitch2.s", "servo.dcac.idealDiode6.s", 
        
          "servo.dcac.idealDiode3.s", "servo.dcac.idealClosingSwitch3.s", "servo.dcac.idealClosingSwitch6.s", "servo.dcac.idealClosingSwitch4.s", 
          "servo.dcac.idealClosingSwitch1.s", 
    0};
    x[0] = R_[203];
    x[1] = R_[195];
    x[2] = R_[201];
    x[3] = R_[207];
    x[4] = R_[186];
    x[5] = R_[192];
    x[6] = R_[205];
    x[7] = R_[198];
    x[8] = R_[183];
    x[9] = R_[190];
    x[10] = R_[188];
    x[11] = R_[180];
    EvalRecordedVariables(x, 1, 12);
    SOLVE_LINEAR(107, 0, 0);
    CheckReturnValue();
    R_[203] = x[0];
    R_[195] = x[1];
    R_[201] = x[2];
    R_[207] = x[3];
    R_[186] = x[4];
    R_[192] = x[5];
    R_[205] = x[6];
    R_[198] = x[7];
    R_[183] = x[8];
    R_[190] = x[9];
    R_[188] = x[10];
    R_[180] = x[11];
    END_LINEAR_BLOCK
    R_[178] = (R_[357] * R_[180]);
    R_[179] = (R_[358] * R_[180]);
    R_[181] = (R_[359] * R_[183]);
    R_[182] = (R_[360] * R_[183]);
    R_[184] = (R_[361] * R_[186]);
    R_[185] = (R_[362] * R_[186]);
    R_[170] = (R_[363] * R_[188]);
    R_[173] = (R_[170] + R_[178]);
    R_[171] = (((-1) * R_[181]) + R_[173]);
    R_[172] = (((-1) * R_[184]) + R_[173]);
    R_[187] = (R_[364] * R_[188]);
    R_[189] = (R_[365] * R_[190]);
    R_[191] = (R_[366] * R_[192]);
    R_[193] = (R_[170] + ((-1) * R_[173]));
    R_[194] = (R_[367] * R_[195]);
    R_[196] = (R_[171] + ((-1) * R_[173]));
    R_[197] = (R_[368] * R_[198]);
    R_[199] = (R_[172] + ((-1) * R_[173]));
    R_[200] = (R_[369] * R_[201]);
    R_[202] = (R_[370] * R_[203]);
    R_[204] = (R_[371] * R_[205]);
    R_[206] = (R_[372] * R_[207]);
    R_[335] = (((-1) * R_[173]) + R_[337]);
    R_[329] = (((((((-1) * R_[179]) + ((-1) * R_[182])) + ((-1) * R_[185])) + R_[194]) + R_[197]) + R_[200]);
    _BEGIN_EVENT_UPDATE_
    _BEGIN_DISCRETE_UPDATE_
    _UPDATE_DISCRETE_(B_[5], "servo.dcac.idealDiode1.off", _LESS_(R_[195], "servo.dcac.idealDiode1.s", 0, "0", 0+0))
    
      _UPDATE_DISCRETE_(B_[8], "servo.dcac.idealDiode4.off", _LESS_(R_[203], "servo.dcac.idealDiode4.s", 0, "0", 
      1+0))
    _UPDATE_DISCRETE_(B_[6], "servo.dcac.idealDiode3.off", _LESS_(R_[198], "servo.dcac.idealDiode3.s", 0, "0", 2+0))
    
      _UPDATE_DISCRETE_(B_[9], "servo.dcac.idealDiode6.off", _LESS_(R_[205], "servo.dcac.idealDiode6.s", 0, "0", 
      3+0))
    _UPDATE_DISCRETE_(B_[10], "servo.dcac.idealDiode2.off", _LESS_(R_[207], "servo.dcac.idealDiode2.s", 0, "0", 
      4+0))
    _UPDATE_DISCRETE_(B_[7], "servo.dcac.idealDiode5.off", _LESS_(R_[201], "servo.dcac.idealDiode5.s", 0, "0", 5+0))
    
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
    _UPDATE_REAL_(R_[203], 0);
    _UPDATE_REAL_(R_[202], 1);
    _UPDATE_REAL_(R_[178], 2);
    _UPDATE_REAL_(R_[193], 3);
    _UPDATE_REAL_(R_[195], 4);
    _UPDATE_REAL_(R_[194], 5);
    _UPDATE_REAL_(R_[199], 6);
    _UPDATE_REAL_(R_[201], 7);
    _UPDATE_REAL_(R_[200], 8);
    _UPDATE_REAL_(R_[207], 9);
    _UPDATE_REAL_(R_[206], 10);
    _UPDATE_REAL_(R_[186], 11);
    _UPDATE_REAL_(R_[184], 12);
    _UPDATE_REAL_(R_[172], 13);
    _UPDATE_REAL_(R_[192], 14);
    _UPDATE_REAL_(R_[191], 15);
    _UPDATE_REAL_(R_[185], 16);
    _UPDATE_REAL_(R_[205], 17);
    _UPDATE_REAL_(R_[204], 18);
    _UPDATE_REAL_(R_[196], 19);
    _UPDATE_REAL_(R_[198], 20);
    _UPDATE_REAL_(R_[197], 21);
    _UPDATE_REAL_(R_[183], 22);
    _UPDATE_REAL_(R_[181], 23);
    _UPDATE_REAL_(R_[171], 24);
    _UPDATE_REAL_(R_[190], 25);
    _UPDATE_REAL_(R_[189], 26);
    _UPDATE_REAL_(R_[182], 27);
    _UPDATE_REAL_(R_[329], 28);
    _UPDATE_REAL_(R_[335], 29);
    _UPDATE_REAL_(R_[173], 30);
    _UPDATE_REAL_(R_[170], 31);
    _UPDATE_REAL_(R_[188], 32);
    _UPDATE_REAL_(R_[187], 33);
    _UPDATE_REAL_(R_[179], 34);
    _UPDATE_REAL_(R_[180], 35);
    _END_REAL_UPDATE_
    _SET_REAL_(R_[203], 0);
    _SET_REAL_(R_[202], 1);
    _SET_REAL_(R_[178], 2);
    _SET_REAL_(R_[193], 3);
    _SET_REAL_(R_[195], 4);
    _SET_REAL_(R_[194], 5);
    _SET_REAL_(R_[199], 6);
    _SET_REAL_(R_[201], 7);
    _SET_REAL_(R_[200], 8);
    _SET_REAL_(R_[207], 9);
    _SET_REAL_(R_[206], 10);
    _SET_REAL_(R_[186], 11);
    _SET_REAL_(R_[184], 12);
    _SET_REAL_(R_[172], 13);
    _SET_REAL_(R_[192], 14);
    _SET_REAL_(R_[191], 15);
    _SET_REAL_(R_[185], 16);
    _SET_REAL_(R_[205], 17);
    _SET_REAL_(R_[204], 18);
    _SET_REAL_(R_[196], 19);
    _SET_REAL_(R_[198], 20);
    _SET_REAL_(R_[197], 21);
    _SET_REAL_(R_[183], 22);
    _SET_REAL_(R_[181], 23);
    _SET_REAL_(R_[171], 24);
    _SET_REAL_(R_[190], 25);
    _SET_REAL_(R_[189], 26);
    _SET_REAL_(R_[182], 27);
    _SET_REAL_(R_[329], 28);
    _SET_REAL_(R_[335], 29);
    _SET_REAL_(R_[173], 30);
    _SET_REAL_(R_[170], 31);
    _SET_REAL_(R_[188], 32);
    _SET_REAL_(R_[187], 33);
    _SET_REAL_(R_[179], 34);
    _SET_REAL_(R_[180], 35);
    _END_REAL_SET_
    _END_EVENT_UPDATE_
    _END_SOLVE_EQUATIONS_
    _DESTROY_DOUBLE_ARRAY_
    _END_MIXED_EQUATIONS_BLOCK_
    R_[128] = (R_[129] * R_[147]);
    R_[148] = (((-1) * R_[128]) + R_[172]);
    R_[126] = (R_[127] * R_[142]);
    R_[143] = (((-1) * R_[126]) + R_[171]);
    R_[124] = (R_[125] * R_[137]);
    R_[138] = (((-1) * R_[124]) + R_[170]);
    R_[103] = ((R_[108] * R_[104]) + (R_[109] * R_[105]));
    R_[96] = ((1.5 * I_[2]) * ((R_[99] * R_[102]) + (((-1) * R_[98]) * R_[103])));
    R_[349] = (((-1.0) * sin(R_[97])) * R_[342]);
    R_[350] = (((-1) * cos(R_[97])) * R_[342]);
    R_[351] = (cos(R_[97]) * R_[342]);
    R_[352] = (((-1.0) * sin(R_[97])) * R_[342]);
    /* 线性方程 (135, 0) */
    BEGIN_LINEAR_BLOCK(4)
    const char* const varname[] = {
        "pmsm.PMSM.der(idq_sr[2])", "pmsm.PMSM.der(idq_sr[1])", "pmsm.PMSM.spacePhasorS.der(i[2])", "pmsm.PMSM.spacePhasorS.v[2]", 
          
    0};
    x[0] = R_[398];
    x[1] = R_[397];
    x[2] = R_[354];
    x[3] = R_[152];
    EvalRecordedVariables(x, 13, 4);
    SOLVE_LINEAR(135, 0, 1);
    CheckReturnValue();
    R_[398] = x[0];
    R_[397] = x[1];
    R_[354] = x[2];
    R_[152] = x[3];
    END_LINEAR_BLOCK
    R_[343] = (((R_[106] * R_[397]) + (R_[107] * R_[398])) - R_[373]);
    R_[344] = (((R_[108] * R_[397]) + (R_[109] * R_[398])) - R_[374]);
    R_[347] = ((R_[113] * R_[397]) + (R_[114] * R_[398]));
    R_[348] = ((R_[115] * R_[397]) + (R_[116] * R_[398]));
    R_[345] = (((R_[106] * R_[347]) + (R_[107] * R_[348])) - R_[375]);
    R_[346] = (((R_[108] * R_[347]) + (R_[109] * R_[348])) - R_[376]);
    R_[141] = (R_[145] * R_[354]);
    R_[144] = (((-1) * R_[141]) + R_[143]);
    R_[355] = (((-1.73205080756888) * R_[344]) + (1.0 * R_[354]));
    R_[146] = (R_[150] * R_[355]);
    R_[149] = (((-1) * R_[146]) + R_[148]);
    R_[353] = (((1.5 * R_[343]) + (0.5 * R_[354])) + (0.5 * R_[355]));
    R_[136] = (R_[140] * R_[353]);
    R_[139] = (((-1) * R_[136]) + R_[138]);
    R_[83] = (R_[144] + ((-1) * R_[152]));
    R_[151] = (R_[139] + ((-1) * R_[83]));
    R_[153] = (R_[149] + ((-1) * R_[83]));
    R_[391] = R_[380];
    R_[11] = (R_[381] + ((-1) * R_[379]));
    R_[12] = (R_[13] * (R_[11] + ((-1) * R_[14])));
    /* 标量线性方程 (146, 0) */
    BEGIN_LINEAR_BLOCK(1)
    const char* const varname[] = {
        "x_axis_mechnical_model.coupling.inertia.der(w)", 
    0};
    x[0] = R_[392];
    EvalRecordedVariables(x, 17, 1);
    b[0] = (R_[96] + R_[12]);
    A[0] = (R_[75] + R_[15]);
    SolveTrivialLinear(A, "", b, "", x, varname, 146);
    CheckReturnValue();
    R_[392] = x[0];
    END_LINEAR_BLOCK
    R_[74] = ((((-1) * R_[15]) * R_[392]) + R_[12]);

    R_[8] = (R_[43] * R_[381]);
    R_[395] = ( _IF_ B_[0] _THEN_ 0 _ELSE_ ((R_[8] + ((-1) * R_[383])) * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", 
      R_[51], "x_axis_mechnical_model.simpleprojectworktable.derivative.T")));
    R_[9] = ( _IF_ B_[0] _THEN_ 0 _ELSE_ ((R_[50] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[51], "x_axis_mechnical_model.simpleprojectworktable.derivative.T")) 
      * (R_[8] + ((-1) * R_[383]))));
    R_[40] = (((R_[38] * (((9.80665 * R_[37]) + (9.80665 * R_[5])) + R_[6])) + (R_[39] * abs_m(R_[9]))) * sign_m(
      R_[9]));
    R_[47] = ((6.35349074219143e-11 * R_[42]) * R_[40]);
    R_[34] = ((R_[46] + R_[47]) + R_[48]);
    /* 标量线性方程 (153, 0) */
    BEGIN_LINEAR_BLOCK(1)
    const char* const varname[] = {
        "x_axis_mechnical_model.coupling.inertia1.der(w)", 
    0};
    x[0] = R_[394];
    EvalRecordedVariables(x, 18, 1);
    b[0] = (((0.006 + (R_[33] * R_[382])) + R_[34]) + R_[12]);
    A[0] = ((((-1) * R_[31]) + ((-1) * R_[36])) + ((-1) * R_[19]));
    SolveTrivialLinear(A, "", b, "", x, varname, 153);
    CheckReturnValue();
    R_[394] = x[0];
    END_LINEAR_BLOCK
    R_[23] = ((R_[19] * R_[394]) + R_[12]);

    R_[396] = ( _IF_ B_[1] _THEN_ 0 _ELSE_ ((R_[9] + ((-1) * R_[384])) * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", 
      R_[55], "x_axis_mechnical_model.simpleprojectworktable.derivative1.T")));
END_MO_FUNCTION_WITH_LMP(OdeResFn)


BEGIN_MO_FUNCTION_WITH_LMP(UpdateVariablesAfterDae)
    R_[72] = (R_[379] + ((-1) * R_[79]));
    if ((MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[13]))) {
        MoAssertWithCondText(((R_[235] >= (R_[238] + ((-0.01) * abs_m(R_[238])))) _AND_ (R_[235] <= (R_[237] + (
          0.01 * abs_m(R_[237]))))), "servo.IqLimiter.u >= servo.IqLimiter.uMin + (-0.01) * abs(servo.IqLimiter.uMin) and servo.IqLimiter.u <= servo.IqLimiter.uMax + 0.01 * abs(servo.IqLimiter.uMax)", 
          string_add_m(string_add_m(string_add_m(string_add_m(string_add_m("Limiter: During initialization the limits have been ignored.\nHowever, the result is that the input u is not within the required limits:\n  u = ", 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[235], TRUE, 0)), ", uMin = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[238], TRUE, 0)), ", uMax = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[237], TRUE, 0)), 1);
    }
    else { 
    }
    R_[73] = (9.54929658551372 * R_[380]);
    R_[100] = (R_[106] * R_[117]);
    R_[101] = (R_[108] * R_[117]);
    if ((MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[12]))) {
        MoAssertWithCondText(((R_[229] >= (R_[231] + ((-0.01) * abs_m(R_[231])))) _AND_ (R_[229] <= (R_[230] + (
          0.01 * abs_m(R_[230]))))), "servo.VdLimiter.u >= servo.VdLimiter.uMin + (-0.01) * abs(servo.VdLimiter.uMin) and servo.VdLimiter.u <= servo.VdLimiter.uMax + 0.01 * abs(servo.VdLimiter.uMax)", 
          string_add_m(string_add_m(string_add_m(string_add_m(string_add_m("Limiter: During initialization the limits have been ignored.\nHowever, the result is that the input u is not within the required limits:\n  u = ", 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[229], TRUE, 0)), ", uMin = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[231], TRUE, 0)), ", uMax = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[230], TRUE, 0)), 1);
    }
    else { 
    }
    if ((MoInitial(MWS_MDL_ARGU_PTR1) _AND_ _NOT_(B_[11]))) {
        MoAssertWithCondText(((R_[226] >= (R_[228] + ((-0.01) * abs_m(R_[228])))) _AND_ (R_[226] <= (R_[227] + (
          0.01 * abs_m(R_[227]))))), "servo.VqLimiter.u >= servo.VqLimiter.uMin + (-0.01) * abs(servo.VqLimiter.uMin) and servo.VqLimiter.u <= servo.VqLimiter.uMax + 0.01 * abs(servo.VqLimiter.uMax)", 
          string_add_m(string_add_m(string_add_m(string_add_m(string_add_m("Limiter: During initialization the limits have been ignored.\nHowever, the result is that the input u is not within the required limits:\n  u = ", 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[226], TRUE, 0)), ", uMin = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[228], TRUE, 0)), ", uMax = "), 
          u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[227], TRUE, 0)), 1);
    }
    else { 
    }
    R_[174] = (((((((-1) * R_[191]) + ((-1) * R_[187])) + ((-1) * R_[189])) + R_[206]) + R_[202]) + R_[204]);
    R_[177] = (((R_[170] * ((-1) * R_[137])) + (R_[171] * ((-1) * R_[142]))) + (R_[172] * ((-1) * R_[147])));
    R_[330] = (R_[173] * R_[329]);
    R_[327] = (R_[329] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", I_[9], "servo.batteryideal.np"));
    MoAssertWithCondText((abs_m(R_[329]) <= (R_[332] * I_[9])), "abs(servo.batteryideal.iPackage) <= servo.batteryideal.ICellMax * servo.batteryideal.np", 
      string_add_m(string_add_m("Battery current exceeded maximum admissible current (=", u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(
      MWS_MDL_ARGU_PTR R_[332], TRUE, 0)), "A)"), 1);
    R_[176] = (((-1) * R_[329]) * R_[173]);
    MoAssertWithCondText((((-1) * R_[329]) <= R_[175]), "(-1) * servo.batteryideal.iPackage <= servo.dcac.IConverterMax", 
      string_add_m(string_add_m("Converter current exceeded maximum admissible current of the supply port (IConverterMax = ", 
      u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[175], TRUE, 0)), "A)"), 1);
    R_[338] = (R_[329] + ((-1) * R_[174]));
    MoAssertWithCondText((R_[173] >= 0), "servo.dcac.pSupply.v >= 0", string_add_m(string_add_m("The voltage of the supply port must be greater than zero! (vSupply = ", 
      u_0u_0MWu_0Bltu_0Realu_0Stru_0Cvtu_0u_0_real2stru_0opt(MWS_MDL_ARGU_PTR R_[173], TRUE, 0)), "V)"), 1);
    R_[326] = (R_[173] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", I_[8], "servo.batteryideal.ns"));
    R_[328] = (R_[326] * R_[327]);
    R_[120] = (R_[172] + ((-1) * R_[148]));
    R_[94] = ((-0.333333333333333) * MoBuiltinRealSum(MWS_MDL_ARGU_PTR MoBuiltinRealArray(MWS_MDL_ARGU_PTR 3, (MoReal)(
      R_[137]), (MoReal)(R_[142]), (MoReal)(R_[147]))));
    R_[119] = (R_[171] + ((-1) * R_[143]));
    R_[118] = (R_[170] + ((-1) * R_[138]));
    R_[132] = (R_[148] + ((-1) * R_[149]));
    R_[339] = ((((-0.333333333333333) * R_[353]) + ((-0.333333333333333) * R_[354])) + ((-0.333333333333333) * R_[355]));
      
    R_[131] = (R_[143] + ((-1) * R_[144]));
    R_[130] = (R_[138] + ((-1) * R_[139]));
    R_[80] = (R_[170] + ((-1) * R_[83]));
    R_[81] = (R_[171] + ((-1) * R_[83]));
    R_[82] = (R_[172] + ((-1) * R_[83]));
    R_[7] = ( _IF_ B_[1] _THEN_ 0 _ELSE_ ((R_[54] * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[55], "x_axis_mechnical_model.simpleprojectworktable.derivative1.T")) 
      * (R_[9] + ((-1) * R_[384]))));
END_MO_FUNCTION_WITH_LMP(UpdateVariablesAfterDae)


BEGIN_MO_FUNCTION_WITH_LMP(Dummy)
END_MO_FUNCTION_WITH_LMP(Dummy)


BEGIN_MO_FUNCTION_WITH_LMP(ReinitFn)
END_MO_FUNCTION_WITH_LMP(ReinitFn)


BEGIN_MO_FUNCTION_WITH_LMP(LoadDefaultStartValues)
    BEGIN_LOAD_CONST_DEFAULT_START_VALUE
        CR_[0] = 3.141592653589793;
        CI_[0] = 1;
        CI_[1] = 3;
        CI_[2] = 1;
        CI_[3] = 3;
        CR_[1] = 210000000000;
        CR_[2] = 82000000000;
        CR_[3] = 3.e-003;
        CR_[4] = 3.e-003;
        CR_[5] = 2505000000;
        CI_[4] = 1;
        CI_[5] = 1;
        CR_[6] = 9000;
        CR_[7] = 3.e-003;
        CR_[8] = 9000;
        CR_[9] = 3.e-003;
        CI_[6] = 1;
        CI_[7] = 3;
        CR_[11] = 3.141592653589793;
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
        CR_[16] = 3.141592653589793;
        CR_[17] = 0.6666666666666666;
        CR_[18] = -0.3333333333333332;
        CR_[19] = -0.3333333333333336;
        CR_[21] = 0.5773502691896257;
        CR_[22] = -0.5773502691896255;
        CR_[23] = 1;
        CR_[25] = -0.4999999999999998;
        CR_[26] = 0.8660254037844387;
        CR_[27] = -0.5000000000000004;
        CR_[28] = -0.8660254037844384;
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
        CR_[35] = 1.e-005;
        CR_[36] = 1.e-005;
        CR_[37] = 1.e-005;
        CR_[38] = 1.e-005;
        CR_[40] = 1.e-005;
        CR_[41] = 1.e-005;
        CR_[42] = 1;
        CR_[43] = 1;
        CR_[44] = 1.e-005;
        CR_[45] = 1.e-005;
        CR_[46] = 1;
        CR_[47] = 1;
        CR_[48] = 1.e-005;
        CR_[49] = 1.e-005;
        CR_[50] = 1;
        CR_[51] = 1;
        CR_[53] = 1.e-005;
        CR_[54] = 1.e-005;
        CR_[55] = 1;
        CR_[56] = 1;
        CR_[58] = 1.e-005;
        CR_[59] = 1.e-005;
        CR_[60] = 1;
        CR_[61] = 1;
        CR_[63] = 1.e-005;
        CR_[64] = 1.e-005;
        CR_[65] = 1;
        CR_[66] = 1;
        CR_[67] = 1.e-005;
        CR_[68] = 1.e-005;
        CR_[70] = 1;
        CR_[71] = 1;
        CR_[72] = 1.e-005;
        CR_[73] = 1.e-005;
        CR_[75] = 1;
        CR_[76] = 1;
        CR_[77] = 1.e-005;
        CR_[78] = 1.e-005;
        CR_[80] = 1;
        CR_[81] = 1;
        CR_[83] = 1.e-005;
        CR_[84] = 1.e-005;
        CR_[86] = 1;
        CR_[87] = 1;
        CR_[89] = 1.e-005;
        CR_[90] = 1.e-005;
        CR_[92] = 1;
        CR_[93] = 1;
        CR_[95] = 1.e-005;
        CR_[96] = 1.e-005;
        CR_[98] = 1;
        CR_[99] = 1;
        CI_[32] = 1;
        CI_[33] = 1;
        CI_[34] = 1;
        CI_[35] = 3;
        CI_[36] = 2;
        CI_[37] = 2;
        CI_[38] = 2;
        CI_[39] = 3;
    END_LOAD_CONST_DEFAULT_START_VALUE
    R_[0] = 1;
    R_[1] = 1;
    R_[13] = 96389.8;
    R_[15] = 4.e-005;
    R_[19] = 4.e-005;
    R_[24] = 4.e-002;
    R_[26] = 0.8;
    R_[27] = 2.e-002;
    R_[28] = 0.766;
    R_[29] = 7850;
    R_[33] = 9.e-002;
    R_[35] = 169.3658;
    R_[37] = 100;
    R_[38] = 20;
    R_[39] = 56.6223;
    R_[41] = 100;
    R_[42] = 2.e-002;
    R_[44] = 60313;
    R_[45] = 210000000000;
    R_[50] = 1;
    R_[51] = 1.e-002;
    R_[54] = 1;
    R_[55] = 1.e-002;
    I_[0] = 1;
    R_[58] = 110;
    R_[59] = 6;
    R_[60] = 50;
    R_[61] = 5.361;
    R_[62] = 3000;
    R_[63] = 5;
    R_[64] = 2.24e-003;
    R_[65] = 4.085e-003;
    R_[66] = 0.3567;
    R_[67] = 1.06e-004;
    R_[68] = 2.316e-003;
    R_[69] = 2.316e-003;
    R_[92] = 4.e-002;
    R_[154] = 220;
    R_[155] = 1.e-004;
    I_[3] = 1;
    R_[156] = 311;
    R_[157] = 800;
    R_[158] = 6.e-003;
    I_[4] = 1;
    I_[5] = 1;
    R_[159] = 400;
    R_[160] = 60;
    R_[161] = 0.5;
    R_[162] = 1.5e-002;
    R_[165] = 2.7432;
    R_[166] = 4.085e-003;
    R_[167] = 200;
    R_[168] = 200;
    R_[169] = 1000;
    B_[5] = 1;
    B_[6] = 1;
    B_[7] = 1;
    B_[8] = 1;
    B_[9] = 1;
    B_[10] = 1;
    B_[11] = 1;
    B_[12] = 1;
    B_[13] = 1;
    R_[248] = 1.732050807568877;
    R_[250] = 0.5773502691896257;
    R_[253] = 1;
    R_[254] = 1;
    R_[256] = 1;
    R_[257] = -1;
    R_[263] = 1.5;
    R_[264] = 1.5;
    R_[275] = 0.5;
    R_[276] = 0.5;
    R_[277] = -1;
    R_[278] = -1;
    R_[279] = 1;
    R_[281] = 0.25;
    R_[283] = 1;
    R_[284] = 1;
    R_[286] = 1;
    R_[287] = 1;
    R_[294] = 1.e-004;
    R_[295] = 2;
    R_[296] = 50;
    R_[298] = -1;
    R_[303] = 1;
    R_[305] = 1;
    R_[306] = -1;
    R_[307] = 1;
    R_[308] = -1;
    R_[309] = 1;
    R_[310] = -1;
    R_[311] = 1.e-015;
    R_[312] = 1.e-015;
    R_[314] = 1.e-015;
    R_[315] = 1.e-015;
    R_[317] = 1.e-015;
    R_[318] = 1.e-015;
    I_[8] = 1;
    I_[9] = 1;
END_MO_FUNCTION_WITH_LMP(LoadDefaultStartValues)


BEGIN_MO_FUNCTION_WITH_LMP(LoadVariableStartValues)
END_MO_FUNCTION_WITH_LMP(LoadVariableStartValues)


BEGIN_MO_FUNCTION_WITH_LMP(LoadGivenInitialValues)
END_MO_FUNCTION_WITH_LMP(LoadGivenInitialValues)


BEGIN_MO_FUNCTION_WITH_LMP(SolveDependentParameters)
    string_assign(CS_[0], "Y");
    string_assign(CS_[0], "Y");
    R_[297] = R_[294];
    R_[230] = R_[169];
    R_[231] = ((-1) * R_[169]);
    R_[227] = R_[168];
    R_[228] = ((-1) * R_[168]);
    R_[237] = R_[167];
    R_[238] = ((-1) * R_[167]);
    R_[164] = R_[166];
    R_[219] = R_[164];
    R_[214] = R_[166];
    R_[163] = R_[165];
    R_[218] = R_[163];
    R_[213] = R_[165];
    R_[241] = R_[162];
    R_[240] = R_[161];
    R_[325] = R_[160];
    R_[175] = R_[159];
    R_[333] = R_[158];
    R_[334] = ((R_[333] * I_[8]) * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", I_[9], "servo.batteryideal.np"));
    R_[336] = R_[334];
    R_[332] = R_[157];
    R_[331] = R_[156];
    R_[337] = (I_[8] * R_[331]);
    R_[232] = I_[3];
    R_[247] = R_[155];
    R_[323] = R_[247];
    R_[246] = R_[154];
    R_[322] = R_[246];
    R_[93] = R_[92];
    R_[89] = R_[69];
    R_[111] = R_[89];
    R_[88] = R_[68];
    R_[110] = R_[88];
    R_[113] = R_[110];
    R_[114] = 0;
    R_[115] = 0;
    R_[116] = R_[111];
    R_[86] = R_[67];
    R_[133] = R_[86];
    R_[134] = R_[86];
    R_[135] = R_[86];
    R_[140] = R_[133];
    R_[145] = R_[134];
    R_[150] = R_[135];
    R_[85] = R_[66];
    R_[121] = R_[85];
    R_[122] = R_[85];
    R_[123] = R_[85];
    R_[125] = R_[121];
    R_[127] = R_[122];
    R_[129] = R_[123];
    R_[70] = R_[61];
    R_[71] = R_[70];
    R_[75] = R_[70];
    R_[84] = R_[60];
    R_[90] = (0.05 * (0.159154943091895 * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", R_[84], "pmsm.PMSM.fNominal")));
    R_[91] = R_[90];
    R_[87] = R_[58];
    R_[95] = ((1.4142135623731 * R_[87]) * MwsDivide(MWS_MDL_ARGU_PTR 1.0, "1.0", ((6.28318530717959 * R_[88]) * 
      R_[84]), "6.28318530717959 * pmsm.PMSM.Lmd * pmsm.PMSM.fNominal"));
    R_[117] = R_[95];
    I_[1] = I_[0];
    I_[2] = I_[1];
    B_[1] = (abs_m(R_[54]) < 1e-15);
    B_[0] = (abs_m(R_[50]) < 1e-15);
    R_[43] = (0.159154943091895 * R_[42]);
    R_[32] = (0.159154943091895 * R_[27]);
    R_[36] = (((0.0253302959105844 * R_[35]) * R_[27]) * R_[27]);
    R_[25] = (0.785398163397448 * (R_[24] * R_[24]));
    R_[30] = (((0.098174770424681 * R_[29]) * R_[28]) * MwsPow(MWS_MDL_ARGU_PTR R_[24], "x_axis_mechnical_model.simpleprojectscrew.ds6", 
      4, "4"));
    R_[31] = R_[30];
    R_[390] = R_[304];
END_MO_FUNCTION_WITH_LMP(SolveDependentParameters)


BEGIN_MO_FUNCTION_WITH_LMP(SolveInitialBlocks)
    R_[384] = R_[56];
    R_[383] = R_[52];
    R_[382] = R_[21];
    R_[381] = R_[20];
    R_[380] = R_[17];
    R_[379] = R_[16];
    R_[389] = R_[242];
    R_[356] = R_[299];
    R_[300] = R_[356];
    R_[390] = R_[304];
    B_[22] = B_[18];
    B_[21] = B_[16];
    B_[20] = B_[14];
    R_[388] = R_[220];
    R_[387] = R_[215];
END_MO_FUNCTION_WITH_LMP(SolveInitialBlocks)


BEGIN_MO_FUNCTION_NO_ERROR(SavePreVariables)
    _UPDATE_REAL_PRE_(R_[300], "servo.svpwm1.pwm.pulse.T0", R_[356], 1);
    _UPDATE_PRE_(B_[15], "servo.svpwm1.pwm.hysteresis1.y", B_[20], 1);
    _UPDATE_PRE_(B_[17], "servo.svpwm1.pwm.hysteresis2.y", B_[21], 1);
    _UPDATE_PRE_(B_[19], "servo.svpwm1.pwm.hysteresis3.y", B_[22], 1);
END_MO_FUNCTION_NO_ERROR(SavePreVariables)


BEGIN_MO_FUNCTION_NO_ERROR(SaveEvalutedVariables)
    RecordVariable(_time, 0);
    RecordVariable(R_[203], 1);
    RecordVariable(R_[195], 2);
    RecordVariable(R_[201], 3);
    RecordVariable(R_[207], 4);
    RecordVariable(R_[186], 5);
    RecordVariable(R_[192], 6);
    RecordVariable(R_[205], 7);
    RecordVariable(R_[198], 8);
    RecordVariable(R_[183], 9);
    RecordVariable(R_[190], 10);
    RecordVariable(R_[188], 11);
    RecordVariable(R_[180], 12);
    RecordVariable(R_[398], 13);
    RecordVariable(R_[397], 14);
    RecordVariable(R_[354], 15);
    RecordVariable(R_[152], 16);
    RecordVariable(R_[392], 17);
    RecordVariable(R_[394], 18);
END_MO_FUNCTION_NO_ERROR(SaveEvalutedVariables)



BEGIN_DEFINE_LINEAR_AUX_FUNC(107, 0)
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
    b[8] = R_[337];
    b[9] = ((-1) * R_[137]);
    b[10] = ((-1) * R_[142]);
    b[11] = ((-1) * R_[147]);
  LINEAR_AUX_FUNC_A_SECTION
    A[5] = ( _IF_ B_[8] _THEN_ (-1) _ELSE_ (-1e-5));
    A[9] = ((-1) * R_[370]);
    A[14] = ( _IF_ B_[5] _THEN_ (-1) _ELSE_ (-1e-5));
    A[20] = (((-1) * R_[336]) * R_[367]);
    A[21] = R_[367];
    A[28] = ( _IF_ B_[7] _THEN_ (-1) _ELSE_ (-1e-5));
    A[32] = (((-1) * R_[336]) * R_[369]);
    A[35] = R_[369];
    A[43] = ( _IF_ B_[10] _THEN_ (-1) _ELSE_ (-1e-5));
    A[47] = ((-1) * R_[372]);
    A[49] = ((-1) * R_[361]);
    A[52] = ((-1) * R_[361]);
    A[55] = R_[361];
    A[56] = (R_[336] * R_[362]);
    A[59] = ((-1) * R_[362]);
    A[61] = ( _IF_ B_[4] _THEN_ (-1e-5) _ELSE_ (-1));
    A[71] = R_[366];
    A[78] = ( _IF_ B_[9] _THEN_ (-1) _ELSE_ (-1e-5));
    A[82] = ((-1) * R_[371]);
    A[87] = ( _IF_ B_[6] _THEN_ (-1) _ELSE_ (-1e-5));
    A[92] = (((-1) * R_[336]) * R_[368]);
    A[94] = R_[368];
    A[96] = ((-1) * R_[359]);
    A[99] = ((-1) * R_[359]);
    A[102] = R_[359];
    A[104] = (R_[336] * R_[360]);
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
    A[140] = ((R_[336] * R_[358]) + R_[357]);
    A[141] = ((-1) * R_[358]);
END_DEFINE_LINEAR_AUX_FUNC

BEGIN_DEFINE_LINEAR_AUX_FUNC(135, 0)
  LINEAR_AUX_FUNC_b_SECTION
    R_[373] = ((((-1) * R_[349]) * R_[385]) + (((-1) * R_[350]) * R_[386]));
    R_[374] = ((((-1) * R_[351]) * R_[385]) + (((-1) * R_[352]) * R_[386]));
    R_[375] = ((((-1) * R_[349]) * R_[104]) + (((-1) * R_[350]) * R_[105]));
    R_[376] = ((((-1) * R_[351]) * R_[104]) + (((-1) * R_[352]) * R_[105]));
    R_[377] = (((-0.166666666666667) * R_[140]) + ((-0.333333333333333) * R_[150]));
    R_[378] = ((0.333333333333334 * R_[140]) + ((-0.333333333333334) * R_[150]));
    b[0] = ((((((-0.333333333333333) * R_[138]) + ((-0.333333333333333) * R_[148])) + (0.666666666666667 * R_[143])) 
      + (((-1.73205080756888) * R_[377]) * R_[374])) + (((-0.5) * R_[140]) * R_[373]));
    b[1] = ((((((0.666666666666667 * R_[138]) + ((-0.333333333333334) * R_[148])) + ((-0.333333333333333) * R_[143])) 
      + R_[375]) + (((-1.73205080756888) * R_[378]) * R_[374])) + (R_[140] * R_[373]));
    b[2] = (((((-0.577350269189626) * R_[148]) + (0.577350269189626 * R_[143])) + R_[376]) + (R_[150] * R_[374]));
      
    b[3] = ((2.59807621135332 * R_[374]) + ((-1.5) * R_[373]));
  LINEAR_AUX_FUNC_A_SECTION
    A[0] = ((((-1.73205080756888) * R_[377]) * R_[109]) + (((-0.5) * R_[140]) * R_[107]));
    A[1] = ((((R_[107] * R_[116]) + (R_[106] * R_[114])) + (((-1.73205080756888) * R_[378]) * R_[109])) + (R_[140] * R_[107]));
    A[2] = (((R_[109] * R_[116]) + (R_[108] * R_[114])) + (R_[150] * R_[109]));
    A[3] = ((2.59807621135332 * R_[109]) + ((-1.5) * R_[107]));
    A[4] = ((((-1.73205080756888) * R_[377]) * R_[108]) + (((-0.5) * R_[140]) * R_[106]));
    A[5] = ((((R_[107] * R_[115]) + (R_[106] * R_[113])) + (((-1.73205080756888) * R_[378]) * R_[108])) + (R_[140] 
      * R_[106]));
    A[6] = (((R_[109] * R_[115]) + (R_[108] * R_[113])) + (R_[150] * R_[108]));
    A[7] = ((2.59807621135332 * R_[108]) + ((-1.5) * R_[106]));
    A[8] = ((((-0.166666666666667) * R_[140]) + (1.0 * R_[377])) + (0.666666666666667 * R_[145]));
    A[9] = (((0.333333333333333 * R_[140]) + (1.0 * R_[378])) + ((-0.333333333333333) * R_[145]));
    A[10] = (((-0.577350269189626) * R_[150]) + (0.577350269189626 * R_[145]));
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
        _MIN_LIMIT_CHECK_("x_axis_mechnical_model.coupling.spring.c", R_[13], 0);
        _MIN_LIMIT_CHECK_("x_axis_mechnical_model.coupling.inertia.J", R_[15], 0);
        _MIN_LIMIT_CHECK_("x_axis_mechnical_model.coupling.inertia1.J", R_[19], 0);
        _MIN_LIMIT_CHECK_("x_axis_mechnical_model.simpleprojectscrew.ds6", R_[24], 0);
        _MIN_LIMIT_CHECK_("x_axis_mechnical_model.simpleprojectscrew.midu", R_[29], 0);
        _MIN_LIMIT_CHECK_("x_axis_mechnical_model.simpleprojectscrew.M", R_[35], 0);
        _MIN_LIMIT_CHECK_("x_axis_mechnical_model.rollingguide.M", R_[37], 0);
        _MIN_LIMIT_CHECK_("x_axis_mechnical_model.simpleprojectworktable.M", R_[41], 0);
        _MIN_LIMIT_CHECK_("x_axis_mechnical_model.simpleprojectworktable.derivative.T", R_[51], 1.e-060);
        _MIN_LIMIT_CHECK_("x_axis_mechnical_model.simpleprojectworktable.derivative1.T", R_[55], 1.e-060);
        _MIN_LIMIT_CHECK_("pmsm.PMSM.inertiaRotor.J", R_[75], 0);
        _MIN_LIMIT_CHECK_("pmsm.PMSM.p", I_[1], 1);
        _MIN_LIMIT_CHECK_("pmsm.PMSM.airGapR.p", I_[2], 1);
        _MIN_LIMIT_CHECK_("servo.nsBatt", I_[4], 1);
        _MIN_LIMIT_CHECK_("servo.npBatt", I_[5], 1);
        _MIN_LIMIT_CHECK_("servo.dcac.IConverterMax", R_[175], 0);
        _MIN_LIMIT_CHECK_("servo.svpwm1.pwm.T_PWM", R_[294], 1.e-060);
        _MIN_MAX_LIMIT_CHECK_("servo.svpwm1.pwm.pulse.width", R_[296], 1.e-060, 100);
        _MIN_LIMIT_CHECK_("servo.svpwm1.pwm.pulse.period", R_[297], 1.e-060);
        _MIN_LIMIT_CHECK_("servo.batteryideal.ns", I_[8], 1);
        _MIN_LIMIT_CHECK_("servo.batteryideal.np", I_[9], 1);
        _MIN_LIMIT_CHECK_("servo.batteryideal.VCellNominal", R_[331], 0);
        _MIN_LIMIT_CHECK_("servo.batteryideal.ICellMax", R_[332], 0);
        _MIN_LIMIT_CHECK_("servo.batteryideal.RsCell", R_[333], 0);
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
    0, 4, 8, 12, 16, 52, 56, 60, 64, 68, 
    72, 76, 80, 84, 88, 96, 104, 108, 112, 116, 
    132, 140, 148, 152, 156, 164, 168, 176, 180, 200, 
    204, 208, 212, 216, 220, 224, 228, 232, 236, 240, 
    244, 248, 252, 256, 260, 264, 268, 272, 276, 304, 
    308, 312, 316, 368, 616, 620, 624, 628, 632, 636, 
    640, 644, 648, 660, 664, 668, 672, 676, 860, 864, 
    880, 884, 936, 968, 972, 992, 1000, 1012, 1016, 1024, 
    1028, 1052, 1056, 1100, 1104, 1108, 1112, 1116, 1124, 1132, 
    1136, 1144, 1148, 1176, 1180, 1184, 1192, 1196, 1212, 1216, 
    1220, 1224, 1228, 1232, 1236, 1240, 1244, 1248, 1256, 1260, 
    1268, 1272, 
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
    20, 24, 40, 
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(inputInteger, 0)
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(inputBoolean, 0)
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(inputString, 0)
END_DEFINE_REFERENCE

BEGIN_DEFINE_REFERENCE(outputReal, 3)
    28, 32, 36, 
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

