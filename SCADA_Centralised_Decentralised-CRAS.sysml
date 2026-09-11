package SCADA_Final {
	view CFA {
		part maingrid1 : CyberGridMLProfile::CFA::MainGrid {
			substation : CyberGridMLProfile::CFA::Substation [1..*];
			centralController : CyberGridMLProfile::CFA::CentralController;
			part S1 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B1 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 135.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B1_G : CyberGridMLProfile::CFA::Generator {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 232.4;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = -16.9;
						}
						attribute activable;
						part LC_B1_G : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L1_2_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L1-2-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L1_2_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L1_5_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L1-5-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L1_5_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
			part S2 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B2 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 135.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B2_G : CyberGridMLProfile::CFA::Generator {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 40.0;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 42.4;
						}
						attribute activable;
						part LC_B2_G : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part B2_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 21.7;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 12.7;
						}
						attribute activable;
						part LC_B2_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L1_2_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L1-2-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L1_2_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L2_3_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L2-3-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L2_3_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L2_4_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L2-4-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L2_4_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L2_5_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L2-5-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L2_5_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
			part S3 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B3 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 135.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B3_G : CyberGridMLProfile::CFA::Generator {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 0.0;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 23.4;
						}
						attribute activable;
						part LC_B3_G : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part B3_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 94.2;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 19.0;
						}
						attribute activable;
						part LC_B3_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L2_3_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L2-3-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L2_3_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L3_4_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L3-4-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L3_4_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
			part S4 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B4 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 135.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B4_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 47.8;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = -3.9;
						}
						attribute activable;
						part LC_B4_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part T4_7_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "T4-7-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_T4_7_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part T4_9_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "T4-9-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_T4_9_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L2_4_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L2-4-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L2_4_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L3_4_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L3-4-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L3_4_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L4_5_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L4-5-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L4_5_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
				part B7 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 14.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part T4_7_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "T4-7-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_T4_7_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L7_8_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L7-8-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L7_8_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L7_9_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L7-9-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L7_9_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
				part B9 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 12.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B9_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 29.5;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 16.6;
						}
						attribute activable;
						part LC_B9_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part T4_9_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "T4-9-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_T4_9_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L7_9_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L7-9-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L7_9_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L9_10_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L9-10-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L9_10_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L9_14_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L9-14-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L9_14_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
			part S5 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B5 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 135.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B5_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 7.6;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 1.6;
						}
						attribute activable;
						part LC_B5_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part T5_6_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "T5-6-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_T5_6_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L1_5_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L1-5-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L1_5_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L2_5_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L2-5-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L2_5_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L4_5_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L4-5-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L4_5_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
				part B6 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 12.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B6_G : CyberGridMLProfile::CFA::Generator {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 0.0;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 12.2;
						}
						attribute activable;
						part LC_B6_G : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part B6_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 11.2;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 7.5;
						}
						attribute activable;
						part LC_B6_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part T5_6_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "T5-6-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_T5_6_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L6_11_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L6-11-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L6_11_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L6_12_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L6-12-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L6_12_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L6_13_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L6-13-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L6_13_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
			part S8 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B8 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 20.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B8_G : CyberGridMLProfile::CFA::Generator {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 0.0;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 17.4;
						}
						attribute activable;
						part LC_B8_G : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L7_8_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L7-8-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L7_8_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
			part S10 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B10 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 12.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B10_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 9.0;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 5.8;
						}
						attribute activable;
						part LC_B10_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L9_10_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L9-10-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L9_10_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L10_11_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L10-11-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L10_11_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
			part S11 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B11 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 12.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B11_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 3.5;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 1.8;
						}
						attribute activable;
						part LC_B11_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L6_11_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L6-11-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L6_11_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L10_11_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L10-11-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L10_11_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
			part S12 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B12 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 12.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B12_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 6.1;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 1.6;
						}
						attribute activable;
						part LC_B12_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L6_12_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L6-12-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L6_12_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L12_13_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L12-13-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L12_13_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
			part S13 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B13 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 12.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B13_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 13.5;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 5.8;
						}
						attribute activable;
						part LC_B13_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L6_13_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L6-13-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L6_13_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L12_13_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L12-13-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L12_13_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L13_14_1_1 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L13-14-1";
						attribute side = 1;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L13_14_1_1 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
			part S14 : CyberGridMLProfile::CFA::Substation {
				zone : CyberGridMLProfile::CFA::Zone [0..*];
				part B14 : CyberGridMLProfile::CFA::Bus {
					attribute nominalLevel {
						attribute unit : CyberGridMLEnum::VoltageUnitKind;
						attribute precision = 12.0;
					}
					attribute connected;
					substation : CyberGridMLProfile::CFA::Substation [1];
					part B14_L : CyberGridMLProfile::CFA::Load {
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision = 14.9;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision = 5.0;
						}
						attribute activable;
						part LC_B14_L : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L9_14_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L9-14-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L9_14_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
					part L13_14_1_2 : CyberGridMLProfile::CFA::Terminal {
						attribute finish;
						attribute branch = "L13-14-1";
						attribute side = 2;
						attribute ecr {
							attribute unit : CyberGridMLEnum::CurrentUnitKind;
							attribute precision;
						}
						line : CyberGridMLProfile::CFA::Line [1];
						attribute v {
							attribute unit : CyberGridMLEnum::VoltageUnitKind;
							attribute precision = 135;
						}
						localController : CyberGridMLProfile::CFA::LocalController;
						attribute connected;
						attribute p {
							attribute unit : CyberGridMLEnum::PowerUnitKind;
							attribute precision;
						}
						attribute q {
							attribute unit : CyberGridMLEnum::ReactivePowerUnitKind;
							attribute precision;
						}
						attribute activable;
						part LC_L13_14_1_2 : CyberGridMLProfile::CFA::LocalController {
							attribute controlBehavior;
						}
					}
				}
			}
		}
		expose maingrid1;
		part SCADA_controller : CyberGridMLProfile::CFA::CentralController {
			maingrid : CyberGridMLProfile::CFA::MainGrid [1];
			attribute controlBehavior;
		}
		expose SCADA_controller;
		allocate SCADA_controller to maingrid1;
		expose maingrid1::substation;
		expose maingrid1::S1;
		expose maingrid1::S2;
		expose maingrid1::S3;
		expose maingrid1::S4;
		expose maingrid1::S5;
		expose maingrid1::S8;
		expose maingrid1::S10;
		expose maingrid1::S11;
		expose maingrid1::S12;
		expose maingrid1::S13;
		expose maingrid1::S14;
	}
	view CRA {
		part CR_S1 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S1;
		part CR_S2 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S2;
		part CR_S3 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S3;
		part CR_S4 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S4;
		part CR_S5 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S5;
		part CR_S8 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S8;
		part CR_S10 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S10;
		part CR_S11 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S11;
		part CR_S12 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S12;
		part CR_S13 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S13;
		part CR_S14 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S14;
		part SR_gen_B1_G : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_gen_B1_G;
		allocate SR_gen_B1_G to CR_S1;
		part SR_gen_B2_G : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_gen_B2_G;
		allocate SR_gen_B2_G to CR_S2;
		part SR_loa_B2_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B2_L;
		allocate SR_loa_B2_L to CR_S2;
		part SR_gen_B3_G : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_gen_B3_G;
		allocate SR_gen_B3_G to CR_S3;
		part SR_loa_B3_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B3_L;
		allocate SR_loa_B3_L to CR_S3;
		part SR_loa_B4_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B4_L;
		allocate SR_loa_B4_L to CR_S4;
		part SR_loa_B9_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B9_L;
		allocate SR_loa_B9_L to CR_S4;
		part SR_loa_B5_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B5_L;
		allocate SR_loa_B5_L to CR_S5;
		part SR_gen_B6_G : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_gen_B6_G;
		allocate SR_gen_B6_G to CR_S5;
		part SR_loa_B6_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B6_L;
		allocate SR_loa_B6_L to CR_S5;
		part SR_gen_B8_G : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_gen_B8_G;
		allocate SR_gen_B8_G to CR_S8;
		part SR_loa_B10_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B10_L;
		allocate SR_loa_B10_L to CR_S10;
		part SR_loa_B11_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B11_L;
		allocate SR_loa_B11_L to CR_S11;
		part SR_loa_B12_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B12_L;
		allocate SR_loa_B12_L to CR_S12;
		part SR_loa_B13_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B13_L;
		allocate SR_loa_B13_L to CR_S13;
		part SR_loa_B14_L : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_loa_B14_L;
		allocate SR_loa_B14_L to CR_S14;
		part SR_tie_T4_7_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_T4_7_1_1;
		allocate SR_tie_T4_7_1_1 to CR_S4;
		part SR_tie_T4_7_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_T4_7_1_2;
		allocate SR_tie_T4_7_1_2 to CR_S4;
		part SR_tie_T4_9_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_T4_9_1_1;
		allocate SR_tie_T4_9_1_1 to CR_S4;
		part SR_tie_T4_9_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_T4_9_1_2;
		allocate SR_tie_T4_9_1_2 to CR_S4;
		part SR_tie_T5_6_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_T5_6_1_1;
		allocate SR_tie_T5_6_1_1 to CR_S5;
		part SR_tie_T5_6_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_T5_6_1_2;
		allocate SR_tie_T5_6_1_2 to CR_S5;
		part SR_tie_L1_2_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L1_2_1_1;
		allocate SR_tie_L1_2_1_1 to CR_S1;
		part SR_tie_L1_2_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L1_2_1_2;
		allocate SR_tie_L1_2_1_2 to CR_S2;
		part SR_tie_L1_5_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L1_5_1_1;
		allocate SR_tie_L1_5_1_1 to CR_S1;
		part SR_tie_L1_5_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L1_5_1_2;
		allocate SR_tie_L1_5_1_2 to CR_S5;
		part SR_tie_L2_3_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L2_3_1_1;
		allocate SR_tie_L2_3_1_1 to CR_S2;
		part SR_tie_L2_3_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L2_3_1_2;
		allocate SR_tie_L2_3_1_2 to CR_S3;
		part SR_tie_L2_4_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L2_4_1_1;
		allocate SR_tie_L2_4_1_1 to CR_S2;
		part SR_tie_L2_4_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L2_4_1_2;
		allocate SR_tie_L2_4_1_2 to CR_S4;
		part SR_tie_L2_5_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L2_5_1_1;
		allocate SR_tie_L2_5_1_1 to CR_S2;
		part SR_tie_L2_5_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L2_5_1_2;
		allocate SR_tie_L2_5_1_2 to CR_S5;
		part SR_tie_L3_4_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L3_4_1_1;
		allocate SR_tie_L3_4_1_1 to CR_S3;
		part SR_tie_L3_4_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L3_4_1_2;
		allocate SR_tie_L3_4_1_2 to CR_S4;
		part SR_tie_L4_5_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L4_5_1_1;
		allocate SR_tie_L4_5_1_1 to CR_S4;
		part SR_tie_L4_5_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L4_5_1_2;
		allocate SR_tie_L4_5_1_2 to CR_S5;
		part SR_tie_L6_11_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L6_11_1_1;
		allocate SR_tie_L6_11_1_1 to CR_S5;
		part SR_tie_L6_11_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L6_11_1_2;
		allocate SR_tie_L6_11_1_2 to CR_S11;
		part SR_tie_L6_12_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L6_12_1_1;
		allocate SR_tie_L6_12_1_1 to CR_S5;
		part SR_tie_L6_12_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L6_12_1_2;
		allocate SR_tie_L6_12_1_2 to CR_S12;
		part SR_tie_L6_13_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L6_13_1_1;
		allocate SR_tie_L6_13_1_1 to CR_S5;
		part SR_tie_L6_13_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L6_13_1_2;
		allocate SR_tie_L6_13_1_2 to CR_S13;
		part SR_tie_L7_8_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L7_8_1_1;
		allocate SR_tie_L7_8_1_1 to CR_S4;
		part SR_tie_L7_8_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L7_8_1_2;
		allocate SR_tie_L7_8_1_2 to CR_S8;
		part SR_tie_L7_9_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L7_9_1_1;
		allocate SR_tie_L7_9_1_1 to CR_S4;
		part SR_tie_L7_9_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L7_9_1_2;
		allocate SR_tie_L7_9_1_2 to CR_S4;
		part SR_tie_L9_10_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L9_10_1_1;
		allocate SR_tie_L9_10_1_1 to CR_S4;
		part SR_tie_L9_10_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L9_10_1_2;
		allocate SR_tie_L9_10_1_2 to CR_S10;
		part SR_tie_L9_14_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L9_14_1_1;
		allocate SR_tie_L9_14_1_1 to CR_S4;
		part SR_tie_L9_14_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L9_14_1_2;
		allocate SR_tie_L9_14_1_2 to CR_S14;
		part SR_tie_L10_11_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L10_11_1_1;
		allocate SR_tie_L10_11_1_1 to CR_S10;
		part SR_tie_L10_11_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L10_11_1_2;
		allocate SR_tie_L10_11_1_2 to CR_S11;
		part SR_tie_L12_13_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L12_13_1_1;
		allocate SR_tie_L12_13_1_1 to CR_S12;
		part SR_tie_L12_13_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L12_13_1_2;
		allocate SR_tie_L12_13_1_2 to CR_S13;
		part SR_tie_L13_14_1_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L13_14_1_1;
		allocate SR_tie_L13_14_1_1 to CR_S13;
		part SR_tie_L13_14_1_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_tie_L13_14_1_2;
		allocate SR_tie_L13_14_1_2 to CR_S14;
		part CR1_DC1 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR1_DC1;
		part 'Core Network' : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose 'Core Network';
		part 'DC1 Network' : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose 'DC1 Network';
		part 'DC2 Network' : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose 'DC2 Network';
		part TSO_ICX : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose TSO_ICX;
		part DSO_ICX : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose DSO_ICX;
		part PRV_WAN_S1 : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose PRV_WAN_S1;
		part PRV_WAN_S2 : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose PRV_WAN_S2;
		part PRV_WAN_S3 : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose PRV_WAN_S3;
		allocate CR_S1 to PRV_WAN_S1;
		allocate CR_S2 to PRV_WAN_S2;
		allocate CR_S3 to PRV_WAN_S3;
		allocate 'Core Network' to TSO_ICX;
		allocate 'Core Network' to DSO_ICX;
		allocate 'Core Network' to PRV_WAN_S1;
		allocate 'Core Network' to PRV_WAN_S2;
		allocate 'Core Network' to PRV_WAN_S3;
		allocate 'Core Network' to 'DC2 Network';
		allocate 'Core Network' to 'DC1 Network';
		part CR2_DC1 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR2_DC1;
		part CR3_DC1 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR3_DC1;
		part CR4_DC1 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR4_DC1;
		part CR5_DC1 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR5_DC1;
		part CR5_DC2 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR5_DC2;
		part CR4_DC2 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR4_DC2;
		part CR3_DC2 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR3_DC2;
		part CR2_DC2 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR2_DC2;
		part CR1_DC2 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR1_DC2;
		allocate CR1_DC1 to 'DC1 Network';
		allocate CR2_DC1 to 'DC1 Network';
		allocate CR3_DC1 to 'DC1 Network';
		allocate CR4_DC1 to 'DC1 Network';
		allocate CR5_DC1 to 'DC1 Network';
		allocate CR5_DC2 to 'DC2 Network';
		allocate CR4_DC2 to 'DC2 Network';
		allocate CR3_DC2 to 'DC2 Network';
		allocate CR2_DC2 to 'DC2 Network';
		allocate CR1_DC2 to 'DC2 Network';
		part 'SR_GatyeWay(IEC104)_1' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_GatyeWay(IEC104)_1';
		part 'SR_EventDispatcher (Primary)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_EventDispatcher (Primary)';
		part SR_SCADA_Monitoring_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_SCADA_Monitoring_1;
		allocate 'SR_GatyeWay(IEC104)_1' to CR1_DC1;
		allocate 'SR_EventDispatcher (Primary)' to CR2_DC1;
		allocate SR_SCADA_Monitoring_1 to CR3_DC1;
		part SR_SCADA_Control_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_SCADA_Control_1;
		part SR_CC_HMI_1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_CC_HMI_1;
		part SR_CC_HMI_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_CC_HMI_2;
		part SR_SCADA_Control_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_SCADA_Control_2;
		part 'SR_EventDispatcher (backup)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_EventDispatcher (backup)';
		part 'SR_GatyeWay(IEC104)_2' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_GatyeWay(IEC104)_2';
		allocate 'SR_GatyeWay(IEC104)_2' to CR1_DC2;
		allocate 'SR_EventDispatcher (backup)' to CR2_DC2;
		allocate SR_SCADA_Control_2 to CR4_DC2;
		allocate SR_CC_HMI_2 to CR5_DC2;
		allocate SR_CC_HMI_1 to CR5_DC1;
		allocate SR_SCADA_Control_1 to CR4_DC1;
		part 'redundancycluster (Event Replication)' : CyberGridMLProfile::CRA::RedundancyCluster {
			attribute runtime : CyberGridMLEnum::RedundancyKind;
			active :> 'SR_EventDispatcher (Primary)' : CyberGridMLProfile::CRA::SoftwareResource [1..*];
			passive :> 'SR_EventDispatcher (backup)' : CyberGridMLProfile::CRA::SoftwareResource [1..*];
			hypervisor : CyberGridMLProfile::CRA::SoftwareResource [0..1];
		}
		expose 'redundancycluster (Event Replication)';
		part Edge_1 : CyberGridMLProfile::CRA::ComputingResource;
		expose Edge_1;
		allocate Edge_1 to PRV_WAN_S1;
		allocate SR_gen_B1_G to Edge_1;
		allocate 'SR_EventDispatcher (Primary)' to Edge_1;
		allocate 'SR_GatyeWay(IEC104)_1' to Edge_1;
		part Edge_2 : CyberGridMLProfile::CRA::ComputingResource;
		expose Edge_2;
		part Edge_3 : CyberGridMLProfile::CRA::ComputingResource;
		expose Edge_3;
		allocate SR_gen_B2_G to Edge_2;
		part 'SR_EventDispatcher (node_1)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_EventDispatcher (node_1)';
		allocate 'SR_EventDispatcher (node_1)' to Edge_1;
		allocate 'SR_GatyeWay(IEC104)_2' to Edge_2;
		allocate Edge_2 to PRV_WAN_S2;
		part 'SR_EventDispatcher (node_2)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_EventDispatcher (node_2)';
		allocate 'SR_EventDispatcher (node_2)' to Edge_2;
		allocate SR_gen_B3_G to Edge_3;
		allocate Edge_3 to PRV_WAN_S3;
		part 'redundancycluster (Event_Duplication)' : CyberGridMLProfile::CRA::RedundancyCluster {
			attribute runtime : CyberGridMLEnum::RedundancyKind;
			active :> 'SR_EventDispatcher (node_dc1)' : CyberGridMLProfile::CRA::SoftwareResource [1..*];
			passive :> 'SR_EventDispatcher (node_dc2)', 'SR_EventDispatcher (node_3)', 'SR_EventDispatcher (node_1)', 'SR_EventDispatcher (node_2)' : CyberGridMLProfile::CRA::SoftwareResource [1..*];
			hypervisor : CyberGridMLProfile::CRA::SoftwareResource [0..1];
		}
		expose 'redundancycluster (Event_Duplication)';
		part 'SR_EventDispatcher (node_3)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_EventDispatcher (node_3)';
		part 'SR_GatyeWay(IEC104)_3' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_GatyeWay(IEC104)_3';
		allocate Edge_3 to TSO_ICX;
		allocate 'SR_EventDispatcher (node_3)' to Edge_3;
		allocate 'SR_GatyeWay(IEC104)_3' to Edge_3;
		part 'SR_CC_HMI_(node_dc2)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_CC_HMI_(node_dc2)';
		allocate 'SR_CC_HMI_(node_dc2)' to CR5_DC2;
		part SR_SCADA_Monitoring_2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_SCADA_Monitoring_2;
		allocate SR_SCADA_Monitoring_2 to CR3_DC2;
		part 'SR_SCADA_Control (node_dc2)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_SCADA_Control (node_dc2)';
		part 'SR_SCADA_Monitoring (node_dc2)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_SCADA_Monitoring (node_dc2)';
		allocate 'SR_SCADA_Control (node_dc2)' to CR4_DC2;
		allocate 'SR_SCADA_Monitoring (node_dc2)' to CR3_DC2;
		part 'SR_EventDispatcher (node_dc2)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_EventDispatcher (node_dc2)';
		allocate 'SR_EventDispatcher (node_dc2)' to CR2_DC2;
		part 'SR_EventDispatcher (node_dc1)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_EventDispatcher (node_dc1)';
		part 'SR_SCADA_Monitoring (node_dc1)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_SCADA_Monitoring (node_dc1)';
		allocate 'SR_EventDispatcher (node_dc1)' to CR2_DC1;
		allocate 'SR_SCADA_Monitoring (node_dc1)' to CR3_DC1;
		part 'SR_SCADA_Control (node_dc1)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_SCADA_Control (node_dc1)';
		part 'SR_CC_HMI_(node_dc1)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_CC_HMI_(node_dc1)';
		allocate 'SR_CC_HMI_(node_dc1)' to CR5_DC1;
		allocate 'SR_SCADA_Control (node_dc1)' to CR4_DC1;
	}
	view CFRA {
		allocate CRA::SR_gen_B1_G to CFA::maingrid1::S1::B1::B1_G::LC_B1_G;
		allocate CRA::SR_gen_B2_G to CFA::maingrid1::S2::B2::B2_G::LC_B2_G;
		allocate CRA::SR_loa_B2_L to CFA::maingrid1::S2::B2::B2_L::LC_B2_L;
		allocate CRA::SR_gen_B3_G to CFA::maingrid1::S3::B3::B3_G::LC_B3_G;
		allocate CRA::SR_loa_B3_L to CFA::maingrid1::S3::B3::B3_L::LC_B3_L;
		allocate CRA::SR_loa_B4_L to CFA::maingrid1::S4::B4::B4_L::LC_B4_L;
		allocate CRA::SR_loa_B9_L to CFA::maingrid1::S4::B9::B9_L::LC_B9_L;
		allocate CRA::SR_loa_B5_L to CFA::maingrid1::S5::B5::B5_L::LC_B5_L;
		allocate CRA::SR_gen_B6_G to CFA::maingrid1::S5::B6::B6_G::LC_B6_G;
		allocate CRA::SR_loa_B6_L to CFA::maingrid1::S5::B6::B6_L::LC_B6_L;
		allocate CRA::SR_gen_B8_G to CFA::maingrid1::S8::B8::B8_G::LC_B8_G;
		allocate CRA::SR_loa_B10_L to CFA::maingrid1::S10::B10::B10_L::LC_B10_L;
		allocate CRA::SR_loa_B11_L to CFA::maingrid1::S11::B11::B11_L::LC_B11_L;
		allocate CRA::SR_loa_B12_L to CFA::maingrid1::S12::B12::B12_L::LC_B12_L;
		allocate CRA::SR_loa_B13_L to CFA::maingrid1::S13::B13::B13_L::LC_B13_L;
		allocate CRA::SR_loa_B14_L to CFA::maingrid1::S14::B14::B14_L::LC_B14_L;
		allocate CRA::SR_tie_T4_7_1_1 to CFA::maingrid1::S4::B4::T4_7_1_1::LC_T4_7_1_1;
		allocate CRA::SR_tie_T4_7_1_2 to CFA::maingrid1::S4::B7::T4_7_1_2::LC_T4_7_1_2;
		allocate CRA::SR_tie_T4_9_1_1 to CFA::maingrid1::S4::B4::T4_9_1_1::LC_T4_9_1_1;
		allocate CRA::SR_tie_T4_9_1_2 to CFA::maingrid1::S4::B9::T4_9_1_2::LC_T4_9_1_2;
		allocate CRA::SR_tie_T5_6_1_1 to CFA::maingrid1::S5::B5::T5_6_1_1::LC_T5_6_1_1;
		allocate CRA::SR_tie_T5_6_1_2 to CFA::maingrid1::S5::B6::T5_6_1_2::LC_T5_6_1_2;
		allocate CRA::SR_tie_L1_2_1_1 to CFA::maingrid1::S1::B1::L1_2_1_1::LC_L1_2_1_1;
		allocate CRA::SR_tie_L1_2_1_2 to CFA::maingrid1::S2::B2::L1_2_1_2::LC_L1_2_1_2;
		allocate CRA::SR_tie_L1_5_1_1 to CFA::maingrid1::S1::B1::L1_5_1_1::LC_L1_5_1_1;
		allocate CRA::SR_tie_L1_5_1_2 to CFA::maingrid1::S5::B5::L1_5_1_2::LC_L1_5_1_2;
		allocate CRA::SR_tie_L2_3_1_1 to CFA::maingrid1::S2::B2::L2_3_1_1::LC_L2_3_1_1;
		allocate CRA::SR_tie_L2_3_1_2 to CFA::maingrid1::S3::B3::L2_3_1_2::LC_L2_3_1_2;
		allocate CRA::SR_tie_L2_4_1_1 to CFA::maingrid1::S2::B2::L2_4_1_1::LC_L2_4_1_1;
		allocate CRA::SR_tie_L2_4_1_2 to CFA::maingrid1::S4::B4::L2_4_1_2::LC_L2_4_1_2;
		allocate CRA::SR_tie_L2_5_1_1 to CFA::maingrid1::S2::B2::L2_5_1_1::LC_L2_5_1_1;
		allocate CRA::SR_tie_L2_5_1_2 to CFA::maingrid1::S5::B5::L2_5_1_2::LC_L2_5_1_2;
		allocate CRA::SR_tie_L3_4_1_1 to CFA::maingrid1::S3::B3::L3_4_1_1::LC_L3_4_1_1;
		allocate CRA::SR_tie_L3_4_1_2 to CFA::maingrid1::S4::B4::L3_4_1_2::LC_L3_4_1_2;
		allocate CRA::SR_tie_L4_5_1_1 to CFA::maingrid1::S4::B4::L4_5_1_1::LC_L4_5_1_1;
		allocate CRA::SR_tie_L4_5_1_2 to CFA::maingrid1::S5::B5::L4_5_1_2::LC_L4_5_1_2;
		allocate CRA::SR_tie_L6_11_1_1 to CFA::maingrid1::S5::B6::L6_11_1_1::LC_L6_11_1_1;
		allocate CRA::SR_tie_L6_11_1_2 to CFA::maingrid1::S11::B11::L6_11_1_2::LC_L6_11_1_2;
		allocate CRA::SR_tie_L6_12_1_1 to CFA::maingrid1::S5::B6::L6_12_1_1::LC_L6_12_1_1;
		allocate CRA::SR_tie_L6_12_1_2 to CFA::maingrid1::S12::B12::L6_12_1_2::LC_L6_12_1_2;
		allocate CRA::SR_tie_L6_13_1_1 to CFA::maingrid1::S5::B6::L6_13_1_1::LC_L6_13_1_1;
		allocate CRA::SR_tie_L6_13_1_2 to CFA::maingrid1::S13::B13::L6_13_1_2::LC_L6_13_1_2;
		allocate CRA::SR_tie_L7_8_1_1 to CFA::maingrid1::S4::B7::L7_8_1_1::LC_L7_8_1_1;
		allocate CRA::SR_tie_L7_8_1_2 to CFA::maingrid1::S8::B8::L7_8_1_2::LC_L7_8_1_2;
		allocate CRA::SR_tie_L7_9_1_1 to CFA::maingrid1::S4::B7::L7_9_1_1::LC_L7_9_1_1;
		allocate CRA::SR_tie_L7_9_1_2 to CFA::maingrid1::S4::B9::L7_9_1_2::LC_L7_9_1_2;
		allocate CRA::SR_tie_L9_10_1_1 to CFA::maingrid1::S4::B9::L9_10_1_1::LC_L9_10_1_1;
		allocate CRA::SR_tie_L9_10_1_2 to CFA::maingrid1::S10::B10::L9_10_1_2::LC_L9_10_1_2;
		allocate CRA::SR_tie_L9_14_1_1 to CFA::maingrid1::S4::B9::L9_14_1_1::LC_L9_14_1_1;
		allocate CRA::SR_tie_L9_14_1_2 to CFA::maingrid1::S14::B14::L9_14_1_2::LC_L9_14_1_2;
		allocate CRA::SR_tie_L10_11_1_1 to CFA::maingrid1::S10::B10::L10_11_1_1::LC_L10_11_1_1;
		allocate CRA::SR_tie_L10_11_1_2 to CFA::maingrid1::S11::B11::L10_11_1_2::LC_L10_11_1_2;
		allocate CRA::SR_tie_L12_13_1_1 to CFA::maingrid1::S12::B12::L12_13_1_1::LC_L12_13_1_1;
		allocate CRA::SR_tie_L12_13_1_2 to CFA::maingrid1::S13::B13::L12_13_1_2::LC_L12_13_1_2;
		allocate CRA::SR_tie_L13_14_1_1 to CFA::maingrid1::S13::B13::L13_14_1_1::LC_L13_14_1_1;
		allocate CRA::SR_tie_L13_14_1_2 to CFA::maingrid1::S14::B14::L13_14_1_2::LC_L13_14_1_2;
		expose CFA::SCADA_controller;
		expose CRA::'SR_GatyeWay(IEC104)_1';
		expose CRA::'SR_EventDispatcher (Primary)';
		expose CRA::SR_SCADA_Monitoring_1;
		expose CRA::SR_SCADA_Control_1;
		expose CRA::SR_CC_HMI_1;
		allocate 'SR_GatyeWay(IEC104)_1' to SCADA_controller;
		allocate 'SR_EventDispatcher (Primary)' to SCADA_controller;
		allocate SR_SCADA_Monitoring_1 to SCADA_controller;
		allocate SR_SCADA_Control_1 to SCADA_controller;
		allocate SR_CC_HMI_1 to SCADA_controller;
		expose CRA::'SR_EventDispatcher (backup)';
		allocate 'SR_EventDispatcher (backup)' to SCADA_controller;
	}
}