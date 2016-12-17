#include "model_desc_types.h"
#include "varinfo.h"
BEGIN_DECLARE_ALL_VARIABLE
PRE_DECLARE_VARIABLE(0)
BEGIN_DECLARE_VARIABLE(0)
DECLARE_VARIABLE("servo.Udc", "", "", 311, 0, 0, 0, 0, 0, 0, TRUE)/*R_[0]*/
DECLARE_VARIABLE("servo.T_PWM", "", "", 1.e-004, 0, 0, 0, 0, 1, 4, TRUE)/*R_[1]*/
DECLARE_VARIABLE("servo.p", "", "", 1, 0, 0, 64, 0, 0, 0, TRUE)/*I_[0]*/
DECLARE_VARIABLE("servo.VCellNominal", "", "", 311, 0, 0, 0, 0, 2, 8, TRUE)/*R_[2]*/
DECLARE_VARIABLE("servo.ICellMax", "", "", 800, 0, 0, 0, 0, 3, 12, TRUE)/*R_[3]*/
DECLARE_VARIABLE("servo.RsCell", "", "", 6.e-003, 0, 0, 0, 0, 4, 16, TRUE)/*R_[4]*/
DECLARE_VARIABLE("servo.nsBatt", "", "", 1, 0, 1, 64, 0, 1, 4, TRUE)/*I_[1]*/
DECLARE_VARIABLE("servo.npBatt", "", "", 1, 0, 1, 64, 0, 2, 8, TRUE)/*I_[2]*/
DECLARE_VARIABLE("servo.IConverterMax", "", "", 400, 0, 0, 0, 0, 5, 20, TRUE)/*R_[5]*/
DECLARE_VARIABLE("servo.ks", "", "", 60, 0, 0, 0, 0, 6, 24, TRUE)/*R_[6]*/
DECLARE_VARIABLE("servo.kv", "", "", 0.5, 0, 0, 0, 0, 7, 28, TRUE)/*R_[7]*/
DECLARE_VARIABLE("servo.Tv", "", "", 1.5e-002, 0, 0, 0, 0, 8, 32, TRUE)/*R_[8]*/
DECLARE_VARIABLE("servo.kq", "", "", 0, 0, 0, 0, 0, 9, 36, TRUE)/*R_[9]*/
DECLARE_VARIABLE("servo.Tq", "", "", 0, 0, 0, 0, 0, 10, 40, TRUE)/*R_[10]*/
DECLARE_VARIABLE("servo.kd", "", "", 2.7432, 0, 0, 0, 0, 11, 44, TRUE)/*R_[11]*/
DECLARE_VARIABLE("servo.Td", "", "", 4.085e-003, 0, 0, 0, 0, 12, 48, TRUE)/*R_[12]*/
DECLARE_VARIABLE("servo.uMax1", "", "", 200, 0, 0, 0, 0, 13, 52, TRUE)/*R_[13]*/
DECLARE_VARIABLE("servo.uMax2", "", "", 200, 0, 0, 0, 0, 14, 56, TRUE)/*R_[14]*/
DECLARE_VARIABLE("servo.uMax3", "", "", 1000, 0, 0, 0, 0, 15, 60, TRUE)/*R_[15]*/
DECLARE_VARIABLE("servo.currentsensor.m", "", "", 3, 0, 1, 64, 0, 3, 1, TRUE)/*CI_[0]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.m", "", "", 3, 0, 1, 64, 0, 4, 5, TRUE)/*CI_[1]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.m", "", "", 3, 0, 1, 64, 0, 5, 9, TRUE)/*CI_[2]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[1].p.v", "", "", 0, 0, 0, 512, 0, 16, 64, TRUE)/*R_[16]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[2].p.v", "", "", 0, 0, 0, 512, 0, 17, 68, TRUE)/*R_[17]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[3].p.v", "", "", 0, 0, 0, 512, 0, 18, 72, TRUE)/*R_[18]*/
DECLARE_VARIABLE("servo.dcac.pSupply.v", "", "", 0, 0, 0, 512, 0, 19, 76, TRUE)/*R_[19]*/
DECLARE_VARIABLE("servo.dcac.nSupply.v", "", "", 0, 0, 0, 0, 0, 20, 1, TRUE)/*CR_[0]*/
DECLARE_VARIABLE("servo.dcac.nSupply.i", "", "", 0, 0, 0, 512, 0, 21, 80, TRUE)/*R_[20]*/
DECLARE_VARIABLE("servo.dcac.IConverterMax", "", "", 0, 0, 0, 0, 0, 22, 84, TRUE)/*R_[21]*/
DECLARE_VARIABLE("servo.dcac.powerSupply", "", "", 0, 0, 0, 512, 0, 23, 88, TRUE)/*R_[22]*/
DECLARE_VARIABLE("servo.dcac.pLoad.m", "", "", 3, 0, 1, 64, 0, 6, 13, TRUE)/*CI_[3]*/
DECLARE_VARIABLE("servo.dcac.powerLoad", "", "", 0, 0, 0, 512, 0, 24, 92, TRUE)/*R_[23]*/
DECLARE_VARIABLE("servo.dcac.RonSwitch", "", "", 1.e-005, 0, 0, 0, 0, 25, 5, TRUE)/*CR_[1]*/
DECLARE_VARIABLE("servo.dcac.GoffSwitch", "", "", 1.e-005, 0, 0, 0, 0, 26, 9, TRUE)/*CR_[2]*/
DECLARE_VARIABLE("servo.dcac.RonDiode", "", "", 1.e-005, 0, 0, 0, 0, 27, 13, TRUE)/*CR_[3]*/
DECLARE_VARIABLE("servo.dcac.GoffDiode", "", "", 1.e-005, 0, 0, 0, 0, 28, 17, TRUE)/*CR_[4]*/
DECLARE_VARIABLE("servo.dcac.VkneeDiode", "", "", 0, 0, 0, 0, 0, 29, 21, TRUE)/*CR_[5]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.v", "", "", 0, 0, 0, 512, 0, 30, 96, TRUE)/*R_[24]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.p.i", "", "", 0, 0, 0, 512, 0, 31, 100, TRUE)/*R_[25]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.Ron", "", "", 1.e-005, 0, 0, 0, 0, 32, 25, TRUE)/*CR_[6]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.Goff", "", "", 1.e-005, 0, 0, 0, 0, 33, 29, TRUE)/*CR_[7]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.s", "", "", 0, 0, 0, 512, 0, 34, 104, TRUE)/*R_[26]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.unitVoltage", "", "", 1, 0, 0, 0, 0, 35, 33, FALSE)/*CR_[8]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 36, 37, FALSE)/*CR_[9]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.v", "", "", 0, 0, 0, 512, 0, 37, 108, TRUE)/*R_[27]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.p.i", "", "", 0, 0, 0, 512, 0, 38, 112, TRUE)/*R_[28]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.Ron", "", "", 1.e-005, 0, 0, 0, 0, 39, 41, TRUE)/*CR_[10]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.Goff", "", "", 1.e-005, 0, 0, 0, 0, 40, 45, TRUE)/*CR_[11]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.s", "", "", 0, 0, 0, 512, 0, 41, 116, TRUE)/*R_[29]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.unitVoltage", "", "", 1, 0, 0, 0, 0, 42, 49, FALSE)/*CR_[12]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 43, 53, FALSE)/*CR_[13]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.v", "", "", 0, 0, 0, 512, 0, 44, 120, TRUE)/*R_[30]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.p.i", "", "", 0, 0, 0, 512, 0, 45, 124, TRUE)/*R_[31]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.Ron", "", "", 1.e-005, 0, 0, 0, 0, 46, 57, TRUE)/*CR_[14]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.Goff", "", "", 1.e-005, 0, 0, 0, 0, 47, 61, TRUE)/*CR_[15]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.s", "", "", 0, 0, 0, 512, 0, 48, 128, TRUE)/*R_[32]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.unitVoltage", "", "", 1, 0, 0, 0, 0, 49, 65, FALSE)/*CR_[16]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 50, 69, FALSE)/*CR_[17]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.p.i", "", "", 0, 0, 0, 512, 0, 51, 132, TRUE)/*R_[33]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.n.v", "", "", 0, 0, 0, 0, 0, 52, 73, TRUE)/*CR_[18]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.Ron", "", "", 1.e-005, 0, 0, 0, 0, 53, 77, TRUE)/*CR_[19]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.Goff", "", "", 1.e-005, 0, 0, 0, 0, 54, 81, TRUE)/*CR_[20]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.control", "", "", 0, 0, 0, 640, 0, 0, 0, TRUE)/*B_[0]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.s", "", "", 0, 0, 0, 512, 0, 55, 136, TRUE)/*R_[34]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.unitVoltage", "", "", 1, 0, 0, 0, 0, 56, 85, FALSE)/*CR_[21]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 57, 89, FALSE)/*CR_[22]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.p.i", "", "", 0, 0, 0, 512, 0, 58, 140, TRUE)/*R_[35]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.n.v", "", "", 0, 0, 0, 0, 0, 59, 93, TRUE)/*CR_[23]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.Ron", "", "", 1.e-005, 0, 0, 0, 0, 60, 97, TRUE)/*CR_[24]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.Goff", "", "", 1.e-005, 0, 0, 0, 0, 61, 101, TRUE)/*CR_[25]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.control", "", "", 
  0, 0, 0, 640, 0, 1, 4, TRUE)/*B_[1]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.s", "", "", 0, 0, 0, 512, 0, 62, 144, TRUE)/*R_[36]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.unitVoltage", "", "", 1, 0, 0, 0, 0, 63, 105, FALSE)/*CR_[26]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 64, 109, FALSE)/*CR_[27]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.p.i", "", "", 0, 0, 0, 512, 0, 65, 148, TRUE)/*R_[37]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.n.v", "", "", 0, 0, 0, 0, 0, 66, 113, TRUE)/*CR_[28]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.Ron", "", "", 1.e-005, 0, 0, 0, 0, 67, 117, TRUE)/*CR_[29]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.Goff", "", "", 1.e-005, 0, 0, 0, 0, 68, 121, TRUE)/*CR_[30]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.control", "", "", 
  0, 0, 0, 640, 0, 2, 8, TRUE)/*B_[2]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.s", "", "", 0, 0, 0, 512, 0, 69, 152, TRUE)/*R_[38]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.unitVoltage", "", "", 1, 0, 0, 0, 0, 70, 125, FALSE)/*CR_[31]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.unitCurrent", "", "", 
  1, 0, 0, 0, 0, 71, 129, FALSE)/*CR_[32]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.v", "", "", 0, 0, 0, 512, 0, 72, 156, TRUE)/*R_[39]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.p.i", "", "", 0, 0, 0, 512, 0, 73, 160, TRUE)/*R_[40]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.Ron", "", "", 1.e-005, 0, 0, 0, 0, 74, 133, TRUE)/*CR_[33]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.Goff", "", "", 1.e-005, 0, 0, 0, 0, 75, 137, TRUE)/*CR_[34]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.Vknee", "", "", 0, 0, 0, 0, 0, 76, 141, TRUE)/*CR_[35]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.off", "", "", 1, 0, 0, 640, 0, 3, 12, TRUE)/*B_[3]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.s", "", "", 0, 0, 0, 512, 0, 77, 164, TRUE)/*R_[41]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 78, 145, FALSE)/*CR_[36]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 79, 149, FALSE)/*CR_[37]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.v", "", "", 
  0, 0, 0, 512, 0, 80, 168, TRUE)/*R_[42]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.p.i", "", "", 0, 0, 0, 512, 0, 81, 172, TRUE)/*R_[43]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.Ron", "", "", 1.e-005, 0, 0, 0, 0, 82, 153, TRUE)/*CR_[38]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.Goff", "", "", 1.e-005, 0, 0, 0, 0, 83, 157, TRUE)/*CR_[39]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.Vknee", "", "", 0, 0, 0, 0, 0, 84, 161, TRUE)/*CR_[40]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.off", "", "", 1, 0, 0, 640, 0, 4, 16, TRUE)/*B_[4]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.s", "", "", 0, 0, 0, 512, 0, 85, 176, TRUE)/*R_[44]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 86, 165, FALSE)/*CR_[41]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 87, 169, FALSE)/*CR_[42]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.v", "", "", 
  0, 0, 0, 512, 0, 88, 180, TRUE)/*R_[45]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.p.i", "", "", 0, 0, 0, 512, 0, 89, 184, TRUE)/*R_[46]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.Ron", "", "", 1.e-005, 0, 0, 0, 0, 90, 173, TRUE)/*CR_[43]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.Goff", "", "", 1.e-005, 0, 0, 0, 0, 91, 177, TRUE)/*CR_[44]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.Vknee", "", "", 0, 0, 0, 0, 0, 92, 181, TRUE)/*CR_[45]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.off", "", "", 1, 0, 0, 640, 0, 5, 20, TRUE)/*B_[5]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.s", "", "", 0, 0, 0, 512, 0, 93, 188, TRUE)/*R_[47]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 94, 185, FALSE)/*CR_[46]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 95, 189, FALSE)/*CR_[47]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.p.v", "", "", 
  0, 0, 0, 0, 0, 96, 193, TRUE)/*CR_[48]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.p.i", "", "", 0, 0, 0, 512, 0, 97, 192, TRUE)/*R_[48]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.Ron", "", "", 1.e-005, 0, 0, 0, 0, 98, 197, TRUE)/*CR_[49]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.Goff", "", "", 1.e-005, 0, 0, 0, 0, 99, 201, TRUE)/*CR_[50]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.Vknee", "", "", 0, 0, 0, 0, 0, 100, 205, TRUE)/*CR_[51]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.off", "", "", 1, 0, 0, 640, 0, 6, 24, TRUE)/*B_[6]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.s", "", "", 0, 0, 0, 512, 0, 101, 196, TRUE)/*R_[49]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 102, 209, FALSE)/*CR_[52]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 103, 213, FALSE)/*CR_[53]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.p.v", "", "", 
  0, 0, 0, 0, 0, 104, 217, TRUE)/*CR_[54]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.p.i", "", "", 0, 0, 0, 512, 0, 105, 200, TRUE)/*R_[50]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.Ron", "", "", 1.e-005, 0, 0, 0, 0, 106, 221, TRUE)/*CR_[55]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.Goff", "", "", 1.e-005, 0, 0, 0, 0, 107, 225, TRUE)/*CR_[56]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.Vknee", "", "", 0, 0, 0, 0, 0, 108, 229, TRUE)/*CR_[57]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.off", "", "", 1, 0, 0, 640, 0, 7, 28, TRUE)/*B_[7]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.s", "", "", 0, 0, 0, 512, 0, 109, 204, TRUE)/*R_[51]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 110, 233, FALSE)/*CR_[58]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 111, 237, FALSE)/*CR_[59]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.p.v", "", "", 
  0, 0, 0, 0, 0, 112, 241, TRUE)/*CR_[60]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.p.i", "", "", 0, 0, 0, 512, 0, 113, 208, TRUE)/*R_[52]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.Ron", "", "", 1.e-005, 0, 0, 0, 0, 114, 245, TRUE)/*CR_[61]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.Goff", "", "", 1.e-005, 0, 0, 0, 0, 115, 249, TRUE)/*CR_[62]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.Vknee", "", "", 0, 0, 0, 0, 0, 116, 253, TRUE)/*CR_[63]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.off", "", "", 1, 0, 0, 640, 0, 8, 32, TRUE)/*B_[8]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.s", "", "", 0, 0, 0, 512, 0, 117, 212, TRUE)/*R_[53]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.unitVoltPerOhm", "", "", 1, 0, 0, 0, 0, 118, 257, FALSE)/*CR_[64]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.unitAmperePerSiemens", "", "", 1, 0, 0, 0, 0, 119, 261, FALSE)/*CR_[65]*/
