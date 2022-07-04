#!/bin/bash
#### section 2 of Module of CCNP "THIS BASH SCRIPT WILL KILL YOU"
#### "LIKE RIGHT NOW!!!!"
#### *SIIIIIIIIIP SOUNDS*

echo "Enterprise Campus Model  
                                KNOWN AS THE THREE TIER BOI

	What is it used for and why use it?
    The Enterprise Campus Model is used for larger sized networks which includes 3 layers.

    The purpose of employing this type of design is to achieve high redundancy
    (eliminating the single point of failure) while keeping scalability in
    mind. 
        The first layer is the Access Layer. -The Access Layer provides
        connectivity from the 
        end user to the switch or WAP (wireless Access Point). 
            -The Access Layer includes services such as Network Admission
            Control (NAC), QoS, 
            PoE, PortSec, and Authentication.
            -Because the work load in the access layer is not intensive, Layer
            2 switches are 
            usually used, which saves the organization money. 

        The Second Layer is The distribution layer. 
            -The distribution layer is also referred to as the (aggregation
            layer). 
            -This layer serves as the layer 3 uplink and access layer
            aggregation point. This 
            layer obvi connects directly to the access layer and uses mesh
            connectivity to 
            the access layer. 
            -Distrubution services are Qos resource reservation, interVLAN
            routing, 
            packet manipulation, ACLs, IPS, route filtering, and route
            summarization. 

            *** Special Note ***

            | The Distribution layer will serve as the Access layer's default
            gateway.  
            layer is the Smitty J of the Campus design. It does the work, but
            can get overworked depending on the size of the Access layer. 

        The third layer is the core layer, referred to as the (Network
        Backbone). 
            -The only purpose is to provide low latency and high availability.
            -This layer is to reduce the stress and work load of distribution
            layer. 

            *** Special Note ***

            | For small networks, the core and distribution layers merge into
            what is known as a
            (collapsed core network) or (two-tier architecture design). the
            issue with this is that it allows limited scalability BUT reduces cost.

                            WHY USE A 2 TIER VS A 3 TIER
        The two tier network MUST PROVIDE.
            - High-speed physical and logical paths.
            - Layer 2 aggregation and demarcation point.
            - Routing and network access policies.
            - Intelligent network services (for example, QoS, network
              virtualization).

        There are two versions of the "collapsed core" design 
            -Layer 2 Access Design (Access layer is layer 2 switches)
                -- Known as the traditional LAN design
                -- Relies on Layer 2 Protocols to prevent loops. Issue with this 
                is that it is just simpler to use layer 3 switches. You are losing 
                Bandwidth or using double the ehternet cable, when you can just use
                1 ethernet cable with a laeyr 3 switch and lose nothung but some
                money.
            -Layer 3 Access Design (Access layer is layer 3 switches)
                -- Doesn't need to use STP,FHRP
                -- For troubleshooting purposes you are able to ping 
                other than the managment VLAN
                -- Able to use routing protocol EIGRP, RIP, OSPF

                            VSS and Stacking technologies

        ----------------------------------------------------------------------
        |    -APART OF THE SIMPLIFIED CAMPUS DESIGN!!!!!!!!!!!!!!!!!!!!!!!   |
        ----------------------------------------------------------------------
            - You can stack any switch to any Campus Model to make things
            more simple.

                --VSS (Virtual Switching System) / Cisco StackWise
                    --- Allows swithes to act/ be configured as one switch.
                    --- Access switch can use a single Multichassis EtherChannel
                    (MEC) upstream link to connect to a distribution switch.
                    --- Eliminates the use for FHRP.
                    --- STP is not relied on as much .
                    --- Allows you to use a Hub-and-spoke network topology.
