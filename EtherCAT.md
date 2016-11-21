EtherCAT


"Pass-Through Reading"
	each node reads inputs of other nodes, adds it's outputs to the payload and forwards the message

	no small payloads (w/ ethernet overhead)
	no targeted messages


Each EtherCAT device is a switch
	ringed

	self-terminating

	topologies
		star
		line
		tree


CIP = Common Industrial Protocol

ODVA
	Object/Instance/Attribute


EtherCAT Frame
	data space accomodates all devices in the ring

	- Ethernet Header
	- EtherCAT Header
	- PDO Data
	- WC (working counter)
	- CRC

	the payload length is fixed
	EtherCAT Header
		length: integer
		reserved: ???
		type: integer

PDO Data
	Process Data Objects
	~ corresponds to the number of nodes (i.e. number of messages)
	~ each PDO addressed to a node


Speed
	each node induces a delay; more nodes = more latency
	...BUT typical EtherCAT networks deliver data faster than a typical PC can handle and must be artificially slowed

	e.g. 1000 DI/O ~ 30µs
	e.g. 100 servos updated ~ 10KHz


Topologies
	messages automatically reverse at the end of a branch
	telegrams can be routed
		routing induces a delay

Synchronization
	each node adds a timestamp on the send and return phase of messages

	the master can calculate and track the latency of each node with high accuracy (enormous sample size)

Device Profiles
	supports CANopen family and Sercos

Safety Protocol
	FSoE = Funtional Safety over EtherCAT

	FSoE meets SIL-3

	adds safety info the EtherCAT frame

Development
	any Ethernet MAC can be a master

	slaves must use the EtherCAT ASIC

Implementation
	uses standard industrial-ethernet gear