DECLARE_VARIABLE("servo.dcac.voltageSensor.p.i", "", "", 
  0, 0, 0, 0, 0, 120, 265, TRUE)/*CR_[66]*/
DECLARE_VARIABLE("servo.dcac.voltageSensor.n.v", "", "", 0, 0, 0, 0, 0, 121, 269, TRUE)/*CR_[67]*/
DECLARE_VARIABLE("servo.dcac.voltageSensor.n.i", "", "", 0, 0, 0, 0, 0, 122, 273, TRUE)/*CR_[68]*/
DECLARE_VARIABLE("servo.park.i_alpha", "", "", 0, 0, 0, 512, 0, 123, 216, TRUE)/*R_[54]*/
DECLARE_VARIABLE("servo.park.i_beta", "", "", 0, 0, 0, 512, 0, 124, 220, TRUE)/*R_[55]*/
DECLARE_VARIABLE("servo.feedback4.u2", "", "", 0, 0, 0, 512, 0, 125, 224, TRUE)/*R_[56]*/
DECLARE_VARIABLE("servo.feedback3.u2", "", "", 0, 0, 0, 512, 0, 126, 228, TRUE)/*R_[57]*/
DECLARE_VARIABLE("servo.IdPI.u", "", "", 0, 0, 0, 512, 0, 127, 232, TRUE)/*R_[58]*/
DECLARE_VARIABLE("servo.IdPI.k", "", "", 0, 0, 0, 0, 0, 128, 236, TRUE)/*R_[59]*/
DECLARE_VARIABLE("servo.IdPI.T", "", "", 0, 0, 0, 0, 0, 129, 240, TRUE)/*R_[60]*/
DECLARE_VARIABLE("servo.IdPI.initType", "", "", 1, 4, 1, 64, 0, 7, 17, TRUE)/*CI_[4]*/
DECLARE_VARIABLE("servo.IdPI.x_start", "", "", 0, 0, 0, 0, 0, 130, 244, TRUE)/*R_[61]*/
DECLARE_VARIABLE("servo.IdPI.y_start", "", "", 0, 0, 0, 0, 0, 131, 248, TRUE)/*R_[62]*/
DECLARE_VARIABLE("servo.IqPI.u", "", "", 0, 0, 0, 512, 0, 132, 252, TRUE)/*R_[63]*/
DECLARE_VARIABLE("servo.IqPI.k", "", "", 0, 0, 0, 0, 0, 133, 256, TRUE)/*R_[64]*/
DECLARE_VARIABLE("servo.IqPI.T", "", "", 0, 0, 0, 0, 0, 134, 260, TRUE)/*R_[65]*/
DECLARE_VARIABLE("servo.IqPI.initType", "", "", 1, 4, 1, 64, 0, 8, 21, TRUE)/*CI_[5]*/
DECLARE_VARIABLE("servo.IqPI.x_start", "", "", 0, 0, 0, 0, 0, 135, 264, TRUE)/*R_[66]*/
DECLARE_VARIABLE("servo.IqPI.y_start", "", "", 0, 0, 0, 0, 0, 136, 268, TRUE)/*R_[67]*/
DECLARE_VARIABLE("servo.rPark1.V_d", "", "", 0, 0, 0, 512, 0, 137, 272, TRUE)/*R_[68]*/
DECLARE_VARIABLE("servo.rPark1.V_q", "", "", 0, 0, 0, 512, 0, 138, 276, TRUE)/*R_[69]*/
DECLARE_VARIABLE("servo.rPark1.V_alpha", "", "", 0, 0, 0, 512, 0, 139, 280, TRUE)/*R_[70]*/
DECLARE_VARIABLE("servo.rPark1.V_beta", "", "", 0, 0, 0, 512, 0, 140, 284, TRUE)/*R_[71]*/
DECLARE_VARIABLE("servo.VqLimiter.u", "", "", 0, 0, 0, 512, 0, 141, 288, TRUE)/*R_[72]*/
DECLARE_VARIABLE("servo.VqLimiter.uMax", "", "", 0, 0, 0, 0, 0, 142, 292, TRUE)/*R_[73]*/
DECLARE_VARIABLE("servo.VqLimiter.uMin", "", "", 0, 0, 0, 0, 0, 143, 296, TRUE)/*R_[74]*/
DECLARE_VARIABLE("servo.VqLimiter.limitsAtInit", "", "", 1, 0, 0, 128, 0, 9, 36, TRUE)/*B_[9]*/
DECLARE_VARIABLE("servo.VdLimiter.u", "", "", 0, 0, 0, 512, 0, 144, 300, TRUE)/*R_[75]*/
DECLARE_VARIABLE("servo.VdLimiter.uMax", "", "", 0, 0, 0, 0, 0, 145, 304, TRUE)/*R_[76]*/
DECLARE_VARIABLE("servo.VdLimiter.uMin", "", "", 0, 0, 0, 0, 0, 146, 308, TRUE)/*R_[77]*/
DECLARE_VARIABLE("servo.VdLimiter.limitsAtInit", "", "", 1, 0, 0, 128, 0, 10, 40, TRUE)/*B_[10]*/
DECLARE_VARIABLE("servo.gain.k", "", "", 0, 0, 0, 0, 0, 147, 312, TRUE)/*R_[78]*/
DECLARE_VARIABLE("servo.gain.y", "", "", 0, 0, 0, 512, 0, 148, 316, TRUE)/*R_[79]*/
DECLARE_VARIABLE("servo.id.k", "", "", 0, 0, 0, 0, 0, 149, 320, TRUE)/*R_[80]*/
DECLARE_VARIABLE("servo.IqLimiter.u", "", "", 0, 0, 0, 512, 0, 150, 324, TRUE)/*R_[81]*/
DECLARE_VARIABLE("servo.IqLimiter.y", "", "", 0, 0, 0, 512, 0, 151, 328, TRUE)/*R_[82]*/
DECLARE_VARIABLE("servo.IqLimiter.uMax", "", "", 0, 0, 0, 0, 0, 152, 332, TRUE)/*R_[83]*/
DECLARE_VARIABLE("servo.IqLimiter.uMin", "", "", 0, 0, 0, 0, 0, 153, 336, TRUE)/*R_[84]*/
DECLARE_VARIABLE("servo.IqLimiter.limitsAtInit", "", "", 1, 0, 0, 128, 0, 11, 44, TRUE)/*B_[11]*/
DECLARE_VARIABLE("servo.vPI.u", "", "", 0, 0, 0, 512, 0, 154, 340, TRUE)/*R_[85]*/
DECLARE_VARIABLE("servo.vPI.k", "", "", 0, 0, 0, 0, 0, 155, 344, TRUE)/*R_[86]*/
DECLARE_VARIABLE("servo.vPI.T", "", "", 0, 0, 0, 0, 0, 156, 348, TRUE)/*R_[87]*/
DECLARE_VARIABLE("servo.vPI.initType", "", "", 1, 4, 1, 64, 0, 9, 25, TRUE)/*CI_[6]*/
DECLARE_VARIABLE("servo.vPI.x_start", "", "", 0, 0, 0, 0, 0, 157, 352, TRUE)/*R_[88]*/
DECLARE_VARIABLE("servo.vPI.y_start", "", "", 0, 0, 0, 0, 0, 158, 356, TRUE)/*R_[89]*/
DECLARE_VARIABLE("servo.feedback1.u1", "", "", 0, 0, 0, 512, 0, 159, 360, TRUE)/*R_[90]*/
DECLARE_VARIABLE("servo.feedback1.y", "", "", 0, 0, 0, 512, 0, 160, 364, TRUE)/*R_[91]*/
DECLARE_VARIABLE("servo.svpwm1.Udc", "", "", 0, 0, 0, 0, 0, 161, 368, TRUE)/*R_[92]*/
DECLARE_VARIABLE("servo.svpwm1.T_PWM", "", "", 0, 0, 0, 0, 0, 162, 372, TRUE)/*R_[93]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain.k", "", "", 1.732050807568877, 0, 0, 0, 0, 163, 376, TRUE)/*R_[94]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain.y", "", "", 
  0, 0, 0, 512, 0, 164, 380, TRUE)/*R_[95]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain1.k", "", "", 0.5773502691896257, 0, 0, 0, 0, 165, 384, TRUE)/*R_[96]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add.u1", "", "", 
  0, 0, 0, 512, 0, 166, 388, TRUE)/*R_[97]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add.y", "", "", 0, 0, 0, 512, 0, 167, 392, TRUE)/*R_[98]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add.k1", "", "", 1, 0, 0, 0, 0, 168, 396, TRUE)/*R_[99]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add.k2", "", "", 1, 0, 0, 0, 0, 169, 400, TRUE)/*R_[100]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add1.y", "", "", 0, 0, 0, 512, 0, 170, 404, TRUE)/*R_[101]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add1.k1", "", "", 1, 0, 0, 0, 0, 171, 408, TRUE)/*R_[102]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add1.k2", "", "", -1, 0, 0, 0, 0, 172, 412, TRUE)/*R_[103]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division.u1", "", "", 0, 0, 0, 512, 0, 173, 416, TRUE)/*R_[104]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division1.u1", "", "", 0, 0, 0, 512, 0, 174, 420, TRUE)/*R_[105]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division1.y", "", "", 0, 0, 0, 512, 0, 175, 424, TRUE)/*R_[106]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division2.u1", "", "", 0, 0, 0, 512, 0, 176, 428, TRUE)/*R_[107]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division2.y", "", "", 0, 0, 0, 512, 0, 177, 432, TRUE)/*R_[108]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain2.k", "", "", 1.5, 0, 0, 0, 0, 178, 436, TRUE)/*R_[109]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain3.k", "", "", 1.5, 0, 0, 0, 0, 179, 440, TRUE)/*R_[110]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.X", "", "", 0, 0, 0, 512, 0, 180, 444, TRUE)/*R_[111]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.Y", "", "", 0, 0, 0, 512, 0, 181, 448, TRUE)/*R_[112]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.Z", "", "", 0, 0, 0, 512, 0, 182, 452, TRUE)/*R_[113]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.T1", "", "", 0, 0, 0, 512, 0, 183, 456, TRUE)/*R_[114]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.T2", "", "", 0, 0, 0, 512, 0, 184, 460, TRUE)/*R_[115]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.Temp1", "", "", 0, 0, 0, 512, 0, 185, 464, TRUE)/*R_[116]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.Temp2", "", "", 0, 0, 0, 512, 0, 186, 468, TRUE)/*R_[117]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.Ta", "", "", 0, 0, 0, 512, 0, 187, 472, TRUE)/*R_[118]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.Tb", "", "", 0, 0, 0, 512, 0, 188, 476, TRUE)/*R_[119]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.Tc", "", "", 0, 0, 0, 512, 0, 189, 480, TRUE)/*R_[120]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain.k", "", "", 0.5, 0, 0, 0, 0, 190, 484, TRUE)/*R_[121]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain1.k", "", "", 0.5, 0, 0, 0, 0, 191, 488, TRUE)/*R_[122]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.k1", "", "", -1, 0, 0, 0, 0, 192, 492, TRUE)/*R_[123]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.k2", "", "", -1, 0, 0, 0, 0, 193, 496, TRUE)/*R_[124]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.k3", "", "", 1, 0, 0, 0, 0, 194, 500, TRUE)/*R_[125]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.y", "", "", 0, 0, 0, 512, 0, 195, 504, TRUE)/*R_[126]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain2.k", "", "", 0.25, 0, 0, 0, 0, 196, 508, TRUE)/*R_[127]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add.u1", "", "", 0, 0, 0, 512, 0, 197, 512, TRUE)/*R_[128]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add.k1", "", "", 1, 0, 0, 0, 0, 198, 516, TRUE)/*R_[129]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add.k2", "", "", 1, 0, 0, 0, 0, 199, 520, TRUE)/*R_[130]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add1.u1", "", "", 0, 0, 0, 512, 0, 200, 524, TRUE)/*R_[131]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add1.k1", "", "", 1, 0, 0, 0, 0, 201, 528, TRUE)/*R_[132]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add1.k2", "", "", 1, 0, 0, 0, 0, 202, 532, TRUE)/*R_[133]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.N", "", "", 0, 0, 0, 576, 0, 10, 12, TRUE)/*I_[3]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Ta", "", "", 0, 0, 0, 512, 0, 203, 536, TRUE)/*R_[134]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Tb", "", "", 0, 0, 0, 512, 0, 204, 540, TRUE)/*R_[135]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Tc", "", "", 0, 0, 0, 512, 0, 205, 544, TRUE)/*R_[136]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Tcm1", "", "", 0, 0, 0, 512, 0, 206, 548, TRUE)/*R_[137]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Tcm2", "", "", 0, 0, 0, 512, 0, 207, 552, TRUE)/*R_[138]*/
DECLARE_VARIABLE("servo.svpwm1.tabc_tcm.Tcm3", "", "", 0, 0, 0, 512, 0, 208, 556, TRUE)/*R_[139]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.T_PWM", "", "", 1.e-004, 0, 1.e-060, 0, 0, 209, 560, TRUE)/*R_[140]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.amplitude", "", "", 2, 0, 0, 0, 0, 210, 564, TRUE)/*R_[141]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.width", "", "", 50, 100, 1.e-060, 0, 0, 211, 568, TRUE)/*R_[142]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.period", "", "", 0, 0, 1.e-060, 0, 0, 212, 572, TRUE)/*R_[143]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.offset", "", "", -1, 0, 0, 0, 0, 213, 576, TRUE)/*R_[144]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.startTime", "", "", 0, 0, 0, 0, 0, 214, 580, TRUE)/*R_[145]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.T0", "", "", 0, 0, 0, 512, 0, 215, 584, TRUE)/*R_[146]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.T_width", "", "", 0, 0, 0, 0, 0, 216, 588, TRUE)/*R_[147]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.u", "", "", 0, 0, 0, 512, 0, 217, 592, TRUE)/*R_[148]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.k", "", "", 1, 0, 0, 0, 0, 218, 596, TRUE)/*R_[149]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.initType", "", "", 3, 4, 1, 64, 0, 11, 29, TRUE)/*CI_[7]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.y_start", "", "", 0, 0, 0, 0, 0, 219, 600, TRUE)/*R_[150]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.nin", "", "", 2, 0, 0, 64, 0, 12, 33, TRUE)/*CI_[8]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.k[1]", "", "", 1, 0, 0, 0, 0, 220, 604, TRUE)/*R_[151]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.k[2]", "", "", -1, 0, 0, 0, 0, 221, 608, TRUE)/*R_[152]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.nin", "", "", 2, 0, 0, 64, 0, 13, 37, TRUE)/*CI_[9]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.k[1]", "", "", 1, 0, 0, 0, 0, 222, 612, TRUE)/*R_[153]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.k[2]", "", "", -1, 0, 0, 0, 0, 223, 616, TRUE)/*R_[154]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.nin", "", "", 2, 0, 0, 64, 0, 14, 41, TRUE)/*CI_[10]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.k[1]", "", "", 1, 0, 0, 0, 0, 224, 620, TRUE)/*R_[155]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.k[2]", "", "", -1, 0, 0, 0, 0, 225, 624, TRUE)/*R_[156]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.uLow", "", "", 1.e-015, 0, 0, 0, 0, 226, 628, TRUE)/*R_[157]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.uHigh", "", "", 1.e-015, 0, 0, 0, 0, 227, 632, TRUE)/*R_[158]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.pre_y_start", "", "", 
  0, 0, 0, 128, 0, 12, 48, TRUE)/*B_[12]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.u", "", "", 0, 0, 0, 512, 0, 228, 636, TRUE)/*R_[159]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis1.y", "", "", 0, 0, 0, 640, 0, 13, 52, TRUE)/*B_[13]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.uLow", "", "", 1.e-015, 0, 0, 0, 0, 229, 640, TRUE)/*R_[160]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.uHigh", "", "", 1.e-015, 0, 0, 0, 0, 230, 644, TRUE)/*R_[161]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.pre_y_start", "", "", 
  0, 0, 0, 128, 0, 14, 56, TRUE)/*B_[14]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.u", "", "", 0, 0, 0, 512, 0, 231, 648, TRUE)/*R_[162]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis2.y", "", "", 0, 0, 0, 640, 0, 15, 60, TRUE)/*B_[15]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.uLow", "", "", 1.e-015, 0, 0, 0, 0, 232, 652, TRUE)/*R_[163]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.uHigh", "", "", 1.e-015, 0, 0, 0, 0, 233, 656, TRUE)/*R_[164]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.pre_y_start", "", "", 
  0, 0, 0, 128, 0, 16, 64, TRUE)/*B_[16]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.u", "", "", 0, 0, 0, 512, 0, 234, 660, TRUE)/*R_[165]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.hysteresis3.y", "", "", 0, 0, 0, 640, 0, 17, 68, TRUE)/*B_[17]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.N", "", "", 0, 0, 0, 576, 0, 15, 16, TRUE)/*I_[4]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.vb", "", "", 0, 0, 0, 512, 0, 235, 664, TRUE)/*R_[166]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.vc", "", "", 0, 0, 0, 512, 0, 236, 668, TRUE)/*R_[167]*/
DECLARE_VARIABLE("servo.svpwm1.Ux.k", "", "", 0, 0, 0, 0, 0, 237, 672, TRUE)/*R_[168]*/
DECLARE_VARIABLE("servo.svpwm1.T.k", "", "", 0, 0, 0, 0, 0, 238, 676, TRUE)/*R_[169]*/
DECLARE_VARIABLE("servo.feedback2.u1", "", "", 0, 0, 0, 512, 0, 239, 680, TRUE)/*R_[170]*/
DECLARE_VARIABLE("servo.negativeplug.m", "", "", 3, 0, 1, 64, 0, 16, 45, TRUE)/*CI_[11]*/
DECLARE_VARIABLE("servo.gain1.k", "", "", 0, 0, 0, 0, 0, 240, 684, TRUE)/*R_[171]*/
DECLARE_VARIABLE("servo.batteryideal.n.v", "", "", 0, 0, 0, 0, 0, 241, 277, TRUE)/*CR_[69]*/
DECLARE_VARIABLE("servo.batteryideal.ns", "", "", 1, 0, 1, 64, 0, 17, 20, TRUE)/*I_[5]*/
DECLARE_VARIABLE("servo.batteryideal.np", "", "", 1, 0, 1, 64, 0, 18, 24, TRUE)/*I_[6]*/
DECLARE_VARIABLE("servo.batteryideal.vCell", "", "", 0, 0, 0, 512, 0, 242, 688, TRUE)/*R_[172]*/
DECLARE_VARIABLE("servo.batteryideal.iCell", "", "", 0, 0, 0, 512, 0, 243, 692, TRUE)/*R_[173]*/
DECLARE_VARIABLE("servo.batteryideal.powerCell", "", "", 0, 0, 0, 512, 0, 244, 696, TRUE)/*R_[174]*/
DECLARE_VARIABLE("servo.batteryideal.iPackage", "", "", 0, 0, 0, 512, 0, 245, 700, TRUE)/*R_[175]*/
DECLARE_VARIABLE("servo.batteryideal.powerPackage", "", "", 0, 0, 0, 512, 0, 246, 704, TRUE)/*R_[176]*/
DECLARE_VARIABLE("servo.batteryideal.VCellNominal", "", "", 0, 0, 0, 0, 0, 247, 708, TRUE)/*R_[177]*/
DECLARE_VARIABLE("servo.batteryideal.ICellMax", "", "", 0, 0, 0, 0, 0, 248, 712, TRUE)/*R_[178]*/
DECLARE_VARIABLE("servo.batteryideal.RsCell", "", "", 0, 0, 0, 0, 0, 249, 716, TRUE)/*R_[179]*/
DECLARE_VARIABLE("servo.batteryideal.RsPackage", "", "", 0, 0, 0, 0, 0, 250, 720, TRUE)/*R_[180]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.v", "", "", 0, 0, 0, 512, 0, 251, 724, TRUE)/*R_[181]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.R", "", "", 0, 0, 0, 0, 0, 252, 728, TRUE)/*R_[182]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.n.v", "", "", 0, 0, 0, 0, 0, 253, 281, TRUE)/*CR_[70]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.V", "", "", 0, 0, 0, 0, 0, 254, 732, TRUE)/*R_[183]*/
DECLARE_VARIABLE("servo.ground.p.v", "", "", 0, 0, 0, 0, 0, 255, 285, TRUE)/*CR_[71]*/
DECLARE_VARIABLE("servo.ground.p.i", "", "", 0, 0, 0, 512, 0, 256, 736, TRUE)/*R_[184]*/
DECLARE_VARIABLE("servo.anglesensor.flange_a.tau", "", "", 0, 0, 0, 0, 0, 257, 289, TRUE)/*CR_[72]*/
DECLARE_VARIABLE("servo.flange_a.tau", "", "", 0, 0, 0, 0, 0, 258, 293, TRUE)/*CR_[73]*/
DECLARE_VARIABLE("pmsm.p", "", "", 1, 0, 0, 64, 0, 19, 28, TRUE)/*I_[7]*/
DECLARE_VARIABLE("pmsm.V0", "", "", 110, 0, 0, 0, 0, 259, 740, TRUE)/*R_[185]*/
DECLARE_VARIABLE("pmsm.INominal", "", "", 6, 0, 0, 0, 0, 260, 744, TRUE)/*R_[186]*/
DECLARE_VARIABLE("pmsm.fNominal", "", "", 50, 0, 0, 0, 0, 261, 748, TRUE)/*R_[187]*/
DECLARE_VARIABLE("pmsm.Jr", "", "", 0.915, 0, 0, 0, 0, 262, 752, TRUE)/*R_[188]*/
DECLARE_VARIABLE("pmsm.nNominal", "", "", 3000, 0, 0, 0, 0, 263, 756, TRUE)/*R_[189]*/
DECLARE_VARIABLE("pmsm.tauNominal", "", "", 5, 0, 0, 0, 0, 264, 760, TRUE)/*R_[190]*/
DECLARE_VARIABLE("pmsm.Tm", "", "", 2.24e-003, 0, 0, 0, 0, 265, 764, TRUE)/*R_[191]*/
DECLARE_VARIABLE("pmsm.Ti", "", "", 4.085e-003, 0, 0, 0, 0, 266, 768, TRUE)/*R_[192]*/
DECLARE_VARIABLE("pmsm.Rs", "", "", 0.3567, 0, 0, 0, 0, 267, 772, TRUE)/*R_[193]*/
DECLARE_VARIABLE("pmsm.Lssigma", "", "", 1.06e-004, 0, 0, 0, 0, 268, 776, TRUE)/*R_[194]*/
DECLARE_VARIABLE("pmsm.Lmd", "", "", 2.316e-003, 0, 0, 0, 0, 269, 780, TRUE)/*R_[195]*/
DECLARE_VARIABLE("pmsm.Lmq", "", "", 2.316e-003, 0, 0, 0, 0, 270, 784, TRUE)/*R_[196]*/
DECLARE_VARIABLE("pmsm.PMSM.J_Rotor", "", "", 0, 0, 0, 0, 0, 271, 788, TRUE)/*R_[197]*/
DECLARE_VARIABLE("pmsm.PMSM.useSupport", "", "", 0, 0, 0, 128, 0, 18, 1, TRUE)/*CB_[0]*/
DECLARE_VARIABLE("pmsm.PMSM.J_Stator", "", "", 0, 0, 0, 0, 0, 272, 792, TRUE)/*R_[198]*/
DECLARE_VARIABLE("pmsm.PMSM.phi_mechanical", "", "", 0, 0, 0, 512, 0, 273, 796, TRUE)/*R_[199]*/
DECLARE_VARIABLE("pmsm.PMSM.rpm_mechanical", "", "", 0, 0, 0, 512, 0, 274, 800, TRUE)/*R_[200]*/
DECLARE_VARIABLE("pmsm.PMSM.flange_a.tau", "", "", 0, 0, 0, 512, 0, 275, 804, TRUE)/*R_[201]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.J", "", "", 0, 0, 0, 0, 0, 276, 808, TRUE)/*R_[202]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.initType", "", "", 1, 9, 1, 64, 0, 20, 49, TRUE)/*CI_[12]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.phi_start", "", "", 0, 0, 0, 0, 0, 277, 812, TRUE)/*R_[203]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.w_start", "", "", 0, 0, 0, 0, 0, 278, 816, TRUE)/*R_[204]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.a_start", "", "", 0, 0, 0, 0, 0, 279, 820, TRUE)/*R_[205]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.stateSelection", "", "", 3, 5, 1, 64, 0, 21, 53, TRUE)/*CI_[13]*/
DECLARE_VARIABLE("pmsm.PMSM.fixed.phi0", "", "", 0, 0, 0, 0, 0, 280, 824, TRUE)/*R_[206]*/
DECLARE_VARIABLE("pmsm.PMSM.internalSupport.tau", "", "", 0, 0, 0, 0, 0, 281, 297, TRUE)/*CR_[74]*/
DECLARE_VARIABLE("pmsm.PMSM.pi", "", "", 3.141592653589793, 0, 0, 0, 0, 282, 301, TRUE)/*CR_[75]*/
DECLARE_VARIABLE("pmsm.PMSM.m", "", "", 3, 0, 0, 64, 0, 22, 57, TRUE)/*CI_[14]*/
DECLARE_VARIABLE("pmsm.PMSM.p", "", "", 0, 0, 1, 64, 0, 23, 32, TRUE)/*I_[8]*/
DECLARE_VARIABLE("pmsm.PMSM.vs[1]", "", "", 0, 0, 0, 512, 0, 283, 828, TRUE)/*R_[207]*/
DECLARE_VARIABLE("pmsm.PMSM.vs[2]", "", "", 0, 0, 0, 512, 0, 284, 832, TRUE)/*R_[208]*/
DECLARE_VARIABLE("pmsm.PMSM.vs[3]", "", "", 0, 0, 0, 512, 0, 285, 836, TRUE)/*R_[209]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.m", "", "", 3, 0, 1, 64, 0, 24, 61, TRUE)/*CI_[15]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.m", "", "", 3, 0, 1, 64, 0, 25, 65, TRUE)/*CI_[16]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[1].v", "", "", 0, 0, 0, 512, 0, 286, 840, TRUE)/*R_[210]*/
DECLARE_VARIABLE("pmsm.PMSM.fNominal", "", "", 0, 0, 0, 0, 0, 287, 844, TRUE)/*R_[211]*/
DECLARE_VARIABLE("pmsm.PMSM.Rs", "", "", 0, 0, 0, 0, 0, 288, 848, TRUE)/*R_[212]*/
DECLARE_VARIABLE("pmsm.PMSM.Lssigma", "", "", 0, 0, 0, 0, 0, 289, 852, TRUE)/*R_[213]*/
DECLARE_VARIABLE("pmsm.PMSM.V0", "", "", 0, 0, 0, 0, 0, 290, 856, TRUE)/*R_[214]*/
DECLARE_VARIABLE("pmsm.PMSM.Lmd", "", "", 0, 0, 0, 0, 0, 291, 860, TRUE)/*R_[215]*/
DECLARE_VARIABLE("pmsm.PMSM.Lmq", "", "", 0, 0, 0, 0, 0, 292, 864, TRUE)/*R_[216]*/
DECLARE_VARIABLE("pmsm.PMSM.DamperCage", "", "", 0, 0, 0, 128, 0, 19, 5, TRUE)/*CB_[1]*/
DECLARE_VARIABLE("pmsm.PMSM.Lrsigma", "", "", 0, 0, 0, 0, 0, 293, 868, TRUE)/*R_[217]*/
DECLARE_VARIABLE("pmsm.PMSM.Lrsigmaq", "", "", 0, 0, 0, 0, 0, 294, 872, TRUE)/*R_[218]*/
DECLARE_VARIABLE("pmsm.PMSM.Rr", "", "", 4.e-002, 0, 0, 0, 0, 295, 876, TRUE)/*R_[219]*/
DECLARE_VARIABLE("pmsm.PMSM.Rrq", "", "", 0, 0, 0, 0, 0, 296, 880, TRUE)/*R_[220]*/
DECLARE_VARIABLE("pmsm.PMSM.i_0_s", "", "", 0, 0, 0, 512, 0, 297, 884, TRUE)/*R_[221]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_rr[2]", "", "", 0, 0, 0, 0, 0, 298, 305, TRUE)/*CR_[76]*/
DECLARE_VARIABLE("pmsm.PMSM.Ie", "", "", 0, 0, 0, 0, 0, 299, 888, TRUE)/*R_[222]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.m", "", "", 3, 0, 0, 64, 0, 26, 69, TRUE)/*CI_[17]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.p", "", "", 0, 0, 1, 64, 0, 27, 36, TRUE)/*I_[9]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.tau_electrical", "", "", 0, 0, 0, 512, 0, 300, 892, TRUE)/*R_[223]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.gamma", "", "", 0, 0, 0, 512, 0, 301, 896, TRUE)/*R_[224]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_ss[1]", "", "", 0, 0, 0, 512, 0, 302, 900, TRUE)/*R_[225]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_ss[2]", "", "", 0, 0, 0, 512, 0, 303, 904, TRUE)/*R_[226]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_rs[1]", "", "", 0, 0, 0, 512, 0, 304, 908, TRUE)/*R_[227]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_rs[2]", "", "", 0, 0, 0, 512, 0, 305, 912, TRUE)/*R_[228]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_rr[2]", "", "", 0, 0, 0, 0, 0, 306, 309, TRUE)/*CR_[77]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.psi_ms[1]", "", "", 0, 0, 0, 512, 0, 307, 916, TRUE)/*R_[229]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.psi_ms[2]", "", "", 0, 0, 0, 512, 0, 308, 920, TRUE)/*R_[230]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.psi_mr[1]", "", "", 0, 0, 0, 512, 0, 309, 924, TRUE)/*R_[231]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.psi_mr[2]", "", "", 0, 0, 0, 512, 0, 310, 928, TRUE)/*R_[232]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.RotationMatrix[1, 1]", "", "", 0, 0, 0, 512, 0, 311, 932, TRUE)/*R_[233]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.RotationMatrix[1, 2]", "", "", 0, 0, 0, 512, 0, 312, 936, TRUE)/*R_[234]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.RotationMatrix[2, 1]", "", "", 
  0, 0, 0, 512, 0, 313, 940, TRUE)/*R_[235]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.RotationMatrix[2, 2]", "", "", 0, 0, 0, 512, 0, 314, 944, TRUE)/*R_[236]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_r.i_[2]", "", "", 
  0, 0, 0, 0, 0, 315, 313, TRUE)/*CR_[78]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.Lmd", "", "", 0, 0, 0, 0, 0, 316, 948, TRUE)/*R_[237]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.Lmq", "", "", 0, 0, 0, 0, 0, 317, 952, TRUE)/*R_[238]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_mr[1]", "", "", 0, 0, 0, 512, 0, 318, 956, TRUE)/*R_[239]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.L[1, 1]", "", "", 0, 0, 0, 0, 0, 319, 960, TRUE)/*R_[240]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.L[1, 2]", "", "", 0, 0, 0, 0, 0, 320, 964, TRUE)/*R_[241]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.L[2, 1]", "", "", 0, 0, 0, 0, 0, 321, 968, TRUE)/*R_[242]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.L[2, 2]", "", "", 0, 0, 0, 0, 0, 322, 972, TRUE)/*R_[243]*/
