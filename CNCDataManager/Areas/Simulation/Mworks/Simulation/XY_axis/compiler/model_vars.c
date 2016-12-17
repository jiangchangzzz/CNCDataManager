#include "model_desc_types.h"
#include "varinfo.h"
BEGIN_DECLARE_ALL_VARIABLE
PRE_DECLARE_VARIABLE(0)
BEGIN_DECLARE_VARIABLE(0)
DECLARE_VARIABLE("sine.amplitude", "", "", 1, 0, 0, 0, 0, 0, 0, TRUE)/*R_[0]*/
DECLARE_VARIABLE("sine.freqHz", "", "", 1, 0, 0, 0, 0, 1, 4, TRUE)/*R_[1]*/
DECLARE_VARIABLE("sine.phase", "", "", 0, 0, 0, 0, 0, 2, 8, TRUE)/*R_[2]*/
DECLARE_VARIABLE("sine.offset", "", "", 0, 0, 0, 0, 0, 3, 12, TRUE)/*R_[3]*/
DECLARE_VARIABLE("sine.startTime", "", "", 0, 0, 0, 0, 0, 4, 16, TRUE)/*R_[4]*/
DECLARE_VARIABLE("sine.pi", "", "", 3.141592653589793, 0, 0, 0, 0, 5, 1, TRUE)/*CR_[0]*/
DECLARE_VARIABLE("m", "", "", 0, 0, 0, 512, 0, 6, 20, TRUE)/*R_[5]*/
DECLARE_VARIABLE("Fz", "", "", 0, 0, 0, 512, 0, 7, 24, TRUE)/*R_[6]*/
DECLARE_VARIABLE("a", "", "", 0, 0, 0, 512, 0, 8, 28, TRUE)/*R_[7]*/
DECLARE_VARIABLE("X", "", "", 0, 0, 0, 512, 0, 9, 32, TRUE)/*R_[8]*/
DECLARE_VARIABLE("v", "", "", 0, 0, 0, 512, 0, 10, 36, TRUE)/*R_[9]*/
DECLARE_VARIABLE("Fx", "", "", 0, 0, 0, 512, 0, 11, 40, TRUE)/*R_[10]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.spring.phi_rel", "", "", 0, 0, 0, 512, 0, 12, 44, TRUE)/*R_[11]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.spring.tau", "", "", 
  0, 0, 0, 512, 0, 13, 48, TRUE)/*R_[12]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.spring.c", "", "", 96389.8, 0, 0, 0, 0, 14, 52, TRUE)/*R_[13]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.spring.phi_rel0", "", "", 
  0, 0, 0, 0, 0, 15, 56, TRUE)/*R_[14]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.J", "", "", 4.e-005, 0, 0, 0, 0, 16, 60, TRUE)/*R_[15]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.initType", "", "", 
  1, 9, 1, 64, 0, 0, 1, TRUE)/*CI_[0]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.phi_start", "", "", 0, 0, 0, 0, 0, 17, 64, TRUE)/*R_[16]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.w_start", "", "", 
  0, 0, 0, 0, 0, 18, 68, TRUE)/*R_[17]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.a_start", "", "", 0, 0, 0, 0, 0, 19, 72, TRUE)/*R_[18]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.stateSelection", "", "", 3, 5, 1, 64, 0, 1, 5, TRUE)/*CI_[1]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.J", "", "", 
  4.e-005, 0, 0, 0, 0, 20, 76, TRUE)/*R_[19]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.initType", "", "", 1, 9, 1, 64, 0, 2, 9, TRUE)/*CI_[2]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.phi_start", "", "", 
  0, 0, 0, 0, 0, 21, 80, TRUE)/*R_[20]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.w_start", "", "", 0, 0, 0, 0, 0, 22, 84, TRUE)/*R_[21]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.a_start", "", "", 
  0, 0, 0, 0, 0, 23, 88, TRUE)/*R_[22]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.stateSelection", "", "", 3, 5, 1, 64, 0, 3, 13, TRUE)/*CI_[3]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.flange_b.tau", "", "", 
  0, 0, 0, 512, 0, 24, 92, TRUE)/*R_[23]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.ds6", "", "", 4.e-002, 0, 0, 0, 0, 25, 96, TRUE)/*R_[24]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.As", "", "", 
  0, 0, 0, 0, 0, 26, 100, TRUE)/*R_[25]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.E", "", "", 210000000000, 0, 0, 0, 0, 27, 5, TRUE)/*CR_[1]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.Lsg", "", "", 
  0.8, 0, 0, 0, 0, 28, 104, TRUE)/*R_[26]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.h", "", "", 2.e-002, 0, 0, 0, 0, 29, 108, TRUE)/*R_[27]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.L6", "", "", 
  0.766, 0, 0, 0, 0, 30, 112, TRUE)/*R_[28]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.midu", "", "", 7850, 0, 0, 0, 0, 31, 116, TRUE)/*R_[29]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.J6", "", "", 
  0, 0, 0, 0, 0, 32, 120, TRUE)/*R_[30]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.J0", "", "", 0, 0, 0, 0, 0, 33, 124, TRUE)/*R_[31]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.G", "", "", 82000000000, 0, 0, 0, 0, 34, 9, TRUE)/*CR_[2]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.i", "", "", 
  0, 0, 0, 0, 0, 35, 128, TRUE)/*R_[32]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.Bta1", "", "", 9.e-002, 0, 0, 0, 0, 36, 132, TRUE)/*R_[33]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.Ts", "", "", 
  0, 0, 0, 512, 0, 37, 136, TRUE)/*R_[34]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.M", "", "", 169.3658, 0, 0, 0, 0, 38, 140, TRUE)/*R_[35]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.Jw", "", "", 
  0, 0, 0, 0, 0, 39, 144, TRUE)/*R_[36]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.Tf1", "", "", 3.e-003, 0, 0, 0, 0, 40, 13, TRUE)/*CR_[3]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.Tf2", "", "", 
  3.e-003, 0, 0, 0, 0, 41, 17, TRUE)/*CR_[4]*/
DECLARE_VARIABLE("x_axis_mechnical_model.rollingguide.M", "", "", 100, 0, 0, 0, 0, 42, 148, TRUE)/*R_[37]*/
DECLARE_VARIABLE("x_axis_mechnical_model.rollingguide.ugf", "", "", 20, 0, 0, 0, 0, 43, 152, TRUE)/*R_[38]*/
DECLARE_VARIABLE("x_axis_mechnical_model.rollingguide.B", "", "", 56.6223, 0, 0, 0, 0, 44, 156, TRUE)/*R_[39]*/
DECLARE_VARIABLE("x_axis_mechnical_model.rollingguide.Ff", "", "", 
  0, 0, 0, 512, 0, 45, 160, TRUE)/*R_[40]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.M", "", "", 100, 0, 0, 0, 0, 46, 164, TRUE)/*R_[41]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.h", "", "", 
  2.e-002, 0, 0, 0, 0, 47, 168, TRUE)/*R_[42]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.i", "", "", 0, 0, 0, 0, 0, 48, 172, TRUE)/*R_[43]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.Cn0", "", "", 
  60313, 0, 0, 0, 0, 49, 176, TRUE)/*R_[44]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.Kn0", "", "", 210000000000, 0, 0, 0, 0, 50, 180, 
  TRUE)/*R_[45]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.Tx", "", "", 0, 0, 0, 512, 0, 51, 184, TRUE)/*R_[46]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.Tgf", "", "", 0, 0, 0, 512, 0, 52, 188, TRUE)/*R_[47]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.Tbf", "", "", 
  0, 0, 0, 0, 0, 53, 192, TRUE)/*R_[48]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.n", "", "", 2505000000, 0, 0, 0, 0, 54, 21, TRUE)/*CR_[5]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.Fp", "", "", 
  0, 0, 0, 0, 0, 55, 196, TRUE)/*R_[49]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative.k", "", "", 1, 0, 0, 0, 0, 56, 200, TRUE)/*R_[50]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative.T", "", "", 
  1.e-002, 0, 1.e-060, 0, 0, 57, 204, TRUE)/*R_[51]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative.initType", "", "", 1, 4, 1, 64, 0, 4, 
  17, TRUE)/*CI_[4]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative.x_start", "", "", 0, 0, 0, 0, 0, 58, 
  208, TRUE)/*R_[52]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative.y_start", "", "", 0, 0, 0, 0, 0, 59, 
  212, TRUE)/*R_[53]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative.zeroGain", "", "", 0, 0, 0, 128, 0, 0, 
  0, TRUE)/*B_[0]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative1.k", "", "", 1, 0, 0, 0, 0, 60, 216, 
  TRUE)/*R_[54]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative1.T", "", "", 1.e-002, 0, 1.e-060, 0, 
  0, 61, 220, TRUE)/*R_[55]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative1.initType", "", "", 1, 4, 1, 64, 0, 5, 
  21, TRUE)/*CI_[5]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative1.x_start", "", "", 0, 0, 0, 0, 0, 62, 
  224, TRUE)/*R_[56]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative1.y_start", "", "", 0, 0, 0, 0, 0, 63, 
  228, TRUE)/*R_[57]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative1.zeroGain", "", "", 0, 0, 0, 128, 0, 
  1, 4, TRUE)/*B_[1]*/
DECLARE_VARIABLE("x_axis_mechnical_model.fixedbearing.KB1", "", "", 9000, 0, 0, 0, 0, 64, 25, TRUE)/*CR_[6]*/
DECLARE_VARIABLE("x_axis_mechnical_model.fixedbearing.Tf1", "", "", 3.e-003, 0, 0, 0, 0, 65, 29, TRUE)/*CR_[7]*/
DECLARE_VARIABLE("x_axis_mechnical_model.oppositefixedendbearing.KB2", "", "", 
  9000, 0, 0, 0, 0, 66, 33, TRUE)/*CR_[8]*/
DECLARE_VARIABLE("x_axis_mechnical_model.oppositefixedendbearing.Tf2", "", "", 3.e-003, 0, 0, 0, 0, 67, 37, TRUE)/*CR_[9]*/
DECLARE_VARIABLE("pmsm.p", "", "", 
  1, 0, 0, 64, 0, 6, 0, TRUE)/*I_[0]*/
