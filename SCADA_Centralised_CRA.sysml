package SCADA {
	view CFA {
		part 'MAIN GRID' : CyberGridMLProfile::CFA::MainGrid {
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
						part Event_Dispatcher_LC : CyberGridMLProfile::CFA::LocalController {
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
		}
		expose 'MAIN GRID';
		part SCADA_CONTROLLER : CyberGridMLProfile::CFA::CentralController {
			maingrid : CyberGridMLProfile::CFA::MainGrid [1];
			attribute controlBehavior;
		}
		expose SCADA_CONTROLLER;
		allocate SCADA_CONTROLLER to 'MAIN GRID';
	}
	view CFRA {
		expose CFA::SCADA_CONTROLLER;
		expose CRA_SCADA_centralized_architecture::SR_SCADA_Control;
		expose CRA_SCADA_centralized_architecture::'SR_EventDispatcher(primary)';
		expose CRA_SCADA_centralized_architecture::'SR_EventDispatcher(backup)';
		expose CFA::'MAIN GRID'::S1::B1::B1_G::Event_Dispatcher_LC;
		allocate SR_SCADA_Control to SCADA_CONTROLLER;
		allocate 'SR_EventDispatcher(primary)' to Event_Dispatcher_LC;
		allocate 'SR_EventDispatcher(backup)' to Event_Dispatcher_LC;
	}
	view CRA_SCADA_centralized_architecture {
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
		part CR_S5 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S5;
		part CR_S6 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S6;
		part CR_S7 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S7;
		part CR_S4 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S4;
		part CR_S8 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S8;
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
		part CR_S9 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S4;
		part CR_S10 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S5;
		part CR_S11 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S6;
		part CR_S12 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S7;
		part CR_S13 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S8;
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
		part 'SR_EventDispatcher(backup)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_EventDispatcher(backup)';
		part 'SR_Gateway(IEC104)_2' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_Gateway(IEC104)_2';
		part SR_CC_HMI : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_CC_HMI;
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
		expose SR_SCADA_Monitoring_1;
		part SR_SCADA_Control : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		part 'SR_EventDispatcher(primary)' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_EventDispatcher(primary)';
		part 'SR_Gateway(IEC104)_1' : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose 'SR_Gateway(IEC104)_2';
		part SR_CC_HMI : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_CC_HMI;
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
		part PRV_WAN_23 : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose PRV_WAN_23;
		part PRV_WAN_22 : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose PRV_WAN_22;
		part PRV_WAN_21 : CyberGridMLProfile::CRA::CommunicationMedia {
			attribute capacity {
				attribute unit : CyberGridMLEnum::CapacityUnitKind = "Kilobytes";
				attribute precision = 250;
			}
			attribute latency {
				attribute unit : CyberGridMLEnum::LatencyUnitKind = "Milliseconds";
				attribute precision = 30;
			}
		}
		expose PRV_WAN_21;
		part CR_S1 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S1;
		part CR_S2 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S1;
		part CR_S3 : CyberGridMLProfile::CRA::ComputingResource;
		expose CR_S1;
		part SR_Local_controller1 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_Local_controller1;
		part SR_Local_controller2 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_Local_controller1;
		part SR_Local_controller3 : CyberGridMLProfile::CRA::SoftwareResource {
			attribute Activation_period {
				attribute start = 0;
				attribute finish = 15;
			}
			attribute Execution_delay {
				attribute start = 0;
				attribute finish = 15;
			}
		}
		expose SR_Local_controller1;
		allocate 'DC1 Network' to 'Core Network';
		allocate DSO_ICX to 'Core Network';
		allocate PRV_WAN_22 to 'Core Network';
		allocate PRV_WAN_23 to 'Core Network';
		part redundancy_cluster : CyberGridMLProfile::CRA::RedundancyCluster {
			attribute runtime : CyberGridMLEnum::RedundancyKind = "active_standby";
			active :> 'SR_EventDispatcher(primary)' : CyberGridMLProfile::CRA::SoftwareResource [1..*];
			passive :> 'SR_EventDispatcher(backup)' : CyberGridMLProfile::CRA::SoftwareResource [1..*];
			hypervisor : CyberGridMLProfile::CRA::SoftwareResource [0..1];
		}
		expose redundancy_cluster;
		allocate PRV_WAN_21 to 'Core Network';
		allocate TSO_ICX to 'Core Network';
		expose CR_S2;
		expose CR_S3;
		allocate CR_S1 to PRV_WAN_21;
		allocate CR_S2 to PRV_WAN_22;
		allocate CR_S3 to PRV_WAN_23;
		expose SR_Local_controller2;
		expose SR_Local_controller3;
		allocate SR_Local_controller1 to CR_S1;
		allocate SR_Local_controller2 to CR_S2;
		allocate SR_Local_controller3 to CR_S3;
		allocate 'DC2 Network' to 'Core Network';
		allocate CR_S4 to 'DC2 Network';
		allocate CR_S5 to 'DC2 Network';
		allocate CR_S6 to 'DC2 Network';
		allocate CR_S7 to 'DC2 Network';
		allocate CR_S8 to 'DC2 Network';
		expose CR_S9;
		expose CR_S10;
		expose CR_S11;
		expose CR_S12;
		expose CR_S13;
		allocate CR_S13 to 'DC1 Network';
		allocate CR_S12 to 'DC1 Network';
		allocate CR_S11 to 'DC1 Network';
		allocate CR_S10 to 'DC1 Network';
		allocate CR_S9 to 'DC1 Network';
		expose 'SR_Gateway(IEC104)_1';
		allocate 'SR_Gateway(IEC104)_1' to CR_S13;
		allocate 'SR_Gateway(IEC104)_2' to CR_S8;
		expose SR_SCADA_Control;
		allocate SR_SCADA_Control to CR_S9;
		expose SR_SCADA_Monitoring_2;
		allocate SR_SCADA_Monitoring_2 to CR_S10;
		allocate SR_SCADA_Monitoring_1 to CR_S5;
		allocate SR_SCADA_Control to CR_S4;
		allocate SR_CC_HMI to CR_S11;
		allocate SR_CC_HMI to CR_S6;
		allocate 'SR_EventDispatcher(primary)' to CR_S12;
		allocate 'SR_EventDispatcher(backup)' to CR_S6;
	}
}