package CyberGridML {
	private import NACREProfile::CFA::*;
	view CRA {
		expose CR1;
		expose CR4;
		expose CR5;
		expose CR3;
		expose CR2;
		expose 'DC1 Network';
		expose CR1;
		expose CR4;
		expose CR3;
		expose CR2;
		expose CR5;
		expose 'DC2 Network';
		expose SR_SCADA_Monitoring;
		expose SR_SCADA_Control;
		expose 'SR_EventDispatcher(primary)';
		expose 'SR_Gateway(IEC104)';
		expose SR_CC_HMI;
		expose SR_SCADA_Monitoring;
		expose SR_SCADA_Control;
		expose 'SR_EventDispatcher(backup)';
		expose 'SR_Gateway(IEC104)';
		expose SR_CC_HMI;
		expose 'redundancy cluster';
		expose 'Core Network';
		expose DSO_ICX;
		expose DSO_ICX;
		expose PRV_WAN_21;
		expose PRV_WAN_23;
		expose PRV_WAN_22;
		expose SR_Local_Controller;
		expose SR_Local_Controller;
		expose SR_Local_Controller;
		expose CR;
		expose CR;
		expose CR;
	}
	view CFRA {
		expose SR_SCADA_Control;
		expose Scada_controller;
	}
	view CFA {
		expose maingrid;
		expose Scada_controller;
	}
	part maingrid : MainGrid;
	part Scada_controller : CentralController;
	part CR1 : NACREProfile::CRA::ComputingResource;
	part CR4 : NACREProfile::CRA::ComputingResource;
	part CR5 : NACREProfile::CRA::ComputingResource;
	part CR3 : NACREProfile::CRA::ComputingResource;
	part CR2 : NACREProfile::CRA::ComputingResource;
	part 'DC1 Network' : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,KB/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part CR1 : NACREProfile::CRA::ComputingResource;
	part CR4 : NACREProfile::CRA::ComputingResource;
	part CR3 : NACREProfile::CRA::ComputingResource;
	part CR2 : NACREProfile::CRA::ComputingResource;
	part CR5 : NACREProfile::CRA::ComputingResource;
	part 'DC2 Network' : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part SR_SCADA_Monitoring : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part SR_SCADA_Control : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_EventDispatcher(primary)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_Gateway(IEC104)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part SR_CC_HMI : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part SR_SCADA_Monitoring : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part SR_SCADA_Control : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_EventDispatcher(backup)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_Gateway(IEC104)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part SR_CC_HMI : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'redundancy cluster' : NACREProfile::CRA::RedundancyCluster {
		attribute runtime = "active_standbay";
		attribute active = "SR_EventDispatcher(primary)" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute passive = "SR_EventDispatcher(backup)" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute hypervisor {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
	}
	part 'Core Network' : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part DSO_ICX : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part DSO_ICX : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part PRV_WAN_21 : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part PRV_WAN_23 : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part PRV_WAN_22 : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}

	part SR_Local_Controller : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part SR_Local_Controller : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part SR_Local_Controller : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part CR : NACREProfile::CRA::ComputingResource;
	part CR : NACREProfile::CRA::ComputingResource;
	part CR : NACREProfile::CRA::ComputingResource;
	view 'CRA view4' {
		expose 'SR_SCADA_Control(node_dc1)';
		expose 'SR_CC_HMI(node_dc1)';
		expose 'SR_EventDispatcher(node_dc1)';
		expose 'SR_SCADA_Monitoring(node_dc1)';
		expose 'SR_SCADA_Monitoring(node_dc2)';
		expose 'SR_SCADA_Control(node_dc2)';
		expose 'SR_EventDispatcher(node_dc2)';
		expose 'SR_CC_HMI(node_dc2)';
		expose 'SR_EventDispatcher(Node_2)';
		expose SR_local_controller;
		expose 'SR_Gateway(IEC104)';
		expose 'SR_EventDispatcher(Node_3)';
		expose 'SR_Gateway(IEC104)';
		expose 'SR_Gateway(IEC104)';
		expose 'SR_EventDispatcher(Node_1)';
		expose SR_local_controller;
		expose SR_local_controller;
		expose Edge_3;
		expose Edge_2;
		expose Edge_1;
		expose CR1;
		expose CR2;
		expose CR3;
		expose CR5;
		expose CR1;
		expose CR2;
		expose CR3;
		expose CR5;
		expose 'DC Network';
		expose 'DC Network';
		expose 'Core Network';
		expose TSO_ICX;
		expose DSO_ICX;
		expose PRV_WAN_22;
		expose PRV_WAN_23;
		expose PRV_WAN_21;
		expose 'redundancy cluster';
		expose 'redundancy cluster';
		expose 'redundancy cluster';
		expose 'redundancy cluster';
		expose 'redundancy cluster';
	}
	part 'SR_SCADA_Control(node_dc1)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_CC_HMI(node_dc1)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_EventDispatcher(node_dc1)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_SCADA_Monitoring(node_dc1)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_SCADA_Monitoring(node_dc2)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_SCADA_Control(node_dc2)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_EventDispatcher(node_dc2)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_CC_HMI(node_dc2)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_EventDispatcher(Node_2)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part SR_local_controller : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_Gateway(IEC104)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_EventDispatcher(Node_3)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_Gateway(IEC104)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_Gateway(IEC104)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part 'SR_EventDispatcher(Node_1)' : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part SR_local_controller : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part SR_local_controller : NACREProfile::CRA::SoftwareResource {
		attribute Activation_period = "periodic(period=15, jitter=0)" {
			attribute start = 0;
			attribute finish;
		}
		attribute Execution_delay {
			attribute unit;
			attribute precision;
			attribute clock;
			attribute worst;
			attribute best;
		}
	}
	part Edge_3 : NACREProfile::CRA::ComputingResource;
	part Edge_2 : NACREProfile::CRA::ComputingResource;
	part Edge_1 : NACREProfile::CRA::ComputingResource;
	part CR1 : NACREProfile::CRA::ComputingResource;
	part CR2 : NACREProfile::CRA::ComputingResource;
	part CR3 : NACREProfile::CRA::ComputingResource;
	part CR5 : NACREProfile::CRA::ComputingResource;
	part CR1 : NACREProfile::CRA::ComputingResource;
	part CR2 : NACREProfile::CRA::ComputingResource;
	part CR3 : NACREProfile::CRA::ComputingResource;
	part CR5 : NACREProfile::CRA::ComputingResource;
	part 'DC Network' : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part 'DC Network' : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part 'Core Network' : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part TSO_ICX : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part DSO_ICX : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part PRV_WAN_22 : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part PRV_WAN_23 : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part PRV_WAN_21 : NACREProfile::CRA::CommunicationMedia {
		attribute capacity = "250,kb/s" {
			attribute unit;
			attribute precision;
		}
		attribute latency = "30,ms" {
			attribute unit;
			attribute precision;
		}
	}
	part 'redundancy cluster' : NACREProfile::CRA::RedundancyCluster {
		attribute runtime = "active_standbay";
		attribute active = "SR_EventDispatcher(node_dc1)" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute passive = "SR_EventDispatcher(node_dc2)" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute hypervisor {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
	}
	part 'redundancy cluster' : NACREProfile::CRA::RedundancyCluster {
		attribute runtime = "active_standbay";
		attribute active = "SR_EventDispatcher(node_dc1)" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute passive = "SR_EventDispatcher(node_1),SR_Gateway(IEC104),SR_local_controller" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute hypervisor {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
	}
	part 'redundancy cluster' : NACREProfile::CRA::RedundancyCluster {
		attribute runtime = "active_standbay";
		attribute active = "SR_EventDispatcher(node_1),SR_Gateway(IEC104),SR_local_controller" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute passive = "SR_EventDispatcher(node_3),SR_Gateway(IEC104),SR_local_controller" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute hypervisor {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
	}
	part 'redundancy cluster' : NACREProfile::CRA::RedundancyCluster {
		attribute runtime = "active_standbay";
		attribute active = "SR_EventDispatcher(node_3),SR_Gateway(IEC104),SR_local_controller" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute passive = "SR_EventDispatcher(node_2),SR_Gateway(IEC104),SR_local_controller" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute hypervisor {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
	}
	part 'redundancy cluster' : NACREProfile::CRA::RedundancyCluster {
		attribute runtime = "active_standbay";
		attribute active = "SR_EventDispatcher(node_dc1)" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute passive = "SR_EventDispatcher(node_2),SR_Gateway(IEC104),SR_local_controller" {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
		attribute hypervisor {
			attribute Activation_period {
				attribute start = 0;
				attribute finish;
			}
			attribute Execution_delay {
				attribute unit;
				attribute precision;
				attribute clock;
				attribute worst;
				attribute best;
			}
		}
	}
	
}