DECLARE_VARIABLE("pmsm.V0", "", "", 110, 0, 0, 0, 0, 68, 232, TRUE)/*R_[58]*/
DECLARE_VARIABLE("pmsm.INominal", "", "", 6, 0, 0, 0, 0, 69, 236, TRUE)/*R_[59]*/
DECLARE_VARIABLE("pmsm.fNominal", "", "", 50, 0, 0, 0, 0, 70, 240, TRUE)/*R_[60]*/
DECLARE_VARIABLE("pmsm.Jr", "", "", 5.361, 0, 0, 0, 0, 71, 244, TRUE)/*R_[61]*/
DECLARE_VARIABLE("pmsm.nNominal", "", "", 3000, 0, 0, 0, 0, 72, 248, TRUE)/*R_[62]*/
DECLARE_VARIABLE("pmsm.tauNominal", "", "", 5, 0, 0, 0, 0, 73, 252, TRUE)/*R_[63]*/
DECLARE_VARIABLE("pmsm.Tm", "", "", 2.24e-003, 0, 0, 0, 0, 74, 256, TRUE)/*R_[64]*/
DECLARE_VARIABLE("pmsm.Ti", "", "", 4.085e-003, 0, 0, 0, 0, 75, 260, TRUE)/*R_[65]*/
DECLARE_VARIABLE("pmsm.Rs", "", "", 0.3567, 0, 0, 0, 0, 76, 264, TRUE)/*R_[66]*/
DECLARE_VARIABLE("pmsm.Lssigma", "", "", 1.06e-004, 0, 0, 0, 0, 77, 268, TRUE)/*R_[67]*/
DECLARE_VARIABLE("pmsm.Lmd", "", "", 2.316e-003, 0, 0, 0, 0, 78, 272, TRUE)/*R_[68]*/
DECLARE_VARIABLE("pmsm.Lmq", "", "", 2.316e-003, 0, 0, 0, 0, 79, 276, TRUE)/*R_[69]*/
DECLARE_VARIABLE("pmsm.PMSM.J_Rotor", "", "", 0, 0, 0, 0, 0, 80, 280, TRUE)/*R_[70]*/
DECLARE_VARIABLE("pmsm.PMSM.useSupport", "", "", 0, 0, 0, 128, 0, 2, 1, TRUE)/*CB_[0]*/
DECLARE_VARIABLE("pmsm.PMSM.J_Stator", "", "", 0, 0, 0, 0, 0, 81, 284, TRUE)/*R_[71]*/
DECLARE_VARIABLE("pmsm.PMSM.phi_mechanical", "", "", 0, 0, 0, 512, 0, 82, 288, TRUE)/*R_[72]*/
DECLARE_VARIABLE("pmsm.PMSM.rpm_mechanical", "", "", 0, 0, 0, 512, 0, 83, 292, TRUE)/*R_[73]*/
DECLARE_VARIABLE("pmsm.PMSM.flange_a.tau", "", "", 0, 0, 0, 512, 0, 84, 296, TRUE)/*R_[74]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.J", "", "", 0, 0, 0, 0, 0, 85, 300, TRUE)/*R_[75]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.initType", "", "", 1, 9, 1, 64, 0, 7, 25, TRUE)/*CI_[6]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.phi_start", "", "", 0, 0, 0, 0, 0, 86, 304, TRUE)/*R_[76]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.w_start", "", "", 0, 0, 0, 0, 0, 87, 308, TRUE)/*R_[77]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.a_start", "", "", 0, 0, 0, 0, 0, 88, 312, TRUE)/*R_[78]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.stateSelection", "", "", 3, 5, 1, 64, 0, 8, 29, TRUE)/*CI_[7]*/
DECLARE_VARIABLE("pmsm.PMSM.fixed.phi0", "", "", 0, 0, 0, 0, 0, 89, 316, TRUE)/*R_[79]*/
DECLARE_VARIABLE("pmsm.PMSM.internalSupport.tau", "", "", 0, 0, 0, 0, 0, 90, 41, TRUE)/*CR_[10]*/
DECLARE_VARIABLE("pmsm.PMSM.pi", "", "", 3.141592653589793, 0, 0, 0, 0, 91, 45, TRUE)/*CR_[11]*/
DECLARE_VARIABLE("pmsm.PMSM.m", "", "", 3, 0, 0, 64, 0, 9, 33, TRUE)/*CI_[8]*/
DECLARE_VARIABLE("pmsm.PMSM.p", "", "", 0, 0, 1, 64, 0, 10, 4, TRUE)/*I_[1]*/
DECLARE_VARIABLE("pmsm.PMSM.vs[1]", "", "", 0, 0, 0, 512, 0, 92, 320, TRUE)/*R_[80]*/
DECLARE_VARIABLE("pmsm.PMSM.vs[2]", "", "", 0, 0, 0, 512, 0, 93, 324, TRUE)/*R_[81]*/
DECLARE_VARIABLE("pmsm.PMSM.vs[3]", "", "", 0, 0, 0, 512, 0, 94, 328, TRUE)/*R_[82]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.m", "", "", 3, 0, 1, 64, 0, 11, 37, TRUE)/*CI_[9]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.m", "", "", 3, 0, 1, 64, 0, 12, 41, TRUE)/*CI_[10]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[1].v", "", "", 0, 0, 0, 512, 0, 95, 332, TRUE)/*R_[83]*/
DECLARE_VARIABLE("pmsm.PMSM.fNominal", "", "", 0, 0, 0, 0, 0, 96, 336, TRUE)/*R_[84]*/
DECLARE_VARIABLE("pmsm.PMSM.Rs", "", "", 0, 0, 0, 0, 0, 97, 340, TRUE)/*R_[85]*/
DECLARE_VARIABLE("pmsm.PMSM.Lssigma", "", "", 0, 0, 0, 0, 0, 98, 344, TRUE)/*R_[86]*/
DECLARE_VARIABLE("pmsm.PMSM.V0", "", "", 0, 0, 0, 0, 0, 99, 348, TRUE)/*R_[87]*/
DECLARE_VARIABLE("pmsm.PMSM.Lmd", "", "", 0, 0, 0, 0, 0, 100, 352, TRUE)/*R_[88]*/
DECLARE_VARIABLE("pmsm.PMSM.Lmq", "", "", 0, 0, 0, 0, 0, 101, 356, TRUE)/*R_[89]*/
DECLARE_VARIABLE("pmsm.PMSM.DamperCage", "", "", 0, 0, 0, 128, 0, 3, 5, TRUE)/*CB_[1]*/
DECLARE_VARIABLE("pmsm.PMSM.Lrsigma", "", "", 0, 0, 0, 0, 0, 102, 360, TRUE)/*R_[90]*/
DECLARE_VARIABLE("pmsm.PMSM.Lrsigmaq", "", "", 0, 0, 0, 0, 0, 103, 364, TRUE)/*R_[91]*/
DECLARE_VARIABLE("pmsm.PMSM.Rr", "", "", 4.e-002, 0, 0, 0, 0, 104, 368, TRUE)/*R_[92]*/
DECLARE_VARIABLE("pmsm.PMSM.Rrq", "", "", 0, 0, 0, 0, 0, 105, 372, TRUE)/*R_[93]*/
DECLARE_VARIABLE("pmsm.PMSM.i_0_s", "", "", 0, 0, 0, 512, 0, 106, 376, TRUE)/*R_[94]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_rr[2]", "", "", 0, 0, 0, 0, 0, 107, 49, TRUE)/*CR_[12]*/
DECLARE_VARIABLE("pmsm.PMSM.Ie", "", "", 0, 0, 0, 0, 0, 108, 380, TRUE)/*R_[95]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.m", "", "", 3, 0, 0, 64, 0, 13, 45, TRUE)/*CI_[11]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.p", "", "", 0, 0, 1, 64, 0, 14, 8, TRUE)/*I_[2]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.tau_electrical", "", "", 0, 0, 0, 512, 0, 109, 384, TRUE)/*R_[96]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.gamma", "", "", 0, 0, 0, 512, 0, 110, 388, TRUE)/*R_[97]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_ss[1]", "", "", 0, 0, 0, 512, 0, 111, 392, TRUE)/*R_[98]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_ss[2]", "", "", 0, 0, 0, 512, 0, 112, 396, TRUE)/*R_[99]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_rs[1]", "", "", 0, 0, 0, 512, 0, 113, 400, TRUE)/*R_[100]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_rs[2]", "", "", 0, 0, 0, 512, 0, 114, 404, TRUE)/*R_[101]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_rr[2]", "", "", 0, 0, 0, 0, 0, 115, 53, TRUE)/*CR_[13]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.psi_ms[1]", "", "", 0, 0, 0, 512, 0, 116, 408, TRUE)/*R_[102]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.psi_ms[2]", "", "", 0, 0, 0, 512, 0, 117, 412, TRUE)/*R_[103]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.psi_mr[1]", "", "", 0, 0, 0, 512, 0, 118, 416, TRUE)/*R_[104]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.psi_mr[2]", "", "", 0, 0, 0, 512, 0, 119, 420, TRUE)/*R_[105]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.RotationMatrix[1, 1]", "", "", 0, 0, 0, 512, 0, 120, 424, TRUE)/*R_[106]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.RotationMatrix[1, 2]", "", "", 
  0, 0, 0, 512, 0, 121, 428, TRUE)/*R_[107]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.RotationMatrix[2, 1]", "", "", 0, 0, 0, 512, 0, 122, 432, TRUE)/*R_[108]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.RotationMatrix[2, 2]", "", "", 
  0, 0, 0, 512, 0, 123, 436, TRUE)/*R_[109]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_r.i_[2]", "", "", 0, 0, 0, 0, 0, 124, 57, TRUE)/*CR_[14]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.Lmd", "", "", 0, 0, 0, 0, 0, 125, 440, TRUE)/*R_[110]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.Lmq", "", "", 0, 0, 0, 0, 0, 126, 444, TRUE)/*R_[111]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_mr[1]", "", "", 0, 0, 0, 512, 0, 127, 448, TRUE)/*R_[112]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.L[1, 1]", "", "", 0, 0, 0, 0, 0, 128, 452, TRUE)/*R_[113]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.L[1, 2]", "", "", 0, 0, 0, 0, 0, 129, 456, TRUE)/*R_[114]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.L[2, 1]", "", "", 0, 0, 0, 0, 0, 130, 460, TRUE)/*R_[115]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.L[2, 2]", "", "", 0, 0, 0, 0, 0, 131, 464, TRUE)/*R_[116]*/
DECLARE_VARIABLE("pmsm.PMSM.permanentMagnet.Ie", "", "", 0, 0, 0, 0, 0, 132, 468, TRUE)/*R_[117]*/
DECLARE_VARIABLE("pmsm.PMSM.permanentMagnet.spacePhasor_r.i_[2]", "", "", 0, 0, 0, 0, 0, 133, 61, TRUE)/*CR_[15]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.m", "", "", 
  3, 0, 1, 64, 0, 15, 49, TRUE)/*CI_[12]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.v[1]", "", "", 0, 0, 0, 512, 0, 134, 472, TRUE)/*R_[118]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.v[2]", "", "", 0, 0, 0, 512, 0, 135, 476, TRUE)/*R_[119]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.v[3]", "", "", 0, 0, 0, 512, 0, 136, 480, TRUE)/*R_[120]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.m", "", "", 3, 0, 1, 64, 0, 16, 53, TRUE)/*CI_[13]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.m", "", "", 3, 0, 1, 64, 0, 17, 57, TRUE)/*CI_[14]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.R[1]", "", "", 0, 0, 0, 0, 0, 137, 484, TRUE)/*R_[121]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.R[2]", "", "", 0, 0, 0, 0, 0, 138, 488, TRUE)/*R_[122]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.R[3]", "", "", 0, 0, 0, 0, 0, 139, 492, TRUE)/*R_[123]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].v", "", "", 0, 0, 0, 512, 0, 140, 496, TRUE)/*R_[124]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].R", "", "", 0, 0, 0, 0, 0, 141, 500, TRUE)/*R_[125]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].v", "", "", 0, 0, 0, 512, 0, 142, 504, TRUE)/*R_[126]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].R", "", "", 0, 0, 0, 0, 0, 143, 508, TRUE)/*R_[127]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].v", "", "", 0, 0, 0, 512, 0, 144, 512, TRUE)/*R_[128]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].R", "", "", 0, 0, 0, 0, 0, 145, 516, TRUE)/*R_[129]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.m", "", "", 3, 0, 1, 64, 0, 18, 61, TRUE)/*CI_[15]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.v[1]", "", "", 0, 0, 0, 512, 0, 146, 520, TRUE)/*R_[130]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.v[2]", "", "", 0, 0, 0, 512, 0, 147, 524, TRUE)/*R_[131]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.v[3]", "", "", 0, 0, 0, 512, 0, 148, 528, TRUE)/*R_[132]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.m", "", "", 3, 0, 1, 64, 0, 19, 65, TRUE)/*CI_[16]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.m", "", "", 3, 0, 1, 64, 0, 20, 69, TRUE)/*CI_[17]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.L[1]", "", "", 0, 0, 0, 0, 0, 149, 532, TRUE)/*R_[133]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.L[2]", "", "", 0, 0, 0, 0, 0, 150, 536, TRUE)/*R_[134]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.L[3]", "", "", 0, 0, 0, 0, 0, 151, 540, TRUE)/*R_[135]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].v", "", "", 0, 0, 0, 512, 0, 152, 544, TRUE)/*R_[136]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].i", "", "", 0, 0, 0, 512, 0, 153, 548, TRUE)/*R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].p.v", "", "", 0, 0, 0, 512, 0, 154, 552, TRUE)/*R_[138]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].n.v", "", "", 0, 0, 0, 512, 0, 155, 556, TRUE)/*R_[139]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].L", "", "", 0, 0, 0, 0, 0, 156, 560, TRUE)/*R_[140]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].v", "", "", 0, 0, 0, 512, 0, 157, 564, TRUE)/*R_[141]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].i", "", "", 0, 0, 0, 512, 0, 158, 568, TRUE)/*R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].p.v", "", "", 0, 0, 0, 512, 0, 159, 572, TRUE)/*R_[143]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].n.v", "", "", 0, 0, 0, 512, 0, 160, 576, TRUE)/*R_[144]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].L", "", "", 0, 0, 0, 0, 0, 161, 580, TRUE)/*R_[145]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].v", "", "", 0, 0, 0, 512, 0, 162, 584, TRUE)/*R_[146]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].i", "", "", 0, 0, 0, 512, 0, 163, 588, TRUE)/*R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].p.v", "", "", 0, 0, 0, 512, 0, 164, 592, TRUE)/*R_[148]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].n.v", "", "", 0, 0, 0, 512, 0, 165, 596, TRUE)/*R_[149]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].L", "", "", 0, 0, 0, 0, 0, 166, 600, TRUE)/*R_[150]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.m", "", "", 3, 0, 0, 64, 0, 21, 73, TRUE)/*CI_[18]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.pi", "", "", 3.141592653589793, 0, 0, 0, 0, 167, 65, TRUE)/*CR_[16]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.v[1]", "", "", 
  0, 0, 0, 512, 0, 168, 604, TRUE)/*R_[151]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.v[2]", "", "", 0, 0, 0, 512, 0, 169, 608, TRUE)/*R_[152]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.v[3]", "", "", 0, 0, 0, 512, 0, 170, 612, TRUE)/*R_[153]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[1, 1]", "", "", 0.6666666666666666, 0, 0, 0, 0, 171, 
  69, TRUE)/*CR_[17]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[1, 2]", "", "", -0.3333333333333332, 0, 0, 0, 0, 172, 
  73, TRUE)/*CR_[18]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[1, 3]", "", "", -0.3333333333333336, 0, 0, 0, 0, 173, 77, TRUE)/*CR_[19]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[2, 1]", "", "", 0, 0, 0, 0, 0, 174, 81, TRUE)/*CR_[20]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[2, 2]", "", "", 
  0.5773502691896257, 0, 0, 0, 0, 175, 85, TRUE)/*CR_[21]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[2, 3]", "", "", -0.5773502691896255, 0, 0, 0, 0, 176, 
  89, TRUE)/*CR_[22]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[1, 1]", "", "", 1, 0, 0, 0, 0, 177, 93, TRUE)/*CR_[23]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[1, 2]", "", "", 
  0, 0, 0, 0, 0, 178, 97, TRUE)/*CR_[24]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[2, 1]", "", "", -0.4999999999999998, 0, 0, 0, 0, 
  179, 101, TRUE)/*CR_[25]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[2, 2]", "", "", 0.8660254037844387, 0, 0, 0, 0, 180, 
  105, TRUE)/*CR_[26]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[3, 1]", "", "", -0.5000000000000004, 0, 0, 0, 0, 
  181, 109, TRUE)/*CR_[27]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[3, 2]", "", "", -0.8660254037844384, 0, 0, 0, 0, 
  182, 113, TRUE)/*CR_[28]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.m", "", "", 3, 0, 1, 64, 0, 22, 77, TRUE)/*CI_[19]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.m", "", "", 3, 0, 1, 64, 0, 23, 81, TRUE)/*CI_[20]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.zero.v", "", "", 0, 0, 0, 0, 0, 183, 117, TRUE)/*CR_[29]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.ground.v", "", "", 0, 0, 0, 0, 0, 184, 121, TRUE)/*CR_[30]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.gnd.p.v", "", "", 0, 0, 0, 0, 0, 185, 125, TRUE)/*CR_[31]*/