DECLARE_VARIABLE("pmsm.PMSM.permanentMagnet.Ie", "", "", 0, 0, 0, 0, 0, 323, 976, TRUE)/*R_[244]*/
DECLARE_VARIABLE("pmsm.PMSM.permanentMagnet.spacePhasor_r.i_[2]", "", "", 0, 0, 0, 0, 0, 324, 317, TRUE)/*CR_[79]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.m", "", "", 
  3, 0, 1, 64, 0, 28, 73, TRUE)/*CI_[18]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.v[1]", "", "", 0, 0, 0, 512, 0, 325, 980, TRUE)/*R_[245]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.v[2]", "", "", 0, 0, 0, 512, 0, 326, 984, TRUE)/*R_[246]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.v[3]", "", "", 0, 0, 0, 512, 0, 327, 988, TRUE)/*R_[247]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.m", "", "", 3, 0, 1, 64, 0, 29, 77, TRUE)/*CI_[19]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.m", "", "", 3, 0, 1, 64, 0, 30, 81, TRUE)/*CI_[20]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.R[1]", "", "", 0, 0, 0, 0, 0, 328, 992, TRUE)/*R_[248]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.R[2]", "", "", 0, 0, 0, 0, 0, 329, 996, TRUE)/*R_[249]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.R[3]", "", "", 0, 0, 0, 0, 0, 330, 1000, TRUE)/*R_[250]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].v", "", "", 0, 0, 0, 512, 0, 331, 1004, TRUE)/*R_[251]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].R", "", "", 0, 0, 0, 0, 0, 332, 1008, TRUE)/*R_[252]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].v", "", "", 0, 0, 0, 512, 0, 333, 1012, TRUE)/*R_[253]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].R", "", "", 0, 0, 0, 0, 0, 334, 1016, TRUE)/*R_[254]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].v", "", "", 0, 0, 0, 512, 0, 335, 1020, TRUE)/*R_[255]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].R", "", "", 0, 0, 0, 0, 0, 336, 1024, TRUE)/*R_[256]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.m", "", "", 3, 0, 1, 64, 0, 31, 85, TRUE)/*CI_[21]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.v[1]", "", "", 0, 0, 0, 512, 0, 337, 1028, TRUE)/*R_[257]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.v[2]", "", "", 0, 0, 0, 512, 0, 338, 1032, TRUE)/*R_[258]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.v[3]", "", "", 0, 0, 0, 512, 0, 339, 1036, TRUE)/*R_[259]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.m", "", "", 3, 0, 1, 64, 0, 32, 89, TRUE)/*CI_[22]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.m", "", "", 3, 0, 1, 64, 0, 33, 93, TRUE)/*CI_[23]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.L[1]", "", "", 0, 0, 0, 0, 0, 340, 1040, TRUE)/*R_[260]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.L[2]", "", "", 0, 0, 0, 0, 0, 341, 1044, TRUE)/*R_[261]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.L[3]", "", "", 0, 0, 0, 0, 0, 342, 1048, TRUE)/*R_[262]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].v", "", "", 0, 0, 0, 512, 0, 343, 1052, TRUE)/*R_[263]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].i", "", "", 0, 0, 0, 512, 0, 344, 1056, TRUE)/*R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].p.v", "", "", 0, 0, 0, 512, 0, 345, 1060, TRUE)/*R_[265]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].n.v", "", "", 0, 0, 0, 512, 0, 346, 1064, TRUE)/*R_[266]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].L", "", "", 0, 0, 0, 0, 0, 347, 1068, TRUE)/*R_[267]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].v", "", "", 0, 0, 0, 512, 0, 348, 1072, TRUE)/*R_[268]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].i", "", "", 0, 0, 0, 512, 0, 349, 1076, TRUE)/*R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].p.v", "", "", 0, 0, 0, 512, 0, 350, 1080, TRUE)/*R_[270]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].n.v", "", "", 0, 0, 0, 512, 0, 351, 1084, TRUE)/*R_[271]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].L", "", "", 0, 0, 0, 0, 0, 352, 1088, TRUE)/*R_[272]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].v", "", "", 0, 0, 0, 512, 0, 353, 1092, TRUE)/*R_[273]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].i", "", "", 0, 0, 0, 512, 0, 354, 1096, TRUE)/*R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].p.v", "", "", 0, 0, 0, 512, 0, 355, 1100, TRUE)/*R_[275]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].n.v", "", "", 0, 0, 0, 512, 0, 356, 1104, TRUE)/*R_[276]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].L", "", "", 0, 0, 0, 0, 0, 357, 1108, TRUE)/*R_[277]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.m", "", "", 3, 0, 0, 64, 0, 34, 97, TRUE)/*CI_[24]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.pi", "", "", 3.141592653589793, 0, 0, 0, 0, 358, 321, TRUE)/*CR_[80]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.v[1]", "", "", 
  0, 0, 0, 512, 0, 359, 1112, TRUE)/*R_[278]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.v[2]", "", "", 0, 0, 0, 512, 0, 360, 1116, TRUE)/*R_[279]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.v[3]", "", "", 0, 0, 0, 512, 0, 361, 1120, TRUE)/*R_[280]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[1, 1]", "", "", 0.6666666666666666, 0, 0, 0, 0, 362, 
  325, TRUE)/*CR_[81]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[1, 2]", "", "", -0.3333333333333332, 0, 0, 0, 0, 363, 
  329, TRUE)/*CR_[82]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[1, 3]", "", "", -0.3333333333333336, 0, 0, 0, 0, 364, 
  333, TRUE)/*CR_[83]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[2, 1]", "", "", 0, 0, 0, 0, 0, 365, 337, TRUE)/*CR_[84]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[2, 2]", "", "", 
  0.5773502691896257, 0, 0, 0, 0, 366, 341, TRUE)/*CR_[85]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.TransformationMatrix[2, 3]", "", "", -0.5773502691896255, 0, 0, 0, 0, 367, 
  345, TRUE)/*CR_[86]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[1, 1]", "", "", 1, 0, 0, 0, 0, 368, 349, TRUE)/*CR_[87]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[1, 2]", "", "", 
  0, 0, 0, 0, 0, 369, 353, TRUE)/*CR_[88]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[2, 1]", "", "", -0.4999999999999998, 0, 0, 0, 0, 
  370, 357, TRUE)/*CR_[89]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[2, 2]", "", "", 0.8660254037844387, 0, 0, 0, 0, 371, 
  361, TRUE)/*CR_[90]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[3, 1]", "", "", -0.5000000000000004, 0, 0, 0, 0, 
  372, 365, TRUE)/*CR_[91]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.InverseTransformation[3, 2]", "", "", -0.8660254037844384, 0, 0, 0, 0, 
  373, 369, TRUE)/*CR_[92]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.m", "", "", 3, 0, 1, 64, 0, 35, 101, TRUE)/*CI_[25]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.m", "", "", 3, 0, 1, 64, 0, 36, 105, TRUE)/*CI_[26]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.zero.v", "", "", 0, 0, 0, 0, 0, 374, 373, TRUE)/*CR_[93]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.ground.v", "", "", 0, 0, 0, 0, 0, 375, 377, TRUE)/*CR_[94]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.gnd.p.v", "", "", 0, 0, 0, 0, 0, 376, 381, TRUE)/*CR_[95]*/