DECLARE_VARIABLE("pmsm.terminalBox.m", "", "", 3, 0, 0, 64, 0, 24, 85, TRUE)/*CI_[21]*/
/* DECLARE_VARIABLE("pmsm.terminalBox.StarDelta", "", "", 0, 0, 0, 192, 0, 0, 1, TRUE)
 help标量 */
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.m", "", "", 3, 0, 1, 64, 0, 25, 89, TRUE)/*CI_[22]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.m", "", "", 3, 0, 1, 64, 0, 26, 93, TRUE)/*CI_[23]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.m", "", "", 3, 0, 1, 64, 0, 27, 97, TRUE)/*CI_[24]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.m", "", "", 3, 0, 1, 64, 0, 28, 101, TRUE)/*CI_[25]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.pin_n.i", "", "", 0, 0, 0, 0, 0, 186, 129, TRUE)/*CR_[32]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.m", "", "", 3, 0, 1, 64, 0, 29, 105, TRUE)/*CI_[26]*/
DECLARE_VARIABLE("pmsm.terminalBox.starpoint.i", "", "", 0, 0, 0, 0, 0, 187, 133, TRUE)/*CR_[33]*/
DECLARE_VARIABLE("pmsm.positiveplug.m", "", "", 3, 0, 1, 64, 0, 30, 109, TRUE)/*CI_[27]*/
DECLARE_VARIABLE("servo.Udc", "", "", 220, 0, 0, 0, 0, 188, 616, TRUE)/*R_[154]*/
DECLARE_VARIABLE("servo.T_PWM", "", "", 1.e-004, 0, 0, 0, 0, 189, 620, TRUE)/*R_[155]*/
DECLARE_VARIABLE("servo.p", "", "", 1, 0, 0, 64, 0, 31, 12, TRUE)/*I_[3]*/
DECLARE_VARIABLE("servo.VCellNominal", "", "", 311, 0, 0, 0, 0, 190, 624, TRUE)/*R_[156]*/
DECLARE_VARIABLE("servo.ICellMax", "", "", 800, 0, 0, 0, 0, 191, 628, TRUE)/*R_[157]*/
DECLARE_VARIABLE("servo.RsCell", "", "", 6.e-003, 0, 0, 0, 0, 192, 632, TRUE)/*R_[158]*/
DECLARE_VARIABLE("servo.nsBatt", "", "", 1, 0, 1, 64, 0, 32, 16, TRUE)/*I_[4]*/
DECLARE_VARIABLE("servo.npBatt", "", "", 1, 0, 1, 64, 0, 33, 20, TRUE)/*I_[5]*/
DECLARE_VARIABLE("servo.IConverterMax", "", "", 400, 0, 0, 0, 0, 193, 636, TRUE)/*R_[159]*/
DECLARE_VARIABLE("servo.ks", "", "", 60, 0, 0, 0, 0, 194, 640, TRUE)/*R_[160]*/
DECLARE_VARIABLE("servo.kv", "", "", 0.5, 0, 0, 0, 0, 195, 644, TRUE)/*R_[161]*/
DECLARE_VARIABLE("servo.Tv", "", "", 1.5e-002, 0, 0, 0, 0, 196, 648, TRUE)/*R_[162]*/
DECLARE_VARIABLE("servo.kq", "", "", 0, 0, 0, 0, 0, 197, 652, TRUE)/*R_[163]*/
DECLARE_VARIABLE("servo.Tq", "", "", 0, 0, 0, 0, 0, 198, 656, TRUE)/*R_[164]*/
DECLARE_VARIABLE("servo.kd", "", "", 2.7432, 0, 0, 0, 0, 199, 660, TRUE)/*R_[165]*/
DECLARE_VARIABLE("servo.Td", "", "", 4.085e-003, 0, 0, 0, 0, 200, 664, TRUE)/*R_[166]*/
DECLARE_VARIABLE("servo.uMax1", "", "", 200, 0, 0, 0, 0, 201, 668, TRUE)/*R_[167]*/
DECLARE_VARIABLE("servo.uMax2", "", "", 200, 0, 0, 0, 0, 202, 672, TRUE)/*R_[168]*/
DECLARE_VARIABLE("servo.uMax3", "", "", 1000, 0, 0, 0, 0, 203, 676, TRUE)/*R_[169]*/
DECLARE_VARIABLE("servo.currentsensor.m", "", "", 3, 0, 1, 64, 0, 34, 113, TRUE)/*CI_[28]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.m", "", "", 3, 0, 1, 64, 0, 35, 117, TRUE)/*CI_[29]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.m", "", "", 3, 0, 1, 64, 0, 36, 121, TRUE)/*CI_[30]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[1].p.v", "", "", 0, 0, 0, 512, 0, 204, 680, TRUE)/*R_[170]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[2].p.v", "", "", 
  0, 0, 0, 512, 0, 205, 684, TRUE)/*R_[171]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[3].p.v", "", "", 0, 0, 0, 512, 0, 206, 688, TRUE)/*R_[172]*/
DECLARE_VARIABLE("servo.dcac.pSupply.v", "", "", 
  0, 0, 0, 512, 0, 207, 692, TRUE)/*R_[173]*/
DECLARE_VARIABLE("servo.dcac.nSupply.v", "", "", 0, 0, 0, 0, 0, 208, 137, TRUE)/*CR_[34]*/
DECLARE_VARIABLE("servo.dcac.nSupply.i", "", "", 0, 0, 0, 512, 0, 209, 696, TRUE)/*R_[174]*/
DECLARE_VARIABLE("servo.dcac.IConverterMax", "", "", 0, 0, 0, 0, 0, 210, 700, TRUE)/*R_[175]*/
DECLARE_VARIABLE("servo.dcac.powerSupply", "", "", 0, 0, 0, 512, 0, 211, 704, TRUE)/*R_[176]*/
DECLARE_VARIABLE("servo.dcac.pLoad.m", "", "", 3, 0, 1, 64, 0, 37, 125, TRUE)/*CI_[31]*/
DECLARE_VARIABLE("servo.dcac.powerLoad", "", "", 0, 0, 0, 512, 0, 212, 708, TRUE)/*R_[177]*/
DECLARE_VARIABLE("servo.dcac.RonSwitch", "", "", 1.e-005, 0, 0, 0, 0, 213, 141, TRUE)/*CR_[35]*/
DECLARE_VARIABLE("servo.dcac.GoffSwitch", "", "", 1.e-005, 0, 0, 0, 0, 214, 145, TRUE)/*CR_[36]*/
DECLARE_VARIABLE("servo.dcac.RonDiode", "", "", 1.e-005, 0, 0, 0, 0, 215, 149, TRUE)/*CR_[37]*/
DECLARE_VARIABLE("servo.dcac.GoffDiode", "", "", 1.e-005, 0, 0, 0, 0, 216, 153, TRUE)/*CR_[38]*/
DECLARE_VARIABLE("servo.dcac.VkneeDiode", "", "", 0, 0, 0, 0, 0, 217, 157, TRUE)/*CR_[39]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.v", "", "", 0, 0, 0, 512, 0, 218, 712, TRUE)/*R_[178]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.p.i", "", "", 0, 0, 0, 512, 0, 219, 716, TRUE)/*R_[179]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.Ron", "", "", 1.e-005, 0, 0, 0, 0, 220, 161, TRUE)/*CR_[40]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.Goff", "", "", 
  1.e-005, 0, 0, 0, 0, 221, 165, TRUE)/*CR_[41]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.s", "", "", 0, 0, 0, 512, 0, 222, 720, TRUE)/*R_[180]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.unitVoltage", "", "", 1, 0, 0, 0, 0, 223, 169, FALSE)/*CR_[42]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 224, 173, FALSE)/*CR_[43]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.v", "", "", 0, 0, 0, 512, 0, 225, 724, TRUE)/*R_[181]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.p.i", "", "", 0, 0, 0, 512, 0, 226, 728, TRUE)/*R_[182]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.Ron", "", "", 1.e-005, 0, 0, 0, 0, 227, 177, TRUE)/*CR_[44]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.Goff", "", "", 
  1.e-005, 0, 0, 0, 0, 228, 181, TRUE)/*CR_[45]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.s", "", "", 0, 0, 0, 512, 0, 229, 732, TRUE)/*R_[183]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.unitVoltage", "", "", 1, 0, 0, 0, 0, 230, 185, FALSE)/*CR_[46]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 231, 189, FALSE)/*CR_[47]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.v", "", "", 0, 0, 0, 512, 0, 232, 736, TRUE)/*R_[184]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.p.i", "", "", 0, 0, 0, 512, 0, 233, 740, TRUE)/*R_[185]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.Ron", "", "", 1.e-005, 0, 0, 0, 0, 234, 193, TRUE)/*CR_[48]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.Goff", "", "", 
  1.e-005, 0, 0, 0, 0, 235, 197, TRUE)/*CR_[49]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.s", "", "", 0, 0, 0, 512, 0, 236, 744, TRUE)/*R_[186]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.unitVoltage", "", "", 1, 0, 0, 0, 0, 237, 201, FALSE)/*CR_[50]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 238, 205, FALSE)/*CR_[51]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.p.i", "", "", 0, 0, 0, 512, 0, 239, 748, TRUE)/*R_[187]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.n.v", "", "", 0, 0, 0, 0, 0, 240, 209, TRUE)/*CR_[52]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.Ron", "", "", 1.e-005, 0, 0, 0, 0, 241, 213, TRUE)/*CR_[53]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.Goff", "", "", 
  1.e-005, 0, 0, 0, 0, 242, 217, TRUE)/*CR_[54]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.control", "", "", 0, 0, 0, 640, 0, 4, 8, TRUE)/*B_[2]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.s", "", "", 0, 0, 0, 512, 0, 243, 752, TRUE)/*R_[188]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.unitVoltage", "", "", 1, 0, 0, 0, 0, 244, 221, FALSE)/*CR_[55]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 245, 225, FALSE)/*CR_[56]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.p.i", "", "", 0, 0, 0, 512, 0, 246, 756, TRUE)/*R_[189]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.n.v", "", "", 0, 0, 0, 0, 0, 247, 229, TRUE)/*CR_[57]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.Ron", "", "", 1.e-005, 0, 0, 0, 0, 248, 233, TRUE)/*CR_[58]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.Goff", "", "", 
  1.e-005, 0, 0, 0, 0, 249, 237, TRUE)/*CR_[59]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.control", "", "", 0, 0, 0, 640, 0, 5, 12, TRUE)/*B_[3]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.s", "", "", 0, 0, 0, 512, 0, 250, 760, TRUE)/*R_[190]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.unitVoltage", "", "", 1, 0, 0, 0, 0, 251, 241, FALSE)/*CR_[60]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 252, 245, FALSE)/*CR_[61]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.p.i", "", "", 0, 0, 0, 512, 0, 253, 764, TRUE)/*R_[191]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.n.v", "", "", 0, 0, 0, 0, 0, 254, 249, TRUE)/*CR_[62]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.Ron", "", "", 1.e-005, 0, 0, 0, 0, 255, 253, TRUE)/*CR_[63]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.Goff", "", "", 
  1.e-005, 0, 0, 0, 0, 256, 257, TRUE)/*CR_[64]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.control", "", "", 0, 0, 0, 640, 0, 6, 16, TRUE)/*B_[4]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.s", "", "", 0, 0, 0, 512, 0, 257, 768, TRUE)/*R_[192]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.unitVoltage", "", "", 1, 0, 0, 0, 0, 258, 261, FALSE)/*CR_[65]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 259, 265, FALSE)/*CR_[66]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.v", "", "", 0, 0, 0, 512, 0, 260, 772, TRUE)/*R_[193]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.p.i", "", "", 0, 0, 0, 512, 0, 261, 776, TRUE)/*R_[194]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.Ron", "", "", 1.e-005, 0, 0, 0, 0, 262, 269, TRUE)/*CR_[67]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.Goff", "", "", 1.e-005, 0, 0, 0, 0, 263, 273, TRUE)/*CR_[68]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.Vknee", "", "", 0, 0, 0, 0, 0, 264, 277, TRUE)/*CR_[69]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.off", "", "", 1, 0, 0, 640, 0, 7, 20, TRUE)/*B_[5]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.s", "", "", 0, 0, 0, 512, 0, 265, 780, TRUE)/*R_[195]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 266, 281, FALSE)/*CR_[70]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 267, 285, FALSE)/*CR_[71]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.v", "", "", 
  0, 0, 0, 512, 0, 268, 784, TRUE)/*R_[196]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.p.i", "", "", 0, 0, 0, 512, 0, 269, 788, TRUE)/*R_[197]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.Ron", "", "", 1.e-005, 0, 0, 0, 0, 270, 289, TRUE)/*CR_[72]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.Goff", "", "", 1.e-005, 0, 0, 0, 0, 271, 293, TRUE)/*CR_[73]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.Vknee", "", "", 0, 0, 0, 0, 0, 272, 297, TRUE)/*CR_[74]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.off", "", "", 1, 0, 0, 640, 0, 8, 24, TRUE)/*B_[6]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.s", "", "", 0, 0, 0, 512, 0, 273, 792, TRUE)/*R_[198]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 274, 301, FALSE)/*CR_[75]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 275, 305, FALSE)/*CR_[76]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.v", "", "", 
  0, 0, 0, 512, 0, 276, 796, TRUE)/*R_[199]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.p.i", "", "", 0, 0, 0, 512, 0, 277, 800, TRUE)/*R_[200]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.Ron", "", "", 1.e-005, 0, 0, 0, 0, 278, 309, TRUE)/*CR_[77]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.Goff", "", "", 1.e-005, 0, 0, 0, 0, 279, 313, TRUE)/*CR_[78]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.Vknee", "", "", 0, 0, 0, 0, 0, 280, 317, TRUE)/*CR_[79]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.off", "", "", 1, 0, 0, 640, 0, 9, 28, TRUE)/*B_[7]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.s", "", "", 0, 0, 0, 512, 0, 281, 804, TRUE)/*R_[201]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 282, 321, FALSE)/*CR_[80]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 283, 325, FALSE)/*CR_[81]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.p.v", "", "", 
  0, 0, 0, 0, 0, 284, 329, TRUE)/*CR_[82]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.p.i", "", "", 0, 0, 0, 512, 0, 285, 808, TRUE)/*R_[202]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.Ron", "", "", 1.e-005, 0, 0, 0, 0, 286, 333, TRUE)/*CR_[83]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.Goff", "", "", 1.e-005, 0, 0, 0, 0, 287, 337, TRUE)/*CR_[84]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.Vknee", "", "", 0, 0, 0, 0, 0, 288, 341, TRUE)/*CR_[85]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.off", "", "", 1, 0, 0, 640, 0, 10, 32, TRUE)/*B_[8]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.s", "", "", 0, 0, 0, 512, 0, 289, 812, TRUE)/*R_[203]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 290, 345, FALSE)/*CR_[86]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 291, 349, FALSE)/*CR_[87]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.p.v", "", "", 
  0, 0, 0, 0, 0, 292, 353, TRUE)/*CR_[88]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.p.i", "", "", 0, 0, 0, 512, 0, 293, 816, TRUE)/*R_[204]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.Ron", "", "", 1.e-005, 0, 0, 0, 0, 294, 357, TRUE)/*CR_[89]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.Goff", "", "", 1.e-005, 0, 0, 0, 0, 295, 361, TRUE)/*CR_[90]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.Vknee", "", "", 0, 0, 0, 0, 0, 296, 365, TRUE)/*CR_[91]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.off", "", "", 1, 0, 0, 640, 0, 11, 36, TRUE)/*B_[9]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.s", "", "", 0, 0, 0, 512, 0, 297, 820, TRUE)/*R_[205]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 298, 369, FALSE)/*CR_[92]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 299, 373, FALSE)/*CR_[93]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.p.v", "", "", 
  0, 0, 0, 0, 0, 300, 377, TRUE)/*CR_[94]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.p.i", "", "", 0, 0, 0, 512, 0, 301, 824, TRUE)/*R_[206]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.Ron", "", "", 1.e-005, 0, 0, 0, 0, 302, 381, TRUE)/*CR_[95]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.Goff", "", "", 1.e-005, 0, 0, 0, 0, 303, 385, TRUE)/*CR_[96]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.Vknee", "", "", 0, 0, 0, 0, 0, 304, 389, TRUE)/*CR_[97]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.off", "", "", 1, 0, 0, 640, 0, 12, 40, TRUE)/*B_[10]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.s", "", "", 0, 0, 0, 512, 0, 305, 828, TRUE)/*R_[207]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 306, 393, FALSE)/*CR_[98]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 307, 397, FALSE)/*CR_[99]*/
DECLARE_VARIABLE("servo.dcac.voltageSensor.p.i", "", "", 
  0, 0, 0, 0, 0, 308, 401, TRUE)/*CR_[100]*/
DECLARE_VARIABLE("servo.dcac.voltageSensor.n.v", "", "", 0, 0, 0, 0, 0, 309, 405, TRUE)/*CR_[101]*/
DECLARE_VARIABLE("servo.dcac.voltageSensor.n.i", "", "", 0, 0, 0, 0, 0, 310, 409, TRUE)/*CR_[102]*/
DECLARE_VARIABLE("servo.park.i_alpha", "", "", 0, 0, 0, 512, 0, 311, 832, TRUE)/*R_[208]*/
DECLARE_VARIABLE("servo.park.i_beta", "", "", 0, 0, 0, 512, 0, 312, 836, TRUE)/*R_[209]*/
DECLARE_VARIABLE("servo.feedback4.u2", "", "", 0, 0, 0, 512, 0, 313, 840, TRUE)/*R_[210]*/
DECLARE_VARIABLE("servo.feedback3.u2", "", "", 0, 0, 0, 512, 0, 314, 844, TRUE)/*R_[211]*/
DECLARE_VARIABLE("servo.IdPI.u", "", "", 0, 0, 0, 512, 0, 315, 848, TRUE)/*R_[212]*/
DECLARE_VARIABLE("servo.IdPI.k", "", "", 0, 0, 0, 0, 0, 316, 852, TRUE)/*R_[213]*/
DECLARE_VARIABLE("servo.IdPI.T", "", "", 0, 0, 0, 0, 0, 317, 856, TRUE)/*R_[214]*/
DECLARE_VARIABLE("servo.IdPI.initType", "", "", 1, 4, 1, 64, 0, 38, 129, TRUE)/*CI_[32]*/
DECLARE_VARIABLE("servo.IdPI.x_start", "", "", 0, 0, 0, 0, 0, 318, 860, TRUE)/*R_[215]*/
DECLARE_VARIABLE("servo.IdPI.y_start", "", "", 0, 0, 0, 0, 0, 319, 864, TRUE)/*R_[216]*/
DECLARE_VARIABLE("servo.IqPI.u", "", "", 0, 0, 0, 512, 0, 320, 868, TRUE)/*R_[217]*/
DECLARE_VARIABLE("servo.IqPI.k", "", "", 0, 0, 0, 0, 0, 321, 872, TRUE)/*R_[218]*/
DECLARE_VARIABLE("servo.IqPI.T", "", "", 0, 0, 0, 0, 0, 322, 876, TRUE)/*R_[219]*/
DECLARE_VARIABLE("servo.IqPI.initType", "", "", 1, 4, 1, 64, 0, 39, 133, TRUE)/*CI_[33]*/
DECLARE_VARIABLE("servo.IqPI.x_start", "", "", 0, 0, 0, 0, 0, 323, 880, TRUE)/*R_[220]*/
DECLARE_VARIABLE("servo.IqPI.y_start", "", "", 0, 0, 0, 0, 0, 324, 884, TRUE)/*R_[221]*/
DECLARE_VARIABLE("servo.rPark1.V_d", "", "", 0, 0, 0, 512, 0, 325, 888, TRUE)/*R_[222]*/
DECLARE_VARIABLE("servo.rPark1.V_q", "", "", 0, 0, 0, 512, 0, 326, 892, TRUE)/*R_[223]*/
DECLARE_VARIABLE("servo.rPark1.V_alpha", "", "", 0, 0, 0, 512, 0, 327, 896, TRUE)/*R_[224]*/
DECLARE_VARIABLE("servo.rPark1.V_beta", "", "", 0, 0, 0, 512, 0, 328, 900, TRUE)/*R_[225]*/
DECLARE_VARIABLE("servo.VqLimiter.u", "", "", 0, 0, 0, 512, 0, 329, 904, TRUE)/*R_[226]*/
DECLARE_VARIABLE("servo.VqLimiter.uMax", "", "", 0, 0, 0, 0, 0, 330, 908, TRUE)/*R_[227]*/
DECLARE_VARIABLE("servo.VqLimiter.uMin", "", "", 0, 0, 0, 0, 0, 331, 912, TRUE)/*R_[228]*/
DECLARE_VARIABLE("servo.VqLimiter.limitsAtInit", "", "", 1, 0, 0, 128, 0, 13, 44, TRUE)/*B_[11]*/
DECLARE_VARIABLE("servo.VdLimiter.u", "", "", 0, 0, 0, 512, 0, 332, 916, TRUE)/*R_[229]*/
DECLARE_VARIABLE("servo.VdLimiter.uMax", "", "", 0, 0, 0, 0, 0, 333, 920, TRUE)/*R_[230]*/
DECLARE_VARIABLE("servo.VdLimiter.uMin", "", "", 0, 0, 0, 0, 0, 334, 924, TRUE)/*R_[231]*/
DECLARE_VARIABLE("servo.VdLimiter.limitsAtInit", "", "", 1, 0, 0, 128, 0, 14, 48, TRUE)/*B_[12]*/
DECLARE_VARIABLE("servo.gain.k", "", "", 0, 0, 0, 0, 0, 335, 928, TRUE)/*R_[232]*/
DECLARE_VARIABLE("servo.gain.y", "", "", 0, 0, 0, 512, 0, 336, 932, TRUE)/*R_[233]*/
DECLARE_VARIABLE("servo.id.k", "", "", 0, 0, 0, 0, 0, 337, 936, TRUE)/*R_[234]*/
DECLARE_VARIABLE("servo.IqLimiter.u", "", "", 0, 0, 0, 512, 0, 338, 940, TRUE)/*R_[235]*/
DECLARE_VARIABLE("servo.IqLimiter.y", "", "", 0, 0, 0, 512, 0, 339, 944, TRUE)/*R_[236]*/
DECLARE_VARIABLE("servo.IqLimiter.uMax", "", "", 0, 0, 0, 0, 0, 340, 948, TRUE)/*R_[237]*/
DECLARE_VARIABLE("servo.IqLimiter.uMin", "", "", 0, 0, 0, 0, 0, 341, 952, TRUE)/*R_[238]*/
DECLARE_VARIABLE("servo.IqLimiter.limitsAtInit", "", "", 1, 0, 0, 128, 0, 15, 52, TRUE)/*B_[13]*/
DECLARE_VARIABLE("servo.vPI.u", "", "", 0, 0, 0, 512, 0, 342, 956, TRUE)/*R_[239]*/
DECLARE_VARIABLE("servo.vPI.k", "", "", 0, 0, 0, 0, 0, 343, 960, TRUE)/*R_[240]*/
DECLARE_VARIABLE("servo.vPI.T", "", "", 0, 0, 0, 0, 0, 344, 964, TRUE)/*R_[241]*/
DECLARE_VARIABLE("servo.vPI.initType", "", "", 1, 4, 1, 64, 0, 40, 137, TRUE)/*CI_[34]*/
DECLARE_VARIABLE("servo.vPI.x_start", "", "", 0, 0, 0, 0, 0, 345, 968, TRUE)/*R_[242]*/
DECLARE_VARIABLE("servo.vPI.y_start", "", "", 0, 0, 0, 0, 0, 346, 972, TRUE)/*R_[243]*/
DECLARE_VARIABLE("servo.feedback1.u1", "", "", 0, 0, 0, 512, 0, 347, 976, TRUE)/*R_[244]*/
DECLARE_VARIABLE("servo.feedback1.y", "", "", 0, 0, 0, 512, 0, 348, 980, TRUE)/*R_[245]*/
DECLARE_VARIABLE("servo.svpwm1.Udc", "", "", 0, 0, 0, 0, 0, 349, 984, TRUE)/*R_[246]*/
DECLARE_VARIABLE("servo.svpwm1.T_PWM", "", "", 0, 0, 0, 0, 0, 350, 988, TRUE)/*R_[247]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain.k", "", "", 1.732050807568877, 0, 0, 0, 0, 351, 992, TRUE)/*R_[248]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain.y", "", "", 
  0, 0, 0, 512, 0, 352, 996, TRUE)/*R_[249]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain1.k", "", "", 0.5773502691896257, 0, 0, 0, 0, 353, 1000, TRUE)/*R_[250]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add.u1", "", "", 
  0, 0, 0, 512, 0, 354, 1004, TRUE)/*R_[251]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add.y", "", "", 0, 0, 0, 512, 0, 355, 1008, TRUE)/*R_[252]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add.k1", "", "", 1, 0, 0, 0, 0, 356, 1012, TRUE)/*R_[253]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add.k2", "", "", 1, 0, 0, 0, 0, 357, 1016, TRUE)/*R_[254]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add1.y", "", "", 0, 0, 0, 512, 0, 358, 1020, TRUE)/*R_[255]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add1.k1", "", "", 1, 0, 0, 0, 0, 359, 1024, TRUE)/*R_[256]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add1.k2", "", "", -1, 0, 0, 0, 0, 360, 1028, TRUE)/*R_[257]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division.u1", "", "", 0, 0, 0, 512, 0, 361, 1032, TRUE)/*R_[258]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division1.u1", "", "", 0, 0, 0, 512, 0, 362, 1036, TRUE)/*R_[259]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division1.y", "", "", 0, 0, 0, 512, 0, 363, 1040, TRUE)/*R_[260]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division2.u1", "", "", 0, 0, 0, 512, 0, 364, 1044, TRUE)/*R_[261]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division2.y", "", "", 0, 0, 0, 512, 0, 365, 1048, TRUE)/*R_[262]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain2.k", "", "", 1.5, 0, 0, 0, 0, 366, 1052, TRUE)/*R_[263]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain3.k", "", "", 1.5, 0, 0, 0, 0, 367, 1056, TRUE)/*R_[264]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.X", "", "", 0, 0, 0, 512, 0, 368, 1060, TRUE)/*R_[265]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.Y", "", "", 0, 0, 0, 512, 0, 369, 1064, TRUE)/*R_[266]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.Z", "", "", 0, 0, 0, 512, 0, 370, 1068, TRUE)/*R_[267]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.T1", "", "", 0, 0, 0, 512, 0, 371, 1072, TRUE)/*R_[268]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.T2", "", "", 0, 0, 0, 512, 0, 372, 1076, TRUE)/*R_[269]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.Temp1", "", "", 0, 0, 0, 512, 0, 373, 1080, TRUE)/*R_[270]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.Temp2", "", "", 0, 0, 0, 512, 0, 374, 1084, TRUE)/*R_[271]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.Ta", "", "", 0, 0, 0, 512, 0, 375, 1088, TRUE)/*R_[272]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.Tb", "", "", 0, 0, 0, 512, 0, 376, 1092, TRUE)/*R_[273]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.Tc", "", "", 0, 0, 0, 512, 0, 377, 1096, TRUE)/*R_[274]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain.k", "", "", 0.5, 0, 0, 0, 0, 378, 1100, TRUE)/*R_[275]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain1.k", "", "", 0.5, 0, 0, 0, 0, 379, 1104, TRUE)/*R_[276]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.k1", "", "", -1, 0, 0, 0, 0, 380, 1108, TRUE)/*R_[277]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.k2", "", "", -1, 0, 0, 0, 0, 381, 1112, TRUE)/*R_[278]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.k3", "", "", 1, 0, 0, 0, 0, 382, 1116, TRUE)/*R_[279]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.y", "", "", 0, 0, 0, 512, 0, 383, 1120, TRUE)/*R_[280]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain2.k", "", "", 0.25, 0, 0, 0, 0, 384, 1124, TRUE)/*R_[281]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add.u1", "", "", 0, 0, 0, 512, 0, 385, 1128, TRUE)/*R_[282]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add.k1", "", "", 1, 0, 0, 0, 0, 386, 1132, TRUE)/*R_[283]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add.k2", "", "", 1, 0, 0, 0, 0, 387, 1136, TRUE)/*R_[284]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add1.u1", "", "", 0, 0, 0, 512, 0, 388, 1140, TRUE)/*R_[285]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add1.k1", "", "", 1, 0, 0, 0, 0, 389, 1144, TRUE)/*R_[286]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add1.k2", "", "", 1, 0, 0, 0, 0, 390, 1148, TRUE)/*R_[287]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.N", "", "", 0, 0, 0, 576, 0, 41, 24, TRUE)/*I_[6]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Ta", "", "", 0, 0, 0, 512, 0, 391, 1152, TRUE)/*R_[288]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Tb", "", "", 0, 0, 0, 512, 0, 392, 1156, TRUE)/*R_[289]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Tc", "", "", 0, 0, 0, 512, 0, 393, 1160, TRUE)/*R_[290]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Tcm1", "", "", 0, 0, 0, 512, 0, 394, 1164, TRUE)/*R_[291]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Tcm2", "", "", 0, 0, 0, 512, 0, 395, 1168, TRUE)/*R_[292]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Tcm3", "", "", 0, 0, 0, 512, 0, 396, 1172, TRUE)/*R_[293]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.T_PWM", "", "", 1.e-004, 0, 1.e-060, 0, 0, 397, 1176, TRUE)/*R_[294]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.amplitude", "", "", 2, 0, 0, 0, 0, 398, 1180, TRUE)/*R_[295]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.width", "", "", 50, 100, 1.e-060, 0, 0, 399, 1184, TRUE)/*R_[296]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.period", "", "", 0, 0, 1.e-060, 0, 0, 400, 1188, TRUE)/*R_[297]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.offset", "", "", -1, 0, 0, 0, 0, 401, 1192, TRUE)/*R_[298]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.startTime", "", "", 0, 0, 0, 0, 0, 402, 1196, TRUE)/*R_[299]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.T0", "", "", 0, 0, 0, 512, 0, 403, 1200, TRUE)/*R_[300]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.T_width", "", "", 0, 0, 0, 0, 0, 404, 1204, TRUE)/*R_[301]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.u", "", "", 0, 0, 0, 512, 0, 405, 1208, TRUE)/*R_[302]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.k", "", "", 1, 0, 0, 0, 0, 406, 1212, TRUE)/*R_[303]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.initType", "", "", 3, 4, 1, 64, 0, 42, 141, TRUE)/*CI_[35]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.y_start", "", "", 0, 0, 0, 0, 0, 407, 1216, TRUE)/*R_[304]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.nin", "", "", 2, 0, 0, 64, 0, 43, 145, TRUE)/*CI_[36]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.k[1]", "", "", 1, 0, 0, 0, 0, 408, 1220, TRUE)/*R_[305]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.k[2]", "", "", -1, 0, 0, 0, 0, 409, 1224, TRUE)/*R_[306]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.nin", "", "", 2, 0, 0, 64, 0, 44, 149, TRUE)/*CI_[37]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.k[1]", "", "", 1, 0, 0, 0, 0, 410, 1228, TRUE)/*R_[307]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.k[2]", "", "", -1, 0, 0, 0, 0, 411, 1232, TRUE)/*R_[308]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.nin", "", "", 2, 0, 0, 64, 0, 45, 153, TRUE)/*CI_[38]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.k[1]", "", "", 1, 0, 0, 0, 0, 412, 1236, TRUE)/*R_[309]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.k[2]", "", "", -1, 0, 0, 0, 0, 413, 1240, TRUE)/*R_[310]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.uLow", "", "", 1.e-015, 0, 0, 0, 0, 414, 1244, TRUE)/*R_[311]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.uHigh", "", "", 
  1.e-015, 0, 0, 0, 0, 415, 1248, TRUE)/*R_[312]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.pre_y_start", "", "", 0, 0, 0, 128, 0, 16, 56, TRUE)/*B_[14]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.u", "", "", 0, 0, 0, 512, 0, 416, 1252, TRUE)/*R_[313]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.y", "", "", 0, 0, 0, 640, 0, 17, 60, TRUE)/*B_[15]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.uLow", "", "", 1.e-015, 0, 0, 0, 0, 417, 1256, TRUE)/*R_[314]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.uHigh", "", "", 
  1.e-015, 0, 0, 0, 0, 418, 1260, TRUE)/*R_[315]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.pre_y_start", "", "", 0, 0, 0, 128, 0, 18, 64, TRUE)/*B_[16]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.u", "", "", 0, 0, 0, 512, 0, 419, 1264, TRUE)/*R_[316]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.y", "", "", 0, 0, 0, 640, 0, 19, 68, TRUE)/*B_[17]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.uLow", "", "", 1.e-015, 0, 0, 0, 0, 420, 1268, TRUE)/*R_[317]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.uHigh", "", "", 
  1.e-015, 0, 0, 0, 0, 421, 1272, TRUE)/*R_[318]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.pre_y_start", "", "", 0, 0, 0, 128, 0, 20, 72, TRUE)/*B_[18]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.u", "", "", 0, 0, 0, 512, 0, 422, 1276, TRUE)/*R_[319]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.y", "", "", 0, 0, 0, 640, 0, 21, 76, TRUE)/*B_[19]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.N", "", "", 0, 0, 0, 576, 0, 46, 28, TRUE)/*I_[7]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.vb", "", "", 0, 0, 0, 512, 0, 423, 1280, TRUE)/*R_[320]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.vc", "", "", 0, 0, 0, 512, 0, 424, 1284, TRUE)/*R_[321]*/