DECLARE_VARIABLE("pmsm.terminalBox.m", "", "", 3, 0, 0, 64, 0, 37, 109, TRUE)/*CI_[27]*/
/* DECLARE_VARIABLE("pmsm.terminalBox.StarDelta", "", "", 0, 0, 0, 192, 0, 0, 1, TRUE)
 help标量 */
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.m", "", "", 3, 0, 1, 64, 0, 38, 113, TRUE)/*CI_[28]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.m", "", "", 3, 0, 1, 64, 0, 39, 117, TRUE)/*CI_[29]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.m", "", "", 3, 0, 1, 64, 0, 40, 121, TRUE)/*CI_[30]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.m", "", "", 3, 0, 1, 64, 0, 41, 125, TRUE)/*CI_[31]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.pin_n.i", "", "", 0, 0, 0, 0, 0, 377, 385, TRUE)/*CR_[96]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.m", "", "", 3, 0, 1, 64, 0, 42, 129, TRUE)/*CI_[32]*/
DECLARE_VARIABLE("pmsm.terminalBox.starpoint.i", "", "", 0, 0, 0, 0, 0, 378, 389, TRUE)/*CR_[97]*/
DECLARE_VARIABLE("pmsm.positiveplug.m", "", "", 3, 0, 1, 64, 0, 43, 133, TRUE)/*CI_[33]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.spring.phi_rel", "", "", 0, 0, 0, 512, 0, 379, 1124, TRUE)/*R_[281]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.spring.tau", "", "", 
  0, 0, 0, 512, 0, 380, 1128, TRUE)/*R_[282]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.spring.c", "", "", 96389.8, 0, 0, 0, 0, 381, 1132, TRUE)/*R_[283]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.spring.phi_rel0", "", "", 
  0, 0, 0, 0, 0, 382, 1136, TRUE)/*R_[284]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.J", "", "", 4.e-005, 0, 0, 0, 0, 383, 1140, TRUE)/*R_[285]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.initType", "", "", 
  1, 9, 1, 64, 0, 44, 137, TRUE)/*CI_[34]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.phi_start", "", "", 0, 0, 0, 0, 0, 384, 1144, TRUE)/*R_[286]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.w_start", "", "", 
  0, 0, 0, 0, 0, 385, 1148, TRUE)/*R_[287]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.a_start", "", "", 0, 0, 0, 0, 0, 386, 1152, TRUE)/*R_[288]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.stateSelection", "", "", 
  3, 5, 1, 64, 0, 45, 141, TRUE)/*CI_[35]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.J", "", "", 4.e-005, 0, 0, 0, 0, 387, 1156, TRUE)/*R_[289]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.initType", "", "", 
  1, 9, 1, 64, 0, 46, 145, TRUE)/*CI_[36]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.phi_start", "", "", 0, 0, 0, 0, 0, 388, 1160, TRUE)/*R_[290]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.w_start", "", "", 
  0, 0, 0, 0, 0, 389, 1164, TRUE)/*R_[291]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.a_start", "", "", 0, 0, 0, 0, 0, 390, 1168, TRUE)/*R_[292]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.stateSelection", "", "", 
  3, 5, 1, 64, 0, 47, 149, TRUE)/*CI_[37]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.flange_b.tau", "", "", 0, 0, 0, 512, 0, 391, 1172, TRUE)/*R_[293]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_rollingguide.M", "", "", 
  100, 0, 0, 0, 0, 392, 1176, TRUE)/*R_[294]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_rollingguide.ugf", "", "", 1.e-002, 0, 0, 0, 0, 393, 1180, TRUE)/*R_[295]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_rollingguide.B", "", "", 
  56.6223, 0, 0, 0, 0, 394, 1184, TRUE)/*R_[296]*/
DECLARE_VARIABLE("z_axis_mechnical_model.fixedbearing.KB1", "", "", 760000000, 0, 0, 0, 0, 395, 393, TRUE)/*CR_[98]*/
DECLARE_VARIABLE("z_axis_mechnical_model.fixedbearing.Tf1", "", "", 
  0.15, 0, 0, 0, 0, 396, 397, TRUE)/*CR_[99]*/
DECLARE_VARIABLE("z_axis_mechnical_model.oppositefixedendbearing.KB2", "", "", 760000000, 0, 0, 0, 0, 397, 401, 
  TRUE)/*CR_[100]*/
DECLARE_VARIABLE("z_axis_mechnical_model.oppositefixedendbearing.Tf2", "", "", 0.15, 0, 0, 0, 0, 398, 405, TRUE)/*CR_[101]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.Tf1", "", "", 
  0.15, 0, 0, 0, 0, 399, 409, TRUE)/*CR_[102]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.ds", "", "", 4.e-002, 0, 0, 0, 0, 400, 1188, TRUE)/*R_[297]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.As", "", "", 
  0, 0, 0, 0, 0, 401, 1192, TRUE)/*R_[298]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.E", "", "", 210000000000, 0, 0, 0, 0, 402, 413, TRUE)/*CR_[103]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.Lsg", "", "", 0.8, 0, 0, 0, 0, 403, 1196, TRUE)/*R_[299]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.h", "", "", 1.2e-002, 0, 0, 0, 0, 404, 1200, TRUE)/*R_[300]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.L", "", "", 
  0.766, 0, 0, 0, 0, 405, 1204, TRUE)/*R_[301]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.midu", "", "", 7850, 0, 0, 0, 0, 406, 1208, TRUE)/*R_[302]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.J0", "", "", 
  0, 0, 0, 0, 0, 407, 1212, TRUE)/*R_[303]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.G", "", "", 82000000000, 0, 0, 0, 0, 408, 417, TRUE)/*CR_[104]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.i", "", "", 
  0, 0, 0, 0, 0, 409, 1216, TRUE)/*R_[304]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.Ls", "", "", 1.2, 0, 0, 0, 0, 410, 1220, TRUE)/*R_[305]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.Bta1", "", "", 
  9.e-002, 0, 0, 0, 0, 411, 1224, TRUE)/*R_[306]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.Ksn", "", "", 0, 0, 0, 0, 0, 412, 1228, TRUE)/*R_[307]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.M", "", "", 
  100, 0, 0, 0, 0, 413, 1232, TRUE)/*R_[308]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.Jw", "", "", 0, 0, 0, 0, 0, 414, 1236, TRUE)/*R_[309]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.Tf2", "", "", 
  0.15, 0, 0, 0, 0, 415, 421, TRUE)/*CR_[105]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.Ts", "", "", 0, 0, 0, 512, 0, 416, 1240, TRUE)/*R_[310]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.Fg", "", "", 
  0, 0, 0, 512, 0, 417, 1244, TRUE)/*R_[311]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative.k", "", "", 1, 0, 0, 0, 0, 418, 1248, TRUE)/*R_[312]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative.T", "", "", 
  1.e-002, 0, 1.e-060, 0, 0, 419, 1252, TRUE)/*R_[313]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative.initType", "", "", 1, 4, 1, 64, 0, 48, 153, TRUE)/*CI_[38]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative.x_start", "", "", 
  0, 0, 0, 0, 0, 420, 1256, TRUE)/*R_[314]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative.y_start", "", "", 0, 0, 0, 0, 0, 421, 1260, 
  TRUE)/*R_[315]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative.zeroGain", "", "", 0, 0, 0, 128, 0, 20, 72, 
  TRUE)/*B_[18]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative1.k", "", "", 1, 0, 0, 0, 0, 422, 1264, TRUE)/*R_[316]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative1.T", "", "", 
  1.e-002, 0, 1.e-060, 0, 0, 423, 1268, TRUE)/*R_[317]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative1.initType", "", "", 1, 4, 1, 64, 0, 49, 157, 
  TRUE)/*CI_[39]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative1.x_start", "", "", 0, 0, 0, 0, 0, 424, 1272, 
  TRUE)/*R_[318]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative1.y_start", "", "", 0, 0, 0, 0, 0, 425, 1276, 
  TRUE)/*R_[319]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative1.zeroGain", "", "", 0, 0, 0, 128, 0, 21, 76, 
  TRUE)/*B_[19]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.M", "", "", 1.e-002, 0, 0, 0, 0, 426, 1280, TRUE)/*R_[320]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.h", "", "", 
  1.e-002, 0, 0, 0, 0, 427, 1284, TRUE)/*R_[321]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.i", "", "", 0, 0, 0, 0, 0, 428, 1288, TRUE)/*R_[322]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.Cn0", "", "", 
  25988, 0, 0, 0, 0, 429, 1292, TRUE)/*R_[323]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.Kn0", "", "", 1150000000, 0, 0, 0, 0, 430, 1296, TRUE)/*R_[324]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.Tx", "", "", 
  0, 0, 0, 512, 0, 431, 1300, TRUE)/*R_[325]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.Tgf", "", "", 0, 0, 0, 512, 0, 432, 1304, TRUE)/*R_[326]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.Tbf", "", "", 0, 0, 0, 0, 0, 433, 1308, TRUE)/*R_[327]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.n", "", "", 
  0.952, 0, 0, 0, 0, 434, 425, TRUE)/*CR_[106]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.Fp", "", "", 0, 0, 0, 0, 0, 435, 1312, TRUE)/*R_[328]*/
DECLARE_VARIABLE("Fz", "", "", 
  0, 0, 0, 512, 0, 436, 1316, TRUE)/*R_[329]*/
DECLARE_VARIABLE("Fy", "", "", 0, 0, 0, 512, 0, 437, 1320, TRUE)/*R_[330]*/
DECLARE_VARIABLE("az", "", "", 0, 0, 0, 512, 0, 438, 1324, TRUE)/*R_[331]*/
DECLARE_VARIABLE("vz", "", "", 0, 0, 0, 512, 0, 439, 1328, TRUE)/*R_[332]*/
DECLARE_VARIABLE("z", "", "", 0, 0, 0, 512, 0, 440, 1332, TRUE)/*R_[333]*/
DECLARE_VARIABLE("sine.amplitude", "", "", 1, 0, 0, 0, 0, 441, 1336, TRUE)/*R_[334]*/
DECLARE_VARIABLE("sine.freqHz", "", "", 1, 0, 0, 0, 0, 442, 1340, TRUE)/*R_[335]*/
DECLARE_VARIABLE("sine.phase", "", "", 0, 0, 0, 0, 0, 443, 1344, TRUE)/*R_[336]*/
DECLARE_VARIABLE("sine.offset", "", "", 0, 0, 0, 0, 0, 444, 1348, TRUE)/*R_[337]*/
DECLARE_VARIABLE("sine.startTime", "", "", 0, 0, 0, 0, 0, 445, 1352, TRUE)/*R_[338]*/
DECLARE_VARIABLE("sine.pi", "", "", 3.141592653589793, 0, 0, 0, 0, 446, 429, TRUE)/*CR_[107]*/
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
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].der(i)", "", "", 0, 0, 0, 512, 0, 461, 1412, FALSE)/*R_[353]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].der(i)", "", "", 
  0, 0, 0, 512, 0, 462, 1416, FALSE)/*R_[354]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].der(i)", "", "", 0, 0, 0, 512, 0, 463, 1420, FALSE)/*R_[355]*/
/* DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.pre(T0)", "", "", 
  0, 0, 0, 512, 0, 464, 1424, TRUE)
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
DECLARE_VARIABLE("servo.IdPI.x", "", "", 0, 0, 0, 512, 0, 487, 1516, TRUE)/*R_[379]*/
DECLARE_VARIABLE("servo.IqPI.x", "", "", 0, 0, 0, 512, 0, 488, 1520, TRUE)/*R_[380]*/
DECLARE_VARIABLE("servo.vPI.x", "", "", 0, 0, 0, 512, 0, 489, 1524, TRUE)/*R_[381]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.y", "", "", 0, 0, 0, 512, 0, 490, 1528, TRUE)/*R_[382]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_sr[1]", "", "", 0, 0, 0, 512, 0, 491, 1532, TRUE)/*R_[383]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_sr[2]", "", "", 0, 0, 0, 512, 0, 492, 1536, TRUE)/*R_[384]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.phi", "", "", 0, 0, 0, 512, 0, 493, 1540, TRUE)/*R_[385]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.w", "", "", 0, 0, 0, 512, 0, 494, 1544, TRUE)/*R_[386]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.phi", "", "", 
  0, 0, 0, 512, 0, 495, 1548, TRUE)/*R_[387]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.w", "", "", 0, 0, 0, 512, 0, 496, 1552, TRUE)/*R_[388]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative.x", "", "", 
  0, 0, 0, 512, 0, 497, 1556, TRUE)/*R_[389]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative1.x", "", "", 0, 0, 0, 512, 0, 498, 1560, TRUE)/*R_[390]*/
DECLARE_VARIABLE("servo.IdPI.der(x)", "", "", 
  0, 0, 0, 512, 0, 499, 1564, FALSE)/*R_[391]*/
DECLARE_VARIABLE("servo.IqPI.der(x)", "", "", 0, 0, 0, 512, 0, 500, 1568, FALSE)/*R_[392]*/
DECLARE_VARIABLE("servo.vPI.der(x)", "", "", 0, 0, 0, 512, 0, 501, 1572, FALSE)/*R_[393]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.integrator.der(y)", "", "", 0, 0, 0, 512, 0, 502, 1576, FALSE)/*R_[394]*/
DECLARE_VARIABLE("pmsm.PMSM.der(idq_sr[1])", "", "", 0, 0, 0, 512, 0, 503, 1580, FALSE)/*R_[395]*/
DECLARE_VARIABLE("pmsm.PMSM.der(idq_sr[2])", "", "", 0, 0, 0, 512, 0, 504, 1584, FALSE)/*R_[396]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.der(phi)", "", "", 0, 0, 0, 512, 0, 505, 1588, FALSE)/*R_[397]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.der(w)", "", "", 
  0, 0, 0, 512, 0, 506, 1592, FALSE)/*R_[398]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.der(phi)", "", "", 0, 0, 0, 512, 0, 507, 1596, FALSE)/*R_[399]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.der(w)", "", "", 
  0, 0, 0, 512, 0, 508, 1600, FALSE)/*R_[400]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative.der(x)", "", "", 0, 0, 0, 512, 0, 509, 1604, 
  FALSE)/*R_[401]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative1.der(x)", "", "", 0, 0, 0, 512, 0, 510, 1608, 
  FALSE)/*R_[402]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.a", "", "", 0, 0, 0, 512, 1, 506, 1592, TRUE)/* (1) * R_[398]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.w1", "", "", 0, 0, 0, 512, 1, 496, 1552, TRUE)/* (1) 
  * R_[388]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.flange_a.phi", "", "", 0, 0, 0, 512, 1, 495, 1548, TRUE)/* 
  (1) * R_[387]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.w", "", "", 0, 0, 0, 512, 1, 494, 1544, TRUE)/* (1) * R_[386]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("servo.der1.u", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.der(w1)", "", "", 0, 0, 0, 512, 1, 508, 1600, FALSE)/* 
  (1) * R_[400]*/
DECLARE_VARIABLE("servo.der1.der(u)", "", "", 0, 0, 0, 512, 1, 494, 1544, FALSE)/* (1) * R_[386]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.flange_a.der(phi)", "", "", 0, 0, 0, 512, 1, 496, 1552, 
  FALSE)/* (1) * R_[388]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.a", "", "", 0, 0, 0, 512, 1, 508, 1600, TRUE)/* (1) * 
  R_[400]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.a", "", "", 0, 0, 0, 512, 1, 506, 1592, TRUE)/* (1) * 
  R_[398]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.der(i_mr[1])", "", "", 0, 0, 0, 512, 1, 503, 1580, FALSE)/* (1) * R_[395]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_r.v_[2]", "", "", 
  0, 0, 0, 512, 1, 456, 1392, TRUE)/* (1) * R_[348]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_r.v_[1]", "", "", 0, 0, 0, 512, 1, 455, 1388, TRUE)/* (1) * R_[347]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_s.v_[2]", "", "", 
  0, 0, 0, 512, 1, 454, 1384, TRUE)/* (1) * R_[346]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_s.v_[1]", "", "", 0, 0, 0, 512, 1, 453, 1380, TRUE)/* (1) * R_[345]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.der(w)", "", "", 
  0, 0, 0, 512, 1, 506, 1592, FALSE)/* (1) * R_[398]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.der(phi)", "", "", 0, 0, 0, 512, 1, 494, 1544, FALSE)/* (1) * R_[386]*/