DECLARE_VARIABLE("servo.svpwm1.Ux.k", "", "", 0, 0, 0, 0, 0, 425, 1288, TRUE)/*R_[322]*/
DECLARE_VARIABLE("servo.svpwm1.T.k", "", "", 0, 0, 0, 0, 0, 426, 1292, TRUE)/*R_[323]*/
DECLARE_VARIABLE("servo.feedback2.u1", "", "", 0, 0, 0, 512, 0, 427, 1296, TRUE)/*R_[324]*/
DECLARE_VARIABLE("servo.negativeplug.m", "", "", 3, 0, 1, 64, 0, 47, 157, TRUE)/*CI_[39]*/
DECLARE_VARIABLE("servo.gain1.k", "", "", 0, 0, 0, 0, 0, 428, 1300, TRUE)/*R_[325]*/
DECLARE_VARIABLE("servo.batteryideal.n.v", "", "", 0, 0, 0, 0, 0, 429, 413, TRUE)/*CR_[103]*/
DECLARE_VARIABLE("servo.batteryideal.ns", "", "", 1, 0, 1, 64, 0, 48, 32, TRUE)/*I_[8]*/
DECLARE_VARIABLE("servo.batteryideal.np", "", "", 1, 0, 1, 64, 0, 49, 36, TRUE)/*I_[9]*/
DECLARE_VARIABLE("servo.batteryideal.vCell", "", "", 0, 0, 0, 512, 0, 430, 1304, TRUE)/*R_[326]*/
DECLARE_VARIABLE("servo.batteryideal.iCell", "", "", 0, 0, 0, 512, 0, 431, 1308, TRUE)/*R_[327]*/
DECLARE_VARIABLE("servo.batteryideal.powerCell", "", "", 0, 0, 0, 512, 0, 432, 1312, TRUE)/*R_[328]*/
DECLARE_VARIABLE("servo.batteryideal.iPackage", "", "", 0, 0, 0, 512, 0, 433, 1316, TRUE)/*R_[329]*/
DECLARE_VARIABLE("servo.batteryideal.powerPackage", "", "", 0, 0, 0, 512, 0, 434, 1320, TRUE)/*R_[330]*/
DECLARE_VARIABLE("servo.batteryideal.VCellNominal", "", "", 0, 0, 0, 0, 0, 435, 1324, TRUE)/*R_[331]*/
DECLARE_VARIABLE("servo.batteryideal.ICellMax", "", "", 0, 0, 0, 0, 0, 436, 1328, TRUE)/*R_[332]*/
DECLARE_VARIABLE("servo.batteryideal.RsCell", "", "", 0, 0, 0, 0, 0, 437, 1332, TRUE)/*R_[333]*/
DECLARE_VARIABLE("servo.batteryideal.RsPackage", "", "", 0, 0, 0, 0, 0, 438, 1336, TRUE)/*R_[334]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.v", "", "", 0, 0, 0, 512, 0, 439, 1340, TRUE)/*R_[335]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.R", "", "", 0, 0, 0, 0, 0, 440, 1344, TRUE)/*R_[336]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.n.v", "", "", 0, 0, 0, 0, 0, 441, 417, TRUE)/*CR_[104]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.V", "", "", 0, 0, 0, 0, 0, 442, 1348, TRUE)/*R_[337]*/
DECLARE_VARIABLE("servo.ground.p.v", "", "", 0, 0, 0, 0, 0, 443, 421, TRUE)/*CR_[105]*/
DECLARE_VARIABLE("servo.ground.p.i", "", "", 0, 0, 0, 512, 0, 444, 1352, TRUE)/*R_[338]*/
DECLARE_VARIABLE("servo.anglesensor.flange_a.tau", "", "", 0, 0, 0, 0, 0, 445, 425, TRUE)/*CR_[106]*/
DECLARE_VARIABLE("servo.flange_a.tau", "", "", 0, 0, 0, 0, 0, 446, 429, TRUE)/*CR_[107]*/
DECLARE_VARIABLE("pmsm.PMSM.der(i_0_s)", "", "", 0, 0, 0, 512, 0, 447, 1356, FALSE)/*R_[339]*/
DECLARE_VARIABLE("pmsm.PMSM.der(idq_rr[1])", "", "", 0, 0, 0, 512, 0, 448, 1360, FALSE)/*R_[340]*/
DECLARE_VARIABLE("pmsm.PMSM.der(idq_rr[2])", "", "", 0, 0, 0, 512, 0, 449, 1364, FALSE)/*R_[341]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(gamma)", "", "", 0, 0, 0, 512, 0, 450, 1368, FALSE)/*R_[342]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(i_ss[1])", "", "", 0, 0, 0, 512, 0, 451, 1372, FALSE)/*R_[343]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(i_ss[2])", "", "", 0, 0, 0, 512, 0, 452, 1376, FALSE)/*R_[344]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(psi_ms[1])", "", "", 0, 0, 0, 512, 0, 453, 1380, FALSE)/*R_[345]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(psi_ms[2])", "", "", 0, 0, 0, 512, 0, 454, 1384, FALSE)/*R_[346]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(psi_mr[1])", "", "", 0, 0, 0, 512, 0, 455, 1388, FALSE)/*R_[347]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(psi_mr[2])", "", "", 0, 0, 0, 512, 0, 456, 1392, FALSE)/*R_[348]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(RotationMatrix[1, 1])", "", "", 0, 0, 0, 512, 0, 457, 1396, FALSE)/*R_[349]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(RotationMatrix[1, 2])", "", "", 
  0, 0, 0, 512, 0, 458, 1400, FALSE)/*R_[350]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(RotationMatrix[2, 1])", "", "", 0, 0, 0, 512, 0, 459, 1404, FALSE)/*R_[351]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(RotationMatrix[2, 2])", "", "", 
  0, 0, 0, 512, 0, 460, 1408, FALSE)/*R_[352]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.der(i[1])", "", "", 0, 0, 0, 512, 0, 461, 1412, FALSE)/*R_[353]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.der(i[2])", "", "", 0, 0, 0, 512, 0, 462, 1416, FALSE)/*R_[354]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.der(i[3])", "", "", 0, 0, 0, 512, 0, 463, 1420, FALSE)/*R_[355]*/
/* DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.pre(T0)", "", "", 0, 0, 0, 512, 0, 464, 1424, TRUE)
 pre标量 */
/* DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.pre(y)", "", "", 0, 0, 0, 640, 0, 22, 80, TRUE)
 pre标量 */
/* DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.pre(y)", "", "", 0, 0, 0, 640, 0, 23, 84, TRUE)
 pre标量 */
/* DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.pre(y)", "", "", 0, 0, 0, 640, 0, 24, 88, TRUE)
 pre标量 */
/* DECLARE_VARIABLE("HelpVar.11", "", "", 0, 0, 0, 512, 0, 465, 1428, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.12", "", "", 0, 0, 0, 512, 0, 466, 1432, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.13", "", "", 0, 0, 0, 512, 0, 467, 1436, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.14", "", "", 0, 0, 0, 512, 0, 468, 1440, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.15", "", "", 0, 0, 0, 512, 0, 469, 1444, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.16", "", "", 0, 0, 0, 512, 0, 470, 1448, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.17", "", "", 0, 0, 0, 512, 0, 471, 1452, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.18", "", "", 0, 0, 0, 512, 0, 472, 1456, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.19", "", "", 0, 0, 0, 512, 0, 473, 1460, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.20", "", "", 0, 0, 0, 512, 0, 474, 1464, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.21", "", "", 0, 0, 0, 512, 0, 475, 1468, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.22", "", "", 0, 0, 0, 512, 0, 476, 1472, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.23", "", "", 0, 0, 0, 512, 0, 477, 1476, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.24", "", "", 0, 0, 0, 512, 0, 478, 1480, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.25", "", "", 0, 0, 0, 512, 0, 479, 1484, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.26", "", "", 0, 0, 0, 512, 0, 480, 1488, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.27", "", "", 0, 0, 0, 512, 0, 481, 1492, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.28", "", "", 0, 0, 0, 512, 0, 482, 1496, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.29", "", "", 0, 0, 0, 512, 0, 483, 1500, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.30", "", "", 0, 0, 0, 512, 0, 484, 1504, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.31", "", "", 0, 0, 0, 0, 0, 485, 1508, TRUE)
 help标量 */
/* DECLARE_VARIABLE("HelpVar.32", "", "", 0, 0, 0, 0, 0, 486, 1512, TRUE)
 help标量 */
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.phi", "", "", 0, 0, 0, 512, 0, 487, 1516, TRUE)/*R_[379]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.w", "", "", 
  0, 0, 0, 512, 0, 488, 1520, TRUE)/*R_[380]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.phi", "", "", 0, 0, 0, 512, 0, 489, 1524, TRUE)/*R_[381]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.w", "", "", 
  0, 0, 0, 512, 0, 490, 1528, TRUE)/*R_[382]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative.x", "", "", 0, 0, 0, 512, 0, 491, 1532, TRUE)/*R_[383]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative1.x", "", "", 
  0, 0, 0, 512, 0, 492, 1536, TRUE)/*R_[384]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_sr[1]", "", "", 0, 0, 0, 512, 0, 493, 1540, TRUE)/*R_[385]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_sr[2]", "", "", 0, 0, 0, 512, 0, 494, 1544, TRUE)/*R_[386]*/
DECLARE_VARIABLE("servo.IdPI.x", "", "", 0, 0, 0, 512, 0, 495, 1548, TRUE)/*R_[387]*/
DECLARE_VARIABLE("servo.IqPI.x", "", "", 0, 0, 0, 512, 0, 496, 1552, TRUE)/*R_[388]*/
DECLARE_VARIABLE("servo.vPI.x", "", "", 0, 0, 0, 512, 0, 497, 1556, TRUE)/*R_[389]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.y", "", "", 0, 0, 0, 512, 0, 498, 1560, TRUE)/*R_[390]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.der(phi)", "", "", 0, 0, 0, 512, 0, 499, 1564, FALSE)/*R_[391]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.der(w)", "", "", 
  0, 0, 0, 512, 0, 500, 1568, FALSE)/*R_[392]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.der(phi)", "", "", 0, 0, 0, 512, 0, 501, 1572, FALSE)/*R_[393]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.der(w)", "", "", 
  0, 0, 0, 512, 0, 502, 1576, FALSE)/*R_[394]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative.der(x)", "", "", 0, 0, 0, 512, 0, 503, 
  1580, FALSE)/*R_[395]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative1.der(x)", "", "", 0, 0, 0, 512, 0, 504, 
  1584, FALSE)/*R_[396]*/
DECLARE_VARIABLE("pmsm.PMSM.der(idq_sr[1])", "", "", 0, 0, 0, 512, 0, 505, 1588, FALSE)/*R_[397]*/
DECLARE_VARIABLE("pmsm.PMSM.der(idq_sr[2])", "", "", 0, 0, 0, 512, 0, 506, 1592, FALSE)/*R_[398]*/
DECLARE_VARIABLE("servo.IdPI.der(x)", "", "", 0, 0, 0, 512, 0, 507, 1596, FALSE)/*R_[399]*/
DECLARE_VARIABLE("servo.IqPI.der(x)", "", "", 0, 0, 0, 512, 0, 508, 1600, FALSE)/*R_[400]*/
DECLARE_VARIABLE("servo.vPI.der(x)", "", "", 0, 0, 0, 512, 0, 509, 1604, FALSE)/*R_[401]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.der(y)", "", "", 0, 0, 0, 512, 0, 510, 1608, FALSE)/*R_[402]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.a", "", "", 0, 0, 0, 512, 1, 500, 1568, TRUE)/* (1) * R_[392]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.i[3]", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.i[2]", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.i[1]", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.w1", "", "", 0, 0, 0, 512, 1, 490, 1528, TRUE)/* (1) 
  * R_[382]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.flange_a.phi", "", "", 0, 0, 0, 512, 1, 489, 1524, TRUE)/* 
  (1) * R_[381]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.w", "", "", 0, 0, 0, 512, 1, 488, 1520, TRUE)/* (1) * R_[380]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("servo.der1.u", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.phix", "", "", 0, 0, 0, 512, 1, 489, 1524, TRUE)/* (
  1) * R_[381]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].der(i)", "", "", 0, 0, 0, 512, 1, 463, 1420, FALSE)/* (1) * R_[355]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].der(i)", "", "", 
  0, 0, 0, 512, 1, 462, 1416, FALSE)/* (1) * R_[354]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].der(i)", "", "", 0, 0, 0, 512, 1, 461, 1412, FALSE)/* (1) * R_[353]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.der(w1)", "", "", 
  0, 0, 0, 512, 1, 502, 1576, FALSE)/* (1) * R_[394]*/
DECLARE_VARIABLE("servo.der1.der(u)", "", "", 0, 0, 0, 512, 1, 488, 1520, FALSE)/* (1) * R_[380]*/
DECLARE_VARIABLE("servo.der1.y", "", "", 0, 0, 0, 512, 1, 488, 1520, TRUE)/* (1) * R_[380]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(i_mr[1])", "", "", 0, 0, 0, 512, 1, 505, 1588, FALSE)/* (1) * R_[397]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_r.v_[2]", "", "", 
  0, 0, 0, 512, 1, 456, 1392, TRUE)/* (1) * R_[348]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_r.v_[1]", "", "", 0, 0, 0, 512, 1, 455, 1388, TRUE)/* (1) * R_[347]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_s.v_[2]", "", "", 
  0, 0, 0, 512, 1, 454, 1384, TRUE)/* (1) * R_[346]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_s.v_[1]", "", "", 0, 0, 0, 512, 1, 453, 1380, TRUE)/* (1) * R_[345]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.der(w)", "", "", 
  0, 0, 0, 512, 1, 500, 1568, FALSE)/* (1) * R_[392]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.der(phi)", "", "", 0, 0, 0, 512, 1, 488, 1520, FALSE)/* (1) * R_[380]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.w2", "", "", 
  0, 0, 0, 512, 1, 490, 1528, TRUE)/* (1) * R_[382]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.flange_a.der(phi)", "", "", 0, 0, 0, 512, 1, 490, 1528, 
  FALSE)/* (1) * R_[382]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.der(phix)", "", "", 0, 0, 0, 512, 1, 490, 1528, FALSE)/* 
  (1) * R_[382]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.a", "", "", 0, 0, 0, 512, 1, 502, 1576, TRUE)/* (1) * 
  R_[394]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.a", "", "", 0, 0, 0, 512, 1, 500, 1568, TRUE)/* (1) * 
  R_[392]*/