DECLARE_VARIABLE("servo.der1.y", "", "", 0, 0, 0, 512, 1, 494, 1544, TRUE)/* (1) * R_[386]*/
DECLARE_VARIABLE("pmsm.PMSM.w_mechanical", "", "", 0, 0, 0, 512, 1, 494, 1544, TRUE)/* (1) * R_[386]*/
DECLARE_VARIABLE("pmsm.PMSM.der(phi_mechanical)", "", "", 0, 0, 0, 512, 1, 494, 1544, FALSE)/* (1) * R_[386]*/
DECLARE_VARIABLE("servo.clark.i_c", "", "", 
  0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("servo.clark.i_b", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("servo.clark.i_a", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_mr[2]", "", "", 0, 0, 0, 512, 1, 492, 1536, TRUE)/* (1) * R_[384]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.p.v", "", "", 0, 0, 0, 0, 1, 254, 732, TRUE)/* (1) * R_[183]*/
DECLARE_VARIABLE("servo.batteryideal.vPackage", "", "", 
  0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.dcac.voltageSensor.v", "", "", 0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.v", "", "", 0, 0, 0, 512, -1, 18, 74, TRUE)/* (-1) * R_[18]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.v", "", "", 0, 0, 0, 512, -1, 17, 70, TRUE)/* (-1) * R_[17]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.v", "", "", 0, 0, 0, 512, -1, 16, 66, TRUE)/* (-1) * R_[16]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("servo.dcac.vSupply", "", "", 0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.i[3]", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.i[2]", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.i[1]", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[3].i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[2].i", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[1].i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.fixed.flange_b.tau", "", "", 0, 0, 0, 512, -1, 300, 894, TRUE)/* (-1) * R_[223]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_rr[1]", "", "", 0, 0, 0, 0, 1, 323, 976, TRUE)/* (1) * R_[244]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.p.i", "", "", 0, 0, 0, 512, 1, 245, 700, TRUE)/* (1) * R_[175]*/
DECLARE_VARIABLE("servo.dcac.iSupply", "", "", 
  0, 0, 0, 512, -1, 245, 702, TRUE)/* (-1) * R_[175]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[3].i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[2].i", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[1].i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.flange_a.tau", "", "", 0, 0, 0, 512, -1, 275, 806, TRUE)/* (-1) 
  * R_[201]*/
DECLARE_VARIABLE("z_axis_mechnical_model.flange_a.tau", "", "", 0, 0, 0, 512, -1, 275, 806, TRUE)/* (-1) * R_[201]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.gnd.p.i", "", "", 
  0, 0, 0, 512, -1, 297, 886, TRUE)/* (-1) * R_[221]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.flange_a.tau", "", "", 0, 0, 0, 512, -1, 391, 1174, 
  TRUE)/* (-1) * R_[293]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].p.i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].p.i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].p.i", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.flange_a.tau", "", "", 0, 0, 0, 512, 1, 275, 804, TRUE)/* (1) * R_[201]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[3].i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[2].i", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) 
  * R_[269]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[1].i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) 
  * R_[264]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[3].i", "", "", 0, 0, 0, 512, -1, 354, 1098, TRUE)/* (
  -1) * R_[274]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[2].i", "", "", 0, 0, 0, 512, -1, 349, 1078, TRUE)/* (
  -1) * R_[269]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[1].i", "", "", 0, 0, 0, 512, -1, 344, 1058, TRUE)/* (
  -1) * R_[264]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[3].i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[2].i", "", "", 
  0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[1].i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.flange_b.tau", "", "", 
  0, 0, 0, 512, 1, 380, 1128, TRUE)/* (1) * R_[282]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.flange_a.tau", "", "", 0, 0, 0, 512, -1, 275, 806, TRUE)/* 
  (-1) * R_[201]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.flange_b.tau", "", "", 0, 0, 0, 512, 1, 391, 1172, TRUE)/* 
  (1) * R_[293]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.flange_a.tau", "", "", 0, 0, 0, 512, -1, 380, 1130, TRUE)/* 
  (-1) * R_[282]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.flange_b.tau", "", "", 0, 0, 0, 512, 1, 275, 804, TRUE)/* (1) * R_[201]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.ground.i", "", "", 
  0, 0, 0, 512, -1, 297, 886, TRUE)/* (-1) * R_[221]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[3].i", "", "", 0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[2].i", "", "", 0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[1].i", "", "", 0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[3].i", "", "", 0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[2].i", "", "", 
  0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[1].i", "", "", 0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[3].i", "", "", 
  0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[2].i", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[1].i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.flange_a.tau", "", "", 0, 0, 0, 512, 1, 300, 892, TRUE)/* (1) * R_[223]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.spacePhasor.i_[2]", "", "", 
  0, 0, 0, 512, -1, 303, 906, TRUE)/* (-1) * R_[226]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.spacePhasor.i_[1]", "", "", 0, 0, 0, 512, -1, 302, 902, TRUE)/* (-1) * 
  R_[225]*/
DECLARE_VARIABLE("servo.batteryideal.n.i", "", "", 0, 0, 0, 512, -1, 245, 702, TRUE)/* (-1) * R_[175]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[3].i", "", "", 0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[2].i", "", "", 
  0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[1].i", "", "", 0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[3].i", "", "", 
  0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[2].i", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[1].i", "", "", 
  0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.p.i", "", "", 0, 0, 0, 512, -1, 245, 702, TRUE)/* (-1) * R_[175]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[3].i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[2].i", "", "", 
  0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[1].i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[3].i", "", "", 
  0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * R_[274]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[2].i", "", "", 0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * R_[269]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[1].i", "", "", 
  0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * R_[264]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[3].i", "", "", 0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * R_[274]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[2].i", "", "", 0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * R_[269]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[1].i", "", "", 0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * R_[264]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[3].i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[2].i", "", "", 
  0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[1].i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("servo.negativeplug.pin[3].i", "", "", 
  0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * R_[274]*/
DECLARE_VARIABLE("servo.negativeplug.pin[2].i", "", "", 0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * R_[269]*/
DECLARE_VARIABLE("servo.negativeplug.pin[1].i", "", "", 0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * R_[264]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_rollingguide.Fg", "", "", 0, 0, 0, 512, 1, 417, 1244, TRUE)/* (1) 
  * R_[311]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.Ts", "", "", 0, 0, 0, 512, 1, 416, 1240, TRUE)/* (1) 
  * R_[310]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.phz", "", "", 0, 0, 0, 512, 1, 495, 1548, TRUE)/* (1) * R_[387]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.y", "", "", 0, 0, 0, 512, 1, 228, 636, TRUE)/* (1) * R_[159]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.pulse.y", "", "", 0, 0, 0, 512, 1, 217, 592, TRUE)/* (1) * R_[148]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.y", "", "", 0, 0, 0, 512, 1, 231, 648, TRUE)/* (1) * R_[162]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.spring.flange_a.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* 
  (1) * R_[385]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.flange_b.phi", "", "", 0, 0, 0, 512, 1, 495, 1548, TRUE)/* (1) 
  * R_[387]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.spring.flange_b.phi", "", "", 0, 0, 0, 512, 1, 495, 1548, TRUE)/* 
  (1) * R_[387]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[3].v", "", "", 0, 0, 0, 512, 1, 356, 1104, TRUE)/* (1) * R_[276]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[3].v", "", "", 
  0, 0, 0, 512, 1, 356, 1104, TRUE)/* (1) * R_[276]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[2].v", "", "", 0, 0, 0, 512, 1, 351, 1084, TRUE)/* (1) * R_[271]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[2].v", "", "", 
  0, 0, 0, 512, 1, 351, 1084, TRUE)/* (1) * R_[271]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[1].v", "", "", 0, 0, 0, 512, 1, 346, 1064, TRUE)/* (1) * R_[266]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_n.pin[1].v", "", "", 
  0, 0, 0, 512, 1, 346, 1064, TRUE)/* (1) * R_[266]*/
DECLARE_VARIABLE("pmsm.PMSM.internalSupport.phi", "", "", 0, 0, 0, 0, 1, 280, 824, TRUE)/* (1) * R_[206]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.support.phi", "", "", 0, 0, 0, 0, 1, 280, 824, TRUE)/* (1) * R_[206]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.flange_a.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.spacePhasor.v_[2]", "", "", 
  0, 0, 0, 512, 1, 454, 1384, TRUE)/* (1) * R_[346]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.spacePhasor.v_[1]", "", "", 0, 0, 0, 512, 1, 453, 1380, TRUE)/* (1) * R_[345]*/
DECLARE_VARIABLE("pmsm.PMSM.permanentMagnet.spacePhasor_r.v_[2]", "", "", 0, 0, 0, 512, 1, 456, 1392, TRUE)/* 
  (1) * R_[348]*/
DECLARE_VARIABLE("pmsm.PMSM.permanentMagnet.spacePhasor_r.v_[1]", "", "", 0, 0, 0, 512, 1, 455, 1388, TRUE)/* (1) 
  * R_[347]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain1.y", "", "", 0, 0, 0, 512, 1, 200, 524, TRUE)/* (1) * R_[131]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain2.u", "", "", 0, 0, 0, 512, 1, 195, 504, TRUE)/* (1) * R_[126]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain.y", "", "", 0, 0, 0, 512, 1, 197, 512, TRUE)/* (1) * R_[128]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.y", "", "", 0, 0, 0, 512, 1, 234, 660, TRUE)/* (1) * R_[165]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.u[1]", "", "", 0, 0, 0, 512, 1, 490, 1528, TRUE)/* (1) * R_[382]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.u[1]", "", "", 0, 0, 0, 512, 1, 490, 1528, TRUE)/* (1) * R_[382]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.u[1]", "", "", 0, 0, 0, 512, 1, 490, 1528, TRUE)/* (1) * R_[382]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].n.v", "", "", 0, 0, 0, 512, 1, 355, 1100, TRUE)/* (1) * R_[275]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[3].v", "", "", 0, 0, 0, 512, 1, 355, 1100, TRUE)/* (1) * R_[275]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[3].v", "", "", 0, 0, 0, 512, 1, 355, 1100, TRUE)/* (1) * R_[275]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].n.v", "", "", 
  0, 0, 0, 512, 1, 350, 1080, TRUE)/* (1) * R_[270]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[2].v", "", "", 0, 0, 0, 512, 1, 350, 1080, TRUE)/* (1) * R_[270]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[2].v", "", "", 0, 0, 0, 512, 1, 350, 1080, TRUE)/* (1) * R_[270]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].n.v", "", "", 
  0, 0, 0, 512, 1, 345, 1060, TRUE)/* (1) * R_[265]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_n.pin[1].v", "", "", 0, 0, 0, 512, 1, 345, 1060, TRUE)/* (1) * R_[265]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.plug_p.pin[1].v", "", "", 0, 0, 0, 512, 1, 345, 1060, TRUE)/* (1) * R_[265]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.p.v", "", "", 0, 0, 0, 0, 1, 254, 732, TRUE)/* (1) * R_[183]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.Tcm3", "", "", 0, 0, 0, 512, 1, 208, 556, TRUE)/* (1) * R_[139]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum3.u[2]", "", "", 0, 0, 0, 512, 1, 208, 556, TRUE)/* (1) * R_[139]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.Tcm2", "", "", 0, 0, 0, 512, 1, 207, 552, TRUE)/* (1) * R_[138]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum2.u[2]", "", "", 0, 0, 0, 512, 1, 207, 552, TRUE)/* (1) * R_[138]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.Tcm1", "", "", 0, 0, 0, 512, 1, 206, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.sum1.u[2]", "", "", 0, 0, 0, 512, 1, 206, 548, TRUE)/* (1) * R_[137]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.N", "", "", 0, 0, 0, 576, 1, 15, 16, TRUE)/* (1) * I_[4]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add1.y", "", "", 0, 0, 0, 512, 1, 189, 480, TRUE)/* (1) * R_[120]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add1.u2", "", "", 0, 0, 0, 512, 1, 188, 476, TRUE)/* (1) * R_[119]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add.y", "", "", 0, 0, 0, 512, 1, 188, 476, TRUE)/* (1) * R_[119]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain2.y", "", "", 0, 0, 0, 512, 1, 187, 472, TRUE)/* (1) * R_[118]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add.u2", "", "", 0, 0, 0, 512, 1, 187, 472, TRUE)/* (1) * R_[118]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain1.u", "", "", 0, 0, 0, 512, 1, 184, 460, TRUE)/* (1) * R_[115]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.u2", "", "", 0, 0, 0, 512, 1, 184, 460, TRUE)/* (1) * R_[115]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.T2", "", "", 
  0, 0, 0, 512, 1, 184, 460, TRUE)/* (1) * R_[115]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.gain.u", "", "", 0, 0, 0, 512, 1, 183, 456, TRUE)/* (1) * R_[114]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.u1", "", "", 0, 0, 0, 512, 1, 183, 456, TRUE)/* (1) * R_[114]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.T1", "", "", 
  0, 0, 0, 512, 1, 183, 456, TRUE)/* (1) * R_[114]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product2.y", "", "", 0, 0, 0, 512, 1, 176, 428, TRUE)/* (1) * R_[107]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product2.u1", "", "", 0, 0, 0, 512, 1, 170, 404, TRUE)/* (1) * R_[101]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product.y", "", "", 
  0, 0, 0, 512, 1, 173, 416, TRUE)/* (1) * R_[104]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product.u1", "", "", 0, 0, 0, 512, 1, 164, 380, TRUE)/* (1) * R_[95]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division2.u2", "", "", 
  0, 0, 0, 0, 1, 237, 672, TRUE)/* (1) * R_[168]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division1.u2", "", "", 0, 0, 0, 0, 1, 237, 672, TRUE)/* (1) * R_[168]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division.u2", "", "", 
  0, 0, 0, 0, 1, 237, 672, TRUE)/* (1) * R_[168]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.Ux", "", "", 0, 0, 0, 0, 1, 237, 672, TRUE)/* (1) * R_[168]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.Z", "", "", 0, 0, 0, 512, 1, 182, 452, TRUE)/* (1) * R_[113]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain3.y", "", "", 0, 0, 0, 512, 1, 182, 452, TRUE)/* (1) * R_[113]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain3.u", "", "", 0, 0, 0, 512, 1, 177, 432, TRUE)/* (1) * R_[108]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.Y", "", "", 0, 0, 0, 512, 1, 181, 448, TRUE)/* (1) * R_[112]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain2.y", "", "", 0, 0, 0, 512, 1, 181, 448, TRUE)/* (1) * R_[112]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain2.u", "", "", 0, 0, 0, 512, 1, 175, 424, TRUE)/* (1) * R_[106]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.X", "", "", 0, 0, 0, 512, 1, 180, 444, TRUE)/* (1) * R_[111]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.division.y", "", "", 0, 0, 0, 512, 1, 180, 444, TRUE)/* (1) * R_[111]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product1.y", "", "", 
  0, 0, 0, 512, 1, 174, 420, TRUE)/* (1) * R_[105]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.add3_1.u3", "", "", 0, 0, 0, 0, 1, 238, 676, TRUE)/* (1) * R_[169]*/
DECLARE_VARIABLE("servo.svpwm1.t1t2_tabc.T", "", "", 0, 0, 0, 0, 1, 238, 676, TRUE)/* (1) * R_[169]*/
DECLARE_VARIABLE("servo.svpwm1.nxyz_t1t2_1.T", "", "", 0, 0, 0, 0, 1, 238, 676, TRUE)/* (1) * R_[169]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product2.u2", "", "", 0, 0, 0, 0, 1, 238, 676, TRUE)/* (1) * R_[169]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product1.u2", "", "", 
  0, 0, 0, 0, 1, 238, 676, TRUE)/* (1) * R_[169]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product.u2", "", "", 0, 0, 0, 0, 1, 238, 676, TRUE)/* (1) * R_[169]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.T", "", "", 0, 0, 0, 0, 1, 238, 676, TRUE)/* (1) * R_[169]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.product1.u1", "", "", 0, 0, 0, 512, 1, 167, 392, TRUE)/* (1) * R_[98]*/
DECLARE_VARIABLE("servo.dcac.vDC", "", "", 
  0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.gain.u", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("servo.feedback1.u2", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("servo.anglesensor.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("servo.dcac.voltageSensor.p.v", "", "", 0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.batteryideal.p.v", "", "", 0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.n.v", "", "", 0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.n.v", "", "", 0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.n.v", "", "", 0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.p.v", "", "", 0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.p.v", "", "", 
  0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.p.v", "", "", 0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.n.v", "", "", 
  0, 0, 0, 512, 1, 19, 76, TRUE)/* (1) * R_[19]*/
DECLARE_VARIABLE("servo.gain1.y", "", "", 0, 0, 0, 512, 1, 239, 680, TRUE)/* (1) * R_[170]*/
DECLARE_VARIABLE("servo.gain1.u", "", "", 0, 0, 0, 512, 1, 160, 364, TRUE)/* (1) * R_[91]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[6]", "", "", 0, 0, 0, 640, 1, 1, 4, TRUE)/* (1) * B_[1]*/
DECLARE_VARIABLE("servo.svpwm1.not1[2].y", "", "", 0, 0, 0, 640, 1, 1, 4, TRUE)/* (1) * B_[1]*/
DECLARE_VARIABLE("servo.dcac.u[6]", "", "", 0, 0, 0, 640, 1, 1, 4, TRUE)/* (1) * B_[1]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.control", "", "", 0, 0, 0, 640, 1, 17, 68, TRUE)/* (1) * B_[17]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.On[3]", "", "", 
  0, 0, 0, 640, 1, 17, 68, TRUE)/* (1) * B_[17]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[5]", "", "", 0, 0, 0, 640, 1, 17, 68, TRUE)/* (1) * B_[17]*/
DECLARE_VARIABLE("servo.svpwm1.not1[3].u", "", "", 0, 0, 0, 640, 1, 17, 68, TRUE)/* (1) * B_[17]*/
DECLARE_VARIABLE("servo.dcac.u[5]", "", "", 0, 0, 0, 640, 1, 17, 68, TRUE)/* (1) * B_[17]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.control", "", "", 0, 0, 0, 640, 1, 15, 60, TRUE)/* (1) * B_[15]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.On[2]", "", "", 
  0, 0, 0, 640, 1, 15, 60, TRUE)/* (1) * B_[15]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[3]", "", "", 0, 0, 0, 640, 1, 15, 60, TRUE)/* (1) * B_[15]*/
DECLARE_VARIABLE("servo.svpwm1.not1[2].u", "", "", 0, 0, 0, 640, 1, 15, 60, TRUE)/* (1) * B_[15]*/
DECLARE_VARIABLE("servo.dcac.u[3]", "", "", 0, 0, 0, 640, 1, 15, 60, TRUE)/* (1) * B_[15]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[2]", "", "", 0, 0, 0, 640, 1, 2, 8, TRUE)/* (1) * B_[2]*/
DECLARE_VARIABLE("servo.svpwm1.not1[3].y", "", "", 0, 0, 0, 640, 1, 2, 8, TRUE)/* (1) * B_[2]*/
DECLARE_VARIABLE("servo.dcac.u[2]", "", "", 0, 0, 0, 640, 1, 2, 8, TRUE)/* (1) * B_[2]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.control", "", "", 0, 0, 0, 640, 1, 13, 52, TRUE)/* (1) * B_[13]*/
DECLARE_VARIABLE("servo.svpwm1.pwm.On[1]", "", "", 
  0, 0, 0, 640, 1, 13, 52, TRUE)/* (1) * B_[13]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[1]", "", "", 0, 0, 0, 640, 1, 13, 52, TRUE)/* (1) * B_[13]*/
DECLARE_VARIABLE("servo.svpwm1.not1[1].u", "", "", 0, 0, 0, 640, 1, 13, 52, TRUE)/* (1) * B_[13]*/
DECLARE_VARIABLE("servo.dcac.u[1]", "", "", 0, 0, 0, 640, 1, 13, 52, TRUE)/* (1) * B_[13]*/
DECLARE_VARIABLE("servo.park.i_d", "", "", 0, 0, 0, 512, 1, 125, 224, TRUE)/* (1) * R_[56]*/
DECLARE_VARIABLE("servo.feedback2.u2", "", "", 0, 0, 0, 512, 1, 494, 1544, TRUE)/* (1) * R_[386]*/
DECLARE_VARIABLE("servo.feedback2.y", "", "", 0, 0, 0, 512, 1, 154, 340, TRUE)/* (1) * R_[85]*/
DECLARE_VARIABLE("servo.VdLimiter.y", "", "", 0, 0, 0, 512, 1, 137, 272, TRUE)/* (1) * R_[68]*/
DECLARE_VARIABLE("servo.VqLimiter.y", "", "", 0, 0, 0, 512, 1, 138, 276, TRUE)/* (1) * R_[69]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add1.u2", "", "", 0, 0, 0, 512, 1, 139, 280, TRUE)/* (1) * R_[70]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add.u2", "", "", 0, 0, 0, 512, 1, 139, 280, TRUE)/* (1) * R_[70]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.U_alpha", "", "", 0, 0, 0, 512, 1, 139, 280, TRUE)/* (1) * R_[70]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.U_alpha", "", "", 0, 0, 0, 512, 1, 139, 280, TRUE)/* (1) * R_[70]*/
DECLARE_VARIABLE("servo.svpwm1.U_alpha", "", "", 0, 0, 0, 512, 1, 139, 280, TRUE)/* (1) * R_[70]*/
DECLARE_VARIABLE("servo.IdPI.y", "", "", 0, 0, 0, 512, 1, 144, 300, TRUE)/* (1) * R_[75]*/
DECLARE_VARIABLE("servo.vPI.y", "", "", 0, 0, 0, 512, 1, 150, 324, TRUE)/* (1) * R_[81]*/
DECLARE_VARIABLE("servo.feedback3.u1", "", "", 0, 0, 0, 512, 1, 151, 328, TRUE)/* (1) * R_[82]*/
DECLARE_VARIABLE("servo.IqPI.y", "", "", 0, 0, 0, 512, 1, 141, 288, TRUE)/* (1) * R_[72]*/
DECLARE_VARIABLE("servo.feedback4.u1", "", "", 0, 0, 0, 0, 1, 149, 320, TRUE)/* (1) * R_[80]*/
DECLARE_VARIABLE("servo.clark.i_beta", "", "", 0, 0, 0, 512, 1, 124, 220, TRUE)/* (1) * R_[55]*/
DECLARE_VARIABLE("servo.clark.i_alpha", "", "", 0, 0, 0, 512, 1, 123, 216, TRUE)/* (1) * R_[54]*/
DECLARE_VARIABLE("servo.rPark1.theta", "", "", 0, 0, 0, 512, 1, 148, 316, TRUE)/* (1) * R_[79]*/
DECLARE_VARIABLE("servo.park.theta", "", "", 0, 0, 0, 512, 1, 148, 316, TRUE)/* (1) * R_[79]*/
DECLARE_VARIABLE("servo.feedback4.y", "", "", 0, 0, 0, 512, 1, 127, 232, TRUE)/* (1) * R_[58]*/
DECLARE_VARIABLE("servo.feedback3.y", "", "", 0, 0, 0, 512, 1, 132, 252, TRUE)/* (1) * R_[63]*/
DECLARE_VARIABLE("servo.park.i_q", "", "", 0, 0, 0, 512, 1, 126, 228, TRUE)/* (1) * R_[57]*/
DECLARE_VARIABLE("pmsm.terminalBox.starpoint.v", "", "", 0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[3].v", "", "", 0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[2].v", "", "", 
  0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.plug_p.pin[1].v", "", "", 0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("pmsm.terminalBox.star.pin_n.v", "", "", 
  0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[3].v", "", "", 0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) 
  * R_[210]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[2].v", "", "", 0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) 
  * R_[210]*/
DECLARE_VARIABLE("pmsm.terminalBox.negativeMachinePlug.pin[1].v", "", "", 0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) 
  * R_[210]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[3].v", "", "", 0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[2].v", "", "", 
  0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[1].v", "", "", 0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[3].v", "", "", 
  0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sn.pin[2].v", "", "", 0, 0, 0, 512, 1, 286, 840, TRUE)/* (1) * R_[210]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain1.y", "", "", 0, 0, 0, 512, 1, 166, 388, TRUE)/* (1) * R_[97]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.add1.u1", "", "", 0, 0, 0, 512, 1, 166, 388, TRUE)/* (1) * R_[97]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain1.u", "", "", 0, 0, 0, 512, 1, 140, 284, TRUE)/* (1) * R_[71]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.gain.u", "", "", 0, 0, 0, 512, 1, 140, 284, TRUE)/* (1) * R_[71]*/
DECLARE_VARIABLE("servo.svpwm1.abtu_xyz.U_beta", "", "", 0, 0, 0, 512, 1, 140, 284, TRUE)/* (1) * R_[71]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.U_beta", "", "", 0, 0, 0, 512, 1, 140, 284, TRUE)/* (1) * R_[71]*/
DECLARE_VARIABLE("servo.svpwm1.U_beta", "", "", 0, 0, 0, 512, 1, 140, 284, TRUE)/* (1) * R_[71]*/
DECLARE_VARIABLE("servo.currentsensor.i[3]", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[3].i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("servo.currentsensor.i[2]", "", "", 
  0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[2].i", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("servo.currentsensor.i[1]", "", "", 
  0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[1].i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[3].v", "", "", 
  0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.p.v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.n.v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.n.v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.p.v", "", "", 
  0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[3].v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[2].v", "", "", 
  0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.n.v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.p.v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.p.v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.n.v", "", "", 
  0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[2].v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.dcac.pLoad.pin[1].v", "", "", 
  0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.n.v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.p.v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.p.v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.n.v", "", "", 
  0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("servo.currentsensor.plug_p.pin[1].v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("servo.svpwm1.pulse[4]", "", "", 
  0, 0, 0, 640, 1, 0, 0, TRUE)/* (1) * B_[0]*/
DECLARE_VARIABLE("servo.svpwm1.not1[1].y", "", "", 0, 0, 0, 640, 1, 0, 0, TRUE)/* (1) * B_[0]*/
DECLARE_VARIABLE("servo.dcac.u[4]", "", "", 0, 0, 0, 640, 1, 0, 0, TRUE)/* (1) * B_[0]*/
DECLARE_VARIABLE("sine.y", "", "", 0, 0, 0, 512, 1, 159, 360, TRUE)/* (1) * R_[90]*/
DECLARE_VARIABLE("servo.phi_ref", "", "", 0, 0, 0, 512, 1, 159, 360, TRUE)/* (1) * R_[90]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z", "", "", 0, 0, 0, 512, 1, 440, 1332, TRUE)/* (1) * R_[333]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.z", "", "", 0, 0, 0, 512, 1, 440, 1332, TRUE)/* (1) * R_[333]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative.u", "", "", 
  0, 0, 0, 512, 1, 440, 1332, TRUE)/* (1) * R_[333]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_rollingguide.v", "", "", 0, 0, 0, 512, 1, 439, 1328, TRUE)/* (1) 
  * R_[332]*/
DECLARE_VARIABLE("z_axis_mechnical_model.vz", "", "", 0, 0, 0, 512, 1, 439, 1328, TRUE)/* (1) * R_[332]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.vz", "", "", 0, 0, 0, 512, 1, 439, 1328, TRUE)/* (1) * 
  R_[332]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative1.u", "", "", 0, 0, 0, 512, 1, 439, 1328, TRUE)/* 
  (1) * R_[332]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative.y", "", "", 0, 0, 0, 512, 1, 439, 1328, TRUE)/* 
  (1) * R_[332]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.derivative1.y", "", "", 0, 0, 0, 512, 1, 438, 1324, TRUE)/* 
  (1) * R_[331]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.az", "", "", 0, 0, 0, 512, 1, 438, 1324, TRUE)/* (1) * 
  R_[331]*/
DECLARE_VARIABLE("z_axis_mechnical_model.az", "", "", 0, 0, 0, 512, 1, 438, 1324, TRUE)/* (1) * R_[331]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_rollingguide.Fy", "", "", 0, 0, 0, 512, 1, 437, 1320, TRUE)/* (1) 
  * R_[330]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.Fy", "", "", 0, 0, 0, 512, 1, 437, 1320, TRUE)/* (1) * 
  R_[330]*/
DECLARE_VARIABLE("z_axis_mechnical_model.Fy", "", "", 0, 0, 0, 512, 1, 437, 1320, TRUE)/* (1) * R_[330]*/
DECLARE_VARIABLE("z_axis_mechnical_model.simpleheadstock.Fz", "", "", 0, 0, 0, 512, 1, 436, 1316, TRUE)/* (1) * 
  R_[329]*/
DECLARE_VARIABLE("z_axis_mechnical_model.Fz", "", "", 0, 0, 0, 512, 1, 436, 1316, TRUE)/* (1) * R_[329]*/
DECLARE_VARIABLE("servo.negativeplug.pin[3].v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[3].v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[3].v", "", "", 
  0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[3].v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * 
  R_[18]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[3].v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[3].v", "", "", 
  0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].p.v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[3].v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.negativeplug.pin[2].v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[2].v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[2].v", "", "", 
  0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[2].v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * 
  R_[17]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[2].v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[2].v", "", "", 
  0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].p.v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[2].v", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.negativeplug.pin[1].v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("servo.currentsensor.plug_n.pin[1].v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("pmsm.PMSM.plug_sp.pin[1].v", "", "", 
  0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("pmsm.terminalBox.positiveMachinePlug.pin[1].v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * 
  R_[16]*/
DECLARE_VARIABLE("pmsm.terminalBox.plugToGrid.pin[1].v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("pmsm.positiveplug.pin[1].v", "", "", 
  0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].p.v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.plug_p.pin[1].v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("z_axis_mechnical_model.flange_a.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.flange_a.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) 
  * R_[385]*/
DECLARE_VARIABLE("servo.flange_a.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("pmsm.flange_a.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("pmsm.PMSM.flange_a.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("z_axis_mechnical_model.z_axis_screwsimple.phix", "", "", 0, 0, 0, 512, 1, 495, 1548, TRUE)/* (
  1) * R_[387]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.flange_b.phi", "", "", 0, 0, 0, 512, 1, 495, 1548, TRUE)/* 
  (1) * R_[387]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia1.flange_a.phi", "", "", 0, 0, 0, 512, 1, 495, 1548, TRUE)/* 
  (1) * R_[387]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.flange_b.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* 
  (1) * R_[385]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.inertia.flange_a.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* 
  (1) * R_[385]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.spring.flange_a.tau", "", "", 0, 0, 0, 512, -1, 380, 1130, TRUE)/* 
  (-1) * R_[282]*/
DECLARE_VARIABLE("z_axis_mechnical_model.coupling.spring.flange_b.tau", "", "", 0, 0, 0, 512, 1, 380, 1128, TRUE)/* 
  (1) * R_[282]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[3].i", "", "", 0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[2].i", "", "", 
  0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_n.pin[1].i", "", "", 0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[3].i", "", "", 
  0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[2].i", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.plug_p.pin[1].i", "", "", 
  0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].p.i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].p.i", "", "", 
  0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].p.i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[3].n.i", "", "", 
  0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[2].n.i", "", "", 0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.inductor[1].n.i", "", "", 
  0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.i[3]", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.i[2]", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.lssigma.i[1]", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].i", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[3].n.i", "", "", 0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[2].n.i", "", "", 
  0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.resistor[1].n.i", "", "", 0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.i[3]", "", "", 
  0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.i[2]", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.rs.i[1]", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.permanentMagnet.spacePhasor_r.i_[1]", "", "", 0, 0, 0, 0, -1, 323, 978, TRUE)/* (-1) * R_[244]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.support.tau", "", "", 0, 0, 0, 512, 1, 300, 892, TRUE)/* (1) * R_[223]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.flange_a.tau", "", "", 0, 0, 0, 512, -1, 300, 894, TRUE)/* (-1) * R_[223]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_r.i_[1]", "", "", 
  0, 0, 0, 0, 1, 323, 976, TRUE)/* (1) * R_[244]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_s.i_[2]", "", "", 0, 0, 0, 512, 1, 303, 904, TRUE)/* (1) * R_[226]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.spacePhasor_s.i_[1]", "", "", 
  0, 0, 0, 512, 1, 302, 900, TRUE)/* (1) * R_[225]*/
DECLARE_VARIABLE("pmsm.PMSM.fixed.flange_b.phi", "", "", 0, 0, 0, 0, 1, 280, 824, TRUE)/* (1) * R_[206]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.flange_b.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("pmsm.PMSM.inertiaRotor.flange_a.phi", "", "", 
  0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("servo.anglesensor.flange_a.phi", "", "", 0, 0, 0, 512, 1, 493, 1540, TRUE)/* (1) * R_[385]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.v", "", "", 
  0, 0, 0, 0, 1, 254, 732, TRUE)/* (1) * R_[183]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.i", "", "", 0, 0, 0, 512, 1, 245, 700, TRUE)/* (1) * R_[175]*/
DECLARE_VARIABLE("servo.batteryideal.VoltageSource.n.i", "", "", 
  0, 0, 0, 512, -1, 245, 702, TRUE)/* (-1) * R_[175]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.i", "", "", 0, 0, 0, 512, -1, 245, 702, TRUE)/* (-1) * R_[175]*/
DECLARE_VARIABLE("servo.batteryideal.rsPackage.n.i", "", "", 
  0, 0, 0, 512, 1, 245, 700, TRUE)/* (1) * R_[175]*/
DECLARE_VARIABLE("servo.batteryideal.p.i", "", "", 0, 0, 0, 512, 1, 245, 700, TRUE)/* (1) * R_[175]*/
DECLARE_VARIABLE("servo.svpwm1.T.y", "", "", 0, 0, 0, 0, 1, 238, 676, TRUE)/* (1) * R_[169]*/
DECLARE_VARIABLE("servo.svpwm1.Ux.y", "", "", 0, 0, 0, 0, 1, 237, 672, TRUE)/* (1) * R_[168]*/
DECLARE_VARIABLE("servo.svpwm1.ab_n.va", "", "", 0, 0, 0, 512, 1, 140, 284, TRUE)/* (1) * R_[71]*/
DECLARE_VARIABLE("servo.id.y", "", "", 0, 0, 0, 0, 1, 149, 320, TRUE)/* (1) * R_[80]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.i", "", "", 0, 0, 0, 512, 1, 113, 208, TRUE)/* (1) * R_[52]*/
DECLARE_VARIABLE("servo.dcac.idealDiode2.n.i", "", "", 0, 0, 0, 512, -1, 113, 210, TRUE)/* (-1) * R_[52]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.i", "", "", 0, 0, 0, 512, 1, 105, 200, TRUE)/* (1) * R_[50]*/
DECLARE_VARIABLE("servo.dcac.idealDiode6.n.i", "", "", 0, 0, 0, 512, -1, 105, 202, TRUE)/* (-1) * R_[50]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.i", "", "", 0, 0, 0, 512, 1, 97, 192, TRUE)/* (1) * R_[48]*/
DECLARE_VARIABLE("servo.dcac.idealDiode4.n.i", "", "", 0, 0, 0, 512, -1, 97, 194, TRUE)/* (-1) * R_[48]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.i", "", "", 0, 0, 0, 512, 1, 89, 184, TRUE)/* (1) * R_[46]*/
DECLARE_VARIABLE("servo.dcac.idealDiode5.n.i", "", "", 0, 0, 0, 512, -1, 89, 186, TRUE)/* (-1) * R_[46]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.i", "", "", 0, 0, 0, 512, 1, 81, 172, TRUE)/* (1) * R_[43]*/
DECLARE_VARIABLE("servo.dcac.idealDiode3.n.i", "", "", 0, 0, 0, 512, -1, 81, 174, TRUE)/* (-1) * R_[43]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.i", "", "", 0, 0, 0, 512, 1, 73, 160, TRUE)/* (1) * R_[40]*/
DECLARE_VARIABLE("servo.dcac.idealDiode1.n.i", "", "", 0, 0, 0, 512, -1, 73, 162, TRUE)/* (-1) * R_[40]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.i", "", "", 0, 0, 0, 512, 1, 65, 148, TRUE)/* (1) * R_[37]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch2.n.i", "", "", 0, 0, 0, 512, -1, 65, 150, TRUE)/* (-1) * R_[37]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.i", "", "", 
  0, 0, 0, 512, 1, 58, 140, TRUE)/* (1) * R_[35]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch6.n.i", "", "", 0, 0, 0, 512, -1, 58, 142, TRUE)/* (-1) * R_[35]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.i", "", "", 
  0, 0, 0, 512, 1, 51, 132, TRUE)/* (1) * R_[33]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch4.n.i", "", "", 0, 0, 0, 512, -1, 51, 134, TRUE)/* (-1) * R_[33]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.i", "", "", 0, 0, 0, 512, 1, 45, 124, TRUE)/* (1) * R_[31]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch5.n.i", "", "", 0, 0, 0, 512, -1, 45, 126, TRUE)/* (-1) * R_[31]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.i", "", "", 
  0, 0, 0, 512, 1, 38, 112, TRUE)/* (1) * R_[28]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch3.n.i", "", "", 0, 0, 0, 512, -1, 38, 114, TRUE)/* (-1) * R_[28]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.i", "", "", 
  0, 0, 0, 512, 1, 31, 100, TRUE)/* (1) * R_[25]*/
DECLARE_VARIABLE("servo.dcac.idealClosingSwitch1.n.i", "", "", 0, 0, 0, 512, -1, 31, 102, TRUE)/* (-1) * R_[25]*/
DECLARE_VARIABLE("servo.dcac.vLoad[3]", "", "", 
  0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.dcac.vLoad[2]", "", "", 0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.dcac.vLoad[1]", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("servo.dcac.iLoad[3]", "", "", 0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * R_[274]*/
DECLARE_VARIABLE("servo.dcac.iLoad[2]", "", "", 0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * R_[269]*/
DECLARE_VARIABLE("servo.dcac.iLoad[1]", "", "", 0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * R_[264]*/
DECLARE_VARIABLE("servo.dcac.pSupply.i", "", "", 0, 0, 0, 512, -1, 245, 702, TRUE)/* (-1) * R_[175]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[3].n.i", "", "", 0, 0, 0, 512, -1, 354, 1098, TRUE)/* (-1) * 
  R_[274]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[2].n.i", "", "", 0, 0, 0, 512, -1, 349, 1078, TRUE)/* (-1) * 
  R_[269]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[1].n.i", "", "", 0, 0, 0, 512, -1, 344, 1058, TRUE)/* (-1) * 
  R_[264]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[3].p.i", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[2].p.i", "", "", 
  0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[1].p.i", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[3].n.v", "", "", 0, 0, 0, 512, 1, 18, 72, TRUE)/* (1) * R_[18]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[2].n.v", "", "", 
  0, 0, 0, 512, 1, 17, 68, TRUE)/* (1) * R_[17]*/
DECLARE_VARIABLE("servo.currentsensor.currentSensor[1].n.v", "", "", 0, 0, 0, 512, 1, 16, 64, TRUE)/* (1) * R_[16]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_rr[1]", "", "", 
  0, 0, 0, 0, 1, 323, 976, TRUE)/* (1) * R_[244]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_rs[2]", "", "", 0, 0, 0, 512, 1, 305, 912, TRUE)/* (1) * R_[228]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_rs[1]", "", "", 0, 0, 0, 512, 1, 304, 908, TRUE)/* (1) * R_[227]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_sr[2]", "", "", 0, 0, 0, 512, 1, 492, 1536, TRUE)/* (1) * R_[384]*/
DECLARE_VARIABLE("pmsm.PMSM.airGapR.i_sr[1]", "", "", 0, 0, 0, 512, 1, 491, 1532, TRUE)/* (1) * R_[383]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_ss[2]", "", "", 0, 0, 0, 512, 1, 303, 904, TRUE)/* (1) * R_[226]*/
DECLARE_VARIABLE("pmsm.PMSM.idq_ss[1]", "", "", 0, 0, 0, 512, 1, 302, 900, TRUE)/* (1) * R_[225]*/
DECLARE_VARIABLE("pmsm.PMSM.spacePhasorS.zero.i", "", "", 0, 0, 0, 512, 1, 297, 884, TRUE)/* (1) * R_[221]*/
DECLARE_VARIABLE("pmsm.PMSM.is[3]", "", "", 0, 0, 0, 512, 1, 354, 1096, TRUE)/* (1) * R_[274]*/
DECLARE_VARIABLE("pmsm.PMSM.is[2]", "", "", 0, 0, 0, 512, 1, 349, 1076, TRUE)/* (1) * R_[269]*/
DECLARE_VARIABLE("pmsm.PMSM.is[1]", "", "", 0, 0, 0, 512, 1, 344, 1056, TRUE)/* (1) * R_[264]*/
DECLARE_VARIABLE("pmsm.PMSM.tau_shaft", "", "", 0, 0, 0, 512, -1, 275, 806, TRUE)/* (-1) * R_[201]*/
DECLARE_VARIABLE("pmsm.PMSM.tau_electrical", "", "", 0, 0, 0, 512, 1, 300, 892, TRUE)/* (1) * R_[223]*/
END_DECLARE_VARIABLE(0)
END_DECLARE_ALL_VARIABLE(1,13)