DECLARE_VARIABLE("pmsm.PMSM.w_mechanical", "", "", 0, 0, 0, 512, 1, 488, 1520, TRUE)/* (1) * R_[380]*/
DECLARE_VARIABLE("pmsm.PMSM.der(phi_mechanical)", "", "", 0, 0, 0, 512, 1, 488, 1520, FALSE)/* (1) * R_[380]*/
DECLARE_VARIABLE("servo.clark.i_c", "", "", 
  0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("servo.clark.i_b", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("servo.clark.i_a", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.p.v", "", "", 0, 0, 0, 0, 1, 442, 1348, TRUE)/* (1) * R_[337]*/
DECLARE_VARIABLE("servo.batteryideal.vPackage", "", "", 
  0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.dcac.voltageSensor.v", "", "", 0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.v", "", "", 0, 0, 0, 512, -1, 206, 690, TRUE)/* (-1) * R_[172]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.v", "", "", 0, 0, 0, 512, -1, 205, 686, TRUE)/* (-1) * R_[171]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.v", "", "", 0, 0, 0, 512, -1, 204, 682, TRUE)/* (-1) * R_[170]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.v", "", "", 
  0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("servo.dcac.vSupply", "", "", 
  0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_mr[2]", "", "", 0, 0, 0, 512, 1, 494, 1544, TRUE)/* (1) * R_[386]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.p.i", "", "", 0, 0, 0, 512, 1, 433, 1316, TRUE)/* (1) * R_[329]*/
DECLARE_VARIABLE("pmsm.PMSM.fixed.flange_b.tau", "", "", 
  0, 0, 0, 512, -1, 109, 386, TRUE)/* (-1) * R_[96]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_rr[1]", "", "", 0, 0, 0, 0, 1, 132, 468, TRUE)/* (1) * R_[117]*/
DECLARE_VARIABLE("servo.dcac.iSupply", "", "", 0, 0, 0, 512, -1, 433, 1318, TRUE)/* (-1) * R_[329]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[3].i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[2].i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[1].i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[3].i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[2].i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[1].i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.flange_a.tau", "", "", 0, 0, 0, 512, -1, 84, 298, TRUE)/* (-1) * R_[74]*/
DECLARE_VARIABLE("servo.batteryideal.n.i", "", "", 0, 0, 0, 512, -1, 433, 1318, TRUE)/* (-1) * R_[329]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.p.i", "", "", 0, 0, 0, 512, -1, 433, 1318, TRUE)/* (-1) * R_[329]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.gnd.p.i", "", "", 
  0, 0, 0, 512, -1, 106, 378, TRUE)/* (-1) * R_[94]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.flange_b.tau", "", "", 0, 0, 0, 512, 1, 84, 296, TRUE)/* (1) * R_[74]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.ground.i", "", "", 
  0, 0, 0, 512, -1, 106, 378, TRUE)/* (-1) * R_[94]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[3].i", "", "", 0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[2].i", "", "", 0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[1].i", "", "", 0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[3].i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[2].i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[1].i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.flange_a.tau", "", "", 0, 0, 0, 512, 1, 109, 384, TRUE)/* (1) * R_[96]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.spacePhasor.i_[2]", "", "", 
  0, 0, 0, 512, -1, 112, 398, TRUE)/* (-1) * R_[99]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.spacePhasor.i_[1]", "", "", 0, 0, 0, 512, -1, 111, 394, TRUE)/* (-1) * 
  R_[98]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[3].i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[2].i", "", "", 
  0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[1].i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.flange_b.tau", "", "", 0, 0, 0, 512, 1, 24, 92, TRUE)/* (1) * R_[23]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.flange_a.tau", "", "", 
  0, 0, 0, 512, -1, 84, 298, TRUE)/* (-1) * R_[74]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.flange_a.tau", "", "", 0, 0, 0, 512, -1, 13, 50, TRUE)/* 
  (-1) * R_[12]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.flange_b.tau", "", "", 0, 0, 0, 512, 1, 13, 48, TRUE)/* 
  (1) * R_[12]*/
DECLARE_VARIABLE("x_axis_mechnical_model.flange_a.tau", "", "", 0, 0, 0, 512, -1, 84, 298, TRUE)/* (-1) * R_[74]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectscrew.flange_a.tau", "", "", 
  0, 0, 0, 512, -1, 24, 94, TRUE)/* (-1) * R_[23]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[3].i", "", "", 0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * R_[147]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[2].i", "", "", 
  0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * R_[142]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[1].i", "", "", 0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * R_[137]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[3].i", "", "", 
  0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * R_[147]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[2].i", "", "", 0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * R_[142]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[1].i", "", "", 0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * R_[137]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[3].i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[2].i", "", "", 
  0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[1].i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[3].i", "", "", 
  0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[3].i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[2].i", "", "", 
  0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[2].i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[1].i", "", "", 
  0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[1].i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[3].i", "", "", 
  0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[2].i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[1].i", "", "", 
  0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.flange_a.tau", "", "", 0, 0, 0, 512, 1, 84, 296, TRUE)/* (1) * R_[74]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[3].i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) 
  * R_[147]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[2].i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) 
  * R_[142]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[1].i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) 
  * R_[137]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[3].i", "", "", 0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) 
  * R_[147]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[2].i", "", "", 0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) 
  * R_[142]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[1].i", "", "", 0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) 
  * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[3].i", "", "", 0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].p.i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[2].i", "", "", 0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].p.i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[1].i", "", "", 0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].p.i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("servo.negativeplug.pin[3].i", "", "", 0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * R_[147]*/
DECLARE_VARIABLE("servo.negativeplug.pin[2].i", "", "", 0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * R_[142]*/
DECLARE_VARIABLE("servo.negativeplug.pin[1].i", "", "", 0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * R_[137]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.y", "", "", 0, 0, 0, 512, 1, 405, 1208, TRUE)/* (1) * R_[302]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.y", "", "", 0, 0, 0, 512, 1, 419, 1264, TRUE)/* (1) * R_[316]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain1.y", "", "", 0, 0, 0, 512, 1, 388, 1140, TRUE)/* (1) * R_[285]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain.y", "", "", 
  0, 0, 0, 512, 1, 385, 1128, TRUE)/* (1) * R_[282]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain2.u", "", "", 0, 0, 0, 512, 1, 383, 1120, TRUE)/* (1) * R_[280]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product2.y", "", "", 
  0, 0, 0, 512, 1, 364, 1044, TRUE)/* (1) * R_[261]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product2.u1", "", "", 0, 0, 0, 512, 1, 358, 1020, TRUE)/* (1) * R_[255]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain1.y", "", "", 
  0, 0, 0, 512, 1, 354, 1004, TRUE)/* (1) * R_[251]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add1.u1", "", "", 0, 0, 0, 512, 1, 354, 1004, TRUE)/* (1) * R_[251]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product1.y", "", "", 0, 0, 0, 512, 1, 362, 1036, TRUE)/* (1) * R_[259]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product1.u1", "", "", 
  0, 0, 0, 512, 1, 355, 1008, TRUE)/* (1) * R_[252]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain3.u", "", "", 0, 0, 0, 512, 1, 365, 1048, TRUE)/* (1) * R_[262]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain2.u", "", "", 0, 0, 0, 512, 1, 363, 1040, TRUE)/* (1) * R_[260]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.y", "", "", 0, 0, 0, 512, 1, 422, 1276, TRUE)/* (1) * R_[319]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.p.v", "", "", 0, 0, 0, 0, 1, 442, 1348, TRUE)/* (1) * R_[337]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.Tcm3", "", "", 
  0, 0, 0, 512, 1, 396, 1172, TRUE)/* (1) * R_[293]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.u[2]", "", "", 0, 0, 0, 512, 1, 396, 1172, TRUE)/* (1) * R_[293]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.Tcm2", "", "", 0, 0, 0, 512, 1, 395, 1168, TRUE)/* (1) * R_[292]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.u[2]", "", "", 0, 0, 0, 512, 1, 395, 1168, TRUE)/* (1) * R_[292]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.N", "", "", 0, 0, 0, 576, 1, 46, 28, TRUE)/* (1) * I_[7]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add1.y", "", "", 0, 0, 0, 512, 1, 377, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add1.u2", "", "", 0, 0, 0, 512, 1, 376, 1092, TRUE)/* (1) * R_[273]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add.y", "", "", 
  0, 0, 0, 512, 1, 376, 1092, TRUE)/* (1) * R_[273]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain2.y", "", "", 0, 0, 0, 512, 1, 375, 1088, TRUE)/* (1) * R_[272]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add.u2", "", "", 
  0, 0, 0, 512, 1, 375, 1088, TRUE)/* (1) * R_[272]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain1.u", "", "", 0, 0, 0, 512, 1, 372, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.u2", "", "", 
  0, 0, 0, 512, 1, 372, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.T2", "", "", 0, 0, 0, 512, 1, 372, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain.u", "", "", 0, 0, 0, 512, 1, 371, 1072, TRUE)/* (1) * R_[268]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.u1", "", "", 0, 0, 0, 512, 1, 371, 1072, TRUE)/* (1) * R_[268]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.T1", "", "", 
  0, 0, 0, 512, 1, 371, 1072, TRUE)/* (1) * R_[268]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.Z", "", "", 0, 0, 0, 512, 1, 370, 1068, TRUE)/* (1) * R_[267]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain3.y", "", "", 0, 0, 0, 512, 1, 370, 1068, TRUE)/* (1) * R_[267]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.X", "", "", 0, 0, 0, 512, 1, 368, 1060, TRUE)/* (1) * R_[265]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division.y", "", "", 0, 0, 0, 512, 1, 368, 1060, TRUE)/* (1) * R_[265]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.Y", "", "", 
  0, 0, 0, 512, 1, 369, 1064, TRUE)/* (1) * R_[266]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain2.y", "", "", 0, 0, 0, 512, 1, 369, 1064, TRUE)/* (1) * R_[266]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division2.u2", "", "", 0, 0, 0, 0, 1, 425, 1288, TRUE)/* (1) * R_[322]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division1.u2", "", "", 
  0, 0, 0, 0, 1, 425, 1288, TRUE)/* (1) * R_[322]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division.u2", "", "", 0, 0, 0, 0, 1, 425, 1288, TRUE)/* (1) * R_[322]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.Ux", "", "", 
  0, 0, 0, 0, 1, 425, 1288, TRUE)/* (1) * R_[322]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.y", "", "", 0, 0, 0, 512, 1, 416, 1252, TRUE)/* (1) * R_[313]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.Tcm1", "", "", 0, 0, 0, 512, 1, 394, 1164, TRUE)/* (1) * R_[291]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.u[2]", "", "", 0, 0, 0, 512, 1, 394, 1164, TRUE)/* (1) * R_[291]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.u[1]", "", "", 0, 0, 0, 512, 1, 498, 1560, TRUE)/* (1) * R_[390]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.u[1]", "", "", 0, 0, 0, 512, 1, 498, 1560, TRUE)/* (1) * R_[390]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.u[1]", "", "", 0, 0, 0, 512, 1, 498, 1560, TRUE)/* (1) * R_[390]*/
DECLARE_VARIABLE("servo.dcac.vDC", "", "", 0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product.y", "", "", 0, 0, 0, 512, 1, 361, 1032, TRUE)/* (1) * R_[258]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.u3", "", "", 
  0, 0, 0, 0, 1, 426, 1292, TRUE)/* (1) * R_[323]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.T", "", "", 0, 0, 0, 0, 1, 426, 1292, TRUE)/* (1) * R_[323]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.T", "", "", 0, 0, 0, 0, 1, 426, 1292, TRUE)/* (1) * R_[323]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product2.u2", "", "", 0, 0, 0, 0, 1, 426, 1292, TRUE)/* (1) * R_[323]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product1.u2", "", "", 
  0, 0, 0, 0, 1, 426, 1292, TRUE)/* (1) * R_[323]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product.u2", "", "", 0, 0, 0, 0, 1, 426, 1292, TRUE)/* (1) * R_[323]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.T", "", "", 
  0, 0, 0, 0, 1, 426, 1292, TRUE)/* (1) * R_[323]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product.u1", "", "", 0, 0, 0, 512, 1, 352, 996, TRUE)/* (1) * R_[249]*/
DECLARE_VARIABLE("pmsm.PMSM.internalSupport.phi", "", "", 
  0, 0, 0, 0, 1, 89, 316, TRUE)/* (1) * R_[79]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.support.phi", "", "", 0, 0, 0, 0, 1, 89, 316, TRUE)/* (1) * R_[79]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.flange_a.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.spacePhasor.v_[2]", "", "", 
  0, 0, 0, 512, 1, 454, 1384, TRUE)/* (1) * R_[346]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.spacePhasor.v_[1]", "", "", 0, 0, 0, 512, 1, 453, 1380, TRUE)/* (1) * R_[345]*/
DECLARE_VARIABLE("pmsm.PMSM.permanentMagnet.spacePhasor_r.v_[2]", "", "", 
  0, 0, 0, 512, 1, 456, 1392, TRUE)/* (1) * R_[348]*/
DECLARE_VARIABLE("pmsm.PMSM.permanentMagnet.spacePhasor_r.v_[1]", "", "", 0, 0, 0, 512, 1, 455, 1388, TRUE)/* (1) 
  * R_[347]*/
DECLARE_VARIABLE("servo.gain.u", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("servo.feedback1.u2", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("servo.anglesensor.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("servo.dcac.voltageSensor.p.v", "", "", 0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.batteryideal.p.v", "", "", 0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.n.v", "", "", 0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.n.v", "", "", 0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.n.v", "", "", 0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.p.v", "", "", 0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.p.v", "", "", 
  0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.p.v", "", "", 0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.n.v", "", "", 
  0, 0, 0, 512, 1, 207, 692, TRUE)/* (1) * R_[173]*/
DECLARE_VARIABLE("servo.gain1.y", "", "", 0, 0, 0, 512, 1, 427, 1296, TRUE)/* (1) * R_[324]*/
DECLARE_VARIABLE("servo.gain1.u", "", "", 0, 0, 0, 512, 1, 348, 980, TRUE)/* (1) * R_[245]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[6]", "", "", 0, 0, 0, 640, 1, 5, 12, TRUE)/* (1) * B_[3]*/
DECLARE_VARIABLE("servo.svpwm1.not1[2].y", "", "", 0, 0, 0, 640, 1, 5, 12, TRUE)/* (1) * B_[3]*/
DECLARE_VARIABLE("servo.dcac.u[6]", "", "", 0, 0, 0, 640, 1, 5, 12, TRUE)/* (1) * B_[3]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.control", "", "", 0, 0, 0, 640, 1, 21, 76, TRUE)/* (1) * B_[19]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.On[3]", "", "", 
  0, 0, 0, 640, 1, 21, 76, TRUE)/* (1) * B_[19]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[5]", "", "", 0, 0, 0, 640, 1, 21, 76, TRUE)/* (1) * B_[19]*/
DECLARE_VARIABLE("servo.svpwm1.not1[3].u", "", "", 0, 0, 0, 640, 1, 21, 76, TRUE)/* (1) * B_[19]*/
DECLARE_VARIABLE("servo.dcac.u[5]", "", "", 0, 0, 0, 640, 1, 21, 76, TRUE)/* (1) * B_[19]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[4]", "", "", 0, 0, 0, 640, 1, 4, 8, TRUE)/* (1) * B_[2]*/
DECLARE_VARIABLE("servo.svpwm1.not1[1].y", "", "", 0, 0, 0, 640, 1, 4, 8, TRUE)/* (1) * B_[2]*/
DECLARE_VARIABLE("servo.dcac.u[4]", "", "", 0, 0, 0, 640, 1, 4, 8, TRUE)/* (1) * B_[2]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.control", "", "", 0, 0, 0, 640, 1, 19, 68, TRUE)/* (1) * B_[17]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.On[2]", "", "", 
  0, 0, 0, 640, 1, 19, 68, TRUE)/* (1) * B_[17]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[3]", "", "", 0, 0, 0, 640, 1, 19, 68, TRUE)/* (1) * B_[17]*/
DECLARE_VARIABLE("servo.svpwm1.not1[2].u", "", "", 0, 0, 0, 640, 1, 19, 68, TRUE)/* (1) * B_[17]*/
DECLARE_VARIABLE("servo.dcac.u[3]", "", "", 0, 0, 0, 640, 1, 19, 68, TRUE)/* (1) * B_[17]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[2]", "", "", 0, 0, 0, 640, 1, 6, 16, TRUE)/* (1) * B_[4]*/
DECLARE_VARIABLE("servo.svpwm1.not1[3].y", "", "", 0, 0, 0, 640, 1, 6, 16, TRUE)/* (1) * B_[4]*/
DECLARE_VARIABLE("servo.dcac.u[2]", "", "", 0, 0, 0, 640, 1, 6, 16, TRUE)/* (1) * B_[4]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.control", "", "", 0, 0, 0, 640, 1, 17, 60, TRUE)/* (1) * B_[15]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.On[1]", "", "", 
  0, 0, 0, 640, 1, 17, 60, TRUE)/* (1) * B_[15]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[1]", "", "", 0, 0, 0, 640, 1, 17, 60, TRUE)/* (1) * B_[15]*/
DECLARE_VARIABLE("servo.svpwm1.not1[1].u", "", "", 0, 0, 0, 640, 1, 17, 60, TRUE)/* (1) * B_[15]*/
DECLARE_VARIABLE("servo.dcac.u[1]", "", "", 0, 0, 0, 640, 1, 17, 60, TRUE)/* (1) * B_[15]*/
DECLARE_VARIABLE("servo.park.i_d", "", "", 0, 0, 0, 512, 1, 313, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("servo.feedback2.u2", "", "", 0, 0, 0, 512, 1, 488, 1520, TRUE)/* (1) * R_[380]*/
DECLARE_VARIABLE("servo.feedback2.y", "", "", 0, 0, 0, 512, 1, 342, 956, TRUE)/* (1) * R_[239]*/
DECLARE_VARIABLE("servo.VdLimiter.y", "", "", 0, 0, 0, 512, 1, 325, 888, TRUE)/* (1) * R_[222]*/
DECLARE_VARIABLE("servo.VqLimiter.y", "", "", 0, 0, 0, 512, 1, 326, 892, TRUE)/* (1) * R_[223]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain1.u", "", "", 0, 0, 0, 512, 1, 328, 900, TRUE)/* (1) * R_[225]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain.u", "", "", 0, 0, 0, 512, 1, 328, 900, TRUE)/* (1) * R_[225]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.U_beta", "", "", 0, 0, 0, 512, 1, 328, 900, TRUE)/* (1) * R_[225]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.U_beta", "", "", 0, 0, 0, 512, 1, 328, 900, TRUE)/* (1) * R_[225]*/
DECLARE_VARIABLE("servo.svpwm1.U_beta", "", "", 0, 0, 0, 512, 1, 328, 900, TRUE)/* (1) * R_[225]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add1.u2", "", "", 0, 0, 0, 512, 1, 327, 896, TRUE)/* (1) * R_[224]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add.u2", "", "", 0, 0, 0, 512, 1, 327, 896, TRUE)/* (1) * R_[224]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.U_alpha", "", "", 0, 0, 0, 512, 1, 327, 896, TRUE)/* (1) * R_[224]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.U_alpha", "", "", 0, 0, 0, 512, 1, 327, 896, TRUE)/* (1) * R_[224]*/
DECLARE_VARIABLE("servo.svpwm1.U_alpha", "", "", 0, 0, 0, 512, 1, 327, 896, TRUE)/* (1) * R_[224]*/
DECLARE_VARIABLE("servo.IdPI.y", "", "", 0, 0, 0, 512, 1, 332, 916, TRUE)/* (1) * R_[229]*/
DECLARE_VARIABLE("servo.vPI.y", "", "", 0, 0, 0, 512, 1, 338, 940, TRUE)/* (1) * R_[235]*/
DECLARE_VARIABLE("servo.feedback3.u1", "", "", 0, 0, 0, 512, 1, 339, 944, TRUE)/* (1) * R_[236]*/
DECLARE_VARIABLE("servo.IqPI.y", "", "", 0, 0, 0, 512, 1, 329, 904, TRUE)/* (1) * R_[226]*/
DECLARE_VARIABLE("servo.feedback4.u1", "", "", 0, 0, 0, 0, 1, 337, 936, TRUE)/* (1) * R_[234]*/
DECLARE_VARIABLE("servo.clark.i_beta", "", "", 0, 0, 0, 512, 1, 312, 836, TRUE)/* (1) * R_[209]*/
DECLARE_VARIABLE("servo.clark.i_alpha", "", "", 0, 0, 0, 512, 1, 311, 832, TRUE)/* (1) * R_[208]*/
DECLARE_VARIABLE("servo.rPark1.theta", "", "", 0, 0, 0, 512, 1, 336, 932, TRUE)/* (1) * R_[233]*/
DECLARE_VARIABLE("servo.park.theta", "", "", 0, 0, 0, 512, 1, 336, 932, TRUE)/* (1) * R_[233]*/
DECLARE_VARIABLE("servo.feedback4.y", "", "", 0, 0, 0, 512, 1, 315, 848, TRUE)/* (1) * R_[212]*/
DECLARE_VARIABLE("servo.feedback3.y", "", "", 0, 0, 0, 512, 1, 320, 868, TRUE)/* (1) * R_[217]*/
DECLARE_VARIABLE("servo.park.i_q", "", "", 0, 0, 0, 512, 1, 314, 844, TRUE)/* (1) * R_[211]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.spring.flange_b.phi", "", "", 0, 0, 0, 512, 1, 489, 1524, TRUE)/* 
  (1) * R_[381]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.spring.flange_a.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* 
  (1) * R_[379]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.Ts", "", "", 0, 0, 0, 512, 1, 37, 136, TRUE)/* (1) * R_[34]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.Ff", "", "", 0, 0, 0, 512, 1, 45, 160, TRUE)/* (
  1) * R_[40]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.phix", "", "", 0, 0, 0, 512, 1, 489, 1524, TRUE)/* 
  (1) * R_[381]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.flange_b.phi", "", "", 0, 0, 0, 512, 1, 489, 1524, TRUE)/* (1) 
  * R_[381]*/
DECLARE_VARIABLE("servo.currentsensor.i[3]", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[3].i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("servo.currentsensor.i[2]", "", "", 
  0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[2].i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("servo.currentsensor.i[1]", "", "", 
  0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[1].i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[3].v", "", "", 
  0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.p.v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.n.v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.n.v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.p.v", "", "", 
  0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[3].v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[2].v", "", "", 
  0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.n.v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.p.v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.p.v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.n.v", "", "", 
  0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[2].v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[1].v", "", "", 
  0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.n.v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.p.v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.p.v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.n.v", "", "", 
  0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[1].v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[3].v", "", "", 
  0, 0, 0, 512, 1, 165, 596, TRUE)/* (1) * R_[149]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[3].v", "", "", 0, 0, 0, 512, 1, 165, 596, TRUE)/* (1) * R_[149]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[2].v", "", "", 
  0, 0, 0, 512, 1, 160, 576, TRUE)/* (1) * R_[144]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[2].v", "", "", 0, 0, 0, 512, 1, 160, 576, TRUE)/* (1) * R_[144]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[1].v", "", "", 
  0, 0, 0, 512, 1, 155, 556, TRUE)/* (1) * R_[139]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[1].v", "", "", 0, 0, 0, 512, 1, 155, 556, TRUE)/* (1) * R_[139]*/
DECLARE_VARIABLE("pmsm.terminalBox.starpoint.v", "", "", 
  0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) * R_[83]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[3].v", "", "", 0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) * R_[83]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[2].v", "", "", 0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) * R_[83]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[1].v", "", "", 0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) * R_[83]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.pin_n.v", "", "", 
  0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) * R_[83]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[3].v", "", "", 0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) 
  * R_[83]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[2].v", "", "", 0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) 
  * R_[83]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[1].v", "", "", 0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) 
  * R_[83]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[3].v", "", "", 0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) * R_[83]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[2].v", "", "", 
  0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) * R_[83]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[1].v", "", "", 0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) * R_[83]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[3].v", "", "", 
  0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) * R_[83]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[2].v", "", "", 0, 0, 0, 512, 1, 95, 332, TRUE)/* (1) * R_[83]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].n.v", "", "", 0, 0, 0, 512, 1, 164, 592, TRUE)/* (1) * R_[148]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[3].v", "", "", 0, 0, 0, 512, 1, 164, 592, TRUE)/* (1) * R_[148]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[3].v", "", "", 0, 0, 0, 512, 1, 164, 592, TRUE)/* (1) * R_[148]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].n.v", "", "", 
  0, 0, 0, 512, 1, 159, 572, TRUE)/* (1) * R_[143]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[2].v", "", "", 0, 0, 0, 512, 1, 159, 572, TRUE)/* (1) * R_[143]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[2].v", "", "", 0, 0, 0, 512, 1, 159, 572, TRUE)/* (1) * R_[143]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].n.v", "", "", 
  0, 0, 0, 512, 1, 154, 552, TRUE)/* (1) * R_[138]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[1].v", "", "", 0, 0, 0, 512, 1, 154, 552, TRUE)/* (1) * R_[138]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[1].v", "", "", 0, 0, 0, 512, 1, 154, 552, TRUE)/* (1) * R_[138]*/
DECLARE_VARIABLE("x_axis_mechnical_model.v", "", "", 
  0, 0, 0, 512, 1, 10, 36, TRUE)/* (1) * R_[9]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.v", "", "", 0, 0, 0, 512, 1, 10, 36, TRUE)/* (1) 
  * R_[9]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative1.u", "", "", 0, 0, 0, 512, 1, 10, 36, 
  TRUE)/* (1) * R_[9]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative.y", "", "", 0, 0, 0, 512, 1, 10, 36, 
  TRUE)/* (1) * R_[9]*/
DECLARE_VARIABLE("x_axis_mechnical_model.rollingguide.v", "", "", 0, 0, 0, 512, 1, 10, 36, TRUE)/* (1) * R_[9]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative.u", "", "", 
  0, 0, 0, 512, 1, 9, 32, TRUE)/* (1) * R_[8]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.X", "", "", 0, 0, 0, 512, 1, 9, 32, TRUE)/* (1) 
  * R_[8]*/
DECLARE_VARIABLE("x_axis_mechnical_model.X", "", "", 0, 0, 0, 512, 1, 9, 32, TRUE)/* (1) * R_[8]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.derivative1.y", "", "", 0, 0, 0, 512, 1, 8, 28, 
  TRUE)/* (1) * R_[7]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.a", "", "", 0, 0, 0, 512, 1, 8, 28, TRUE)/* (1) 
  * R_[7]*/
DECLARE_VARIABLE("x_axis_mechnical_model.a", "", "", 0, 0, 0, 512, 1, 8, 28, TRUE)/* (1) * R_[7]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.Fz", "", "", 0, 0, 0, 512, 1, 7, 24, TRUE)/* (1) 
  * R_[6]*/
DECLARE_VARIABLE("x_axis_mechnical_model.rollingguide.Fz", "", "", 0, 0, 0, 512, 1, 7, 24, TRUE)/* (1) * R_[6]*/
DECLARE_VARIABLE("x_axis_mechnical_model.Fz", "", "", 
  0, 0, 0, 512, 1, 7, 24, TRUE)/* (1) * R_[6]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.m", "", "", 0, 0, 0, 512, 1, 6, 20, TRUE)/* (1) 
  * R_[5]*/
DECLARE_VARIABLE("x_axis_mechnical_model.rollingguide.m", "", "", 0, 0, 0, 512, 1, 6, 20, TRUE)/* (1) * R_[5]*/
DECLARE_VARIABLE("x_axis_mechnical_model.m", "", "", 0, 0, 0, 512, 1, 6, 20, TRUE)/* (1) * R_[5]*/
DECLARE_VARIABLE("x_axis_mechnical_model.simpleprojectworktable.Fx", "", "", 0, 0, 0, 512, 1, 11, 40, TRUE)/* (1) 
  * R_[10]*/
DECLARE_VARIABLE("x_axis_mechnical_model.Fx", "", "", 0, 0, 0, 512, 1, 11, 40, TRUE)/* (1) * R_[10]*/
DECLARE_VARIABLE("x_axis_mechnical_model.flange_a.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.flange_a.phi", "", "", 
  0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("servo.flange_a.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("pmsm.flange_a.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("pmsm.PMSM.flange_a.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("servo.negativeplug.pin[3].v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[3].v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[3].v", "", "", 
  0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[3].v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) 
  * R_[172]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[3].v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[3].v", "", "", 
  0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].p.v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[3].v", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.negativeplug.pin[2].v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[2].v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[2].v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[2].v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) 
  * R_[171]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[2].v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[2].v", "", "", 
  0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].p.v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[2].v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.negativeplug.pin[1].v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[1].v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[1].v", "", "", 
  0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[1].v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) 
  * R_[170]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[1].v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[1].v", "", "", 
  0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].p.v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[1].v", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("sine.y", "", "", 0, 0, 0, 512, 1, 347, 976, TRUE)/* (1) * R_[244]*/
DECLARE_VARIABLE("servo.phi_ref", "", "", 0, 0, 0, 512, 1, 347, 976, TRUE)/* (1) * R_[244]*/
DECLARE_VARIABLE("servo.anglesensor.flange_a.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.v", "", "", 
  0, 0, 0, 0, 1, 442, 1348, TRUE)/* (1) * R_[337]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.i", "", "", 0, 0, 0, 512, 1, 433, 1316, TRUE)/* (1) * R_[329]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.n.i", "", "", 0, 0, 0, 512, -1, 433, 1318, TRUE)/* (-1) * R_[329]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.i", "", "", 
  0, 0, 0, 512, -1, 433, 1318, TRUE)/* (-1) * R_[329]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.n.i", "", "", 0, 0, 0, 512, 1, 433, 1316, TRUE)/* (1) * R_[329]*/
DECLARE_VARIABLE("servo.batteryideal.p.i", "", "", 
  0, 0, 0, 512, 1, 433, 1316, TRUE)/* (1) * R_[329]*/
DECLARE_VARIABLE("servo.svpwm1.T.y", "", "", 0, 0, 0, 0, 1, 426, 1292, TRUE)/* (1) * R_[323]*/
DECLARE_VARIABLE("servo.svpwm1.Ux.y", "", "", 0, 0, 0, 0, 1, 425, 1288, TRUE)/* (1) * R_[322]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.va", "", "", 0, 0, 0, 512, 1, 328, 900, TRUE)/* (1) * R_[225]*/
DECLARE_VARIABLE("servo.id.y", "", "", 0, 0, 0, 0, 1, 337, 936, TRUE)/* (1) * R_[234]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.i", "", "", 0, 0, 0, 512, 1, 301, 824, TRUE)/* (1) * R_[206]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.n.i", "", "", 0, 0, 0, 512, -1, 301, 826, TRUE)/* (-1) * R_[206]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.i", "", "", 0, 0, 0, 512, 1, 293, 816, TRUE)/* (1) * R_[204]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.n.i", "", "", 0, 0, 0, 512, -1, 293, 818, TRUE)/* (-1) * R_[204]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.i", "", "", 0, 0, 0, 512, 1, 285, 808, TRUE)/* (1) * R_[202]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.n.i", "", "", 0, 0, 0, 512, -1, 285, 810, TRUE)/* (-1) * R_[202]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.i", "", "", 0, 0, 0, 512, 1, 277, 800, TRUE)/* (1) * R_[200]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.n.i", "", "", 0, 0, 0, 512, -1, 277, 802, TRUE)/* (-1) * R_[200]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.i", "", "", 0, 0, 0, 512, 1, 269, 788, TRUE)/* (1) * R_[197]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.n.i", "", "", 0, 0, 0, 512, -1, 269, 790, TRUE)/* (-1) * R_[197]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.i", "", "", 0, 0, 0, 512, 1, 261, 776, TRUE)/* (1) * R_[194]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.n.i", "", "", 0, 0, 0, 512, -1, 261, 778, TRUE)/* (-1) * R_[194]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.i", "", "", 0, 0, 0, 512, 1, 253, 764, TRUE)/* (1) * R_[191]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.n.i", "", "", 
  0, 0, 0, 512, -1, 253, 766, TRUE)/* (-1) * R_[191]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.i", "", "", 0, 0, 0, 512, 1, 246, 756, TRUE)/* (1) * R_[189]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.n.i", "", "", 
  0, 0, 0, 512, -1, 246, 758, TRUE)/* (-1) * R_[189]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.i", "", "", 0, 0, 0, 512, 1, 239, 748, TRUE)/* (1) * R_[187]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.n.i", "", "", 
  0, 0, 0, 512, -1, 239, 750, TRUE)/* (-1) * R_[187]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.i", "", "", 0, 0, 0, 512, 1, 233, 740, TRUE)/* (1) * R_[185]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.n.i", "", "", 
  0, 0, 0, 512, -1, 233, 742, TRUE)/* (-1) * R_[185]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.i", "", "", 0, 0, 0, 512, 1, 226, 728, TRUE)/* (1) * R_[182]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.n.i", "", "", 
  0, 0, 0, 512, -1, 226, 730, TRUE)/* (-1) * R_[182]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.i", "", "", 0, 0, 0, 512, 1, 219, 716, TRUE)/* (1) * R_[179]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.n.i", "", "", 
  0, 0, 0, 512, -1, 219, 718, TRUE)/* (-1) * R_[179]*/
DECLARE_VARIABLE("servo.dcac.vLoad[3]", "", "", 0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.dcac.vLoad[2]", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.dcac.vLoad[1]", "", "", 0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("servo.dcac.iLoad[3]", "", "", 0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * R_[147]*/
DECLARE_VARIABLE("servo.dcac.iLoad[2]", "", "", 0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * R_[142]*/
DECLARE_VARIABLE("servo.dcac.iLoad[1]", "", "", 0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * R_[137]*/
DECLARE_VARIABLE("servo.dcac.pSupply.i", "", "", 0, 0, 0, 512, -1, 433, 1318, TRUE)/* (-1) * R_[329]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[3].n.i", "", "", 0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * 
  R_[147]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[2].n.i", "", "", 0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * 
  R_[142]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[1].n.i", "", "", 0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * 
  R_[137]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[3].p.i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[2].p.i", "", "", 
  0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[1].p.i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[3].n.v", "", "", 
  0, 0, 0, 512, 1, 206, 688, TRUE)/* (1) * R_[172]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[2].n.v", "", "", 0, 0, 0, 512, 1, 205, 684, TRUE)/* (1) * R_[171]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[1].n.v", "", "", 
  0, 0, 0, 512, 1, 204, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[3].i", "", "", 0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[2].i", "", "", 
  0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[1].i", "", "", 0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[3].i", "", "", 
  0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[2].i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[1].i", "", "", 
  0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].p.i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].p.i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].p.i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].n.i", "", "", 
  0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].n.i", "", "", 0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].n.i", "", "", 
  0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.i[3]", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.i[2]", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.i[1]", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].i", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].i", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].i", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].n.i", "", "", 0, 0, 0, 512, -1, 163, 590, TRUE)/* (-1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].n.i", "", "", 0, 0, 0, 512, -1, 158, 570, TRUE)/* (-1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].n.i", "", "", 0, 0, 0, 512, -1, 153, 550, TRUE)/* (-1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.i[3]", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.i[2]", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.i[1]", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.permanentMagnet.spacePhasor_r.i_[1]", "", "", 0, 0, 0, 0, -1, 132, 470, TRUE)/* (-1) 
  * R_[117]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.support.tau", "", "", 0, 0, 0, 512, 1, 109, 384, TRUE)/* (1) * R_[96]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.flange_a.tau", "", "", 0, 0, 0, 512, -1, 109, 386, TRUE)/* (-1) * R_[96]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_r.i_[1]", "", "", 0, 0, 0, 0, 1, 132, 468, TRUE)/* (1) * R_[117]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_s.i_[2]", "", "", 
  0, 0, 0, 512, 1, 112, 396, TRUE)/* (1) * R_[99]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_s.i_[1]", "", "", 0, 0, 0, 512, 1, 111, 392, TRUE)/* (1) * R_[98]*/
DECLARE_VARIABLE("pmsm.PMSM.fixed.flange_b.phi", "", "", 
  0, 0, 0, 0, 1, 89, 316, TRUE)/* (1) * R_[79]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.flange_b.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.flange_a.phi", "", "", 
  0, 0, 0, 512, 1, 487, 1516, TRUE)/* (1) * R_[379]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.flange_b.phi", "", "", 0, 0, 0, 512, 1, 489, 1524, TRUE)/* 
  (1) * R_[381]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia1.flange_a.phi", "", "", 0, 0, 0, 512, 1, 489, 1524, TRUE)/* 
  (1) * R_[381]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.flange_b.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* 
  (1) * R_[379]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.inertia.flange_a.phi", "", "", 0, 0, 0, 512, 1, 487, 1516, TRUE)/* 
  (1) * R_[379]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.spring.flange_a.tau", "", "", 0, 0, 0, 512, -1, 13, 50, TRUE)/* 
  (-1) * R_[12]*/
DECLARE_VARIABLE("x_axis_mechnical_model.coupling.spring.flange_b.tau", "", "", 0, 0, 0, 512, 1, 13, 48, TRUE)/* 
  (1) * R_[12]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_rr[1]", "", "", 0, 0, 0, 0, 1, 132, 468, TRUE)/* (1) * R_[117]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_rs[2]", "", "", 0, 0, 0, 512, 1, 114, 404, TRUE)/* (1) * R_[101]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_rs[1]", "", "", 0, 0, 0, 512, 1, 113, 400, TRUE)/* (1) * R_[100]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_sr[2]", "", "", 0, 0, 0, 512, 1, 494, 1544, TRUE)/* (1) * R_[386]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_sr[1]", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_ss[2]", "", "", 0, 0, 0, 512, 1, 112, 396, TRUE)/* (1) * R_[99]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_ss[1]", "", "", 0, 0, 0, 512, 1, 111, 392, TRUE)/* (1) * R_[98]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.zero.i", "", "", 0, 0, 0, 512, 1, 106, 376, TRUE)/* (1) * R_[94]*/
DECLARE_VARIABLE("pmsm.PMSM.is[3]", "", "", 0, 0, 0, 512, 1, 163, 588, TRUE)/* (1) * R_[147]*/
DECLARE_VARIABLE("pmsm.PMSM.is[2]", "", "", 0, 0, 0, 512, 1, 158, 568, TRUE)/* (1) * R_[142]*/
DECLARE_VARIABLE("pmsm.PMSM.is[1]", "", "", 0, 0, 0, 512, 1, 153, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("pmsm.PMSM.tau_shaft", "", "", 0, 0, 0, 512, -1, 84, 298, TRUE)/* (-1) * R_[74]*/
DECLARE_VARIABLE("pmsm.PMSM.tau_electrical", "", "", 0, 0, 0, 512, 1, 109, 384, TRUE)/* (1) * R_[96]*/
END_DECLARE_VARIABLE(0)
END_DECLARE_ALL_VARIABLE(1,13)
