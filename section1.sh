#!/bin/bash
#### section 2 of Module of CCNP "THIS BASH SCRIPT WILL KILL YOU"
#### "LIKE RIGHT NOW!!!!"
#### *SIIIIIIIIIP SOUNDS*

echo "      Hierarchical LAN Design Model

Why use it? what benefit does it bring to the table?

using a taditional flat network jawn ALL ENDPOINTS (Servers, computers,
printers etc.) connect using Layer 2 switches. so same subnet, same bandwidth
and same broadcast domain.

So we need the Hierarchical LAN design cause...
        1) Less work for the network
        2) More Scalability


Hierarchial design uses four design principles: 
        hierarchy, modularity, resiliency, and flexibility

                Hierarchial LAN design
        
        What you need to know 
            - Has uses 3 layers for the traditional campus design.
                    Access, Distribution, Core
            - Smaller campus environments may have a collapsed core.
                    Where core and distribution come together as one.
            

                                ACCESS LAYER
            - Referred to as the network edge, end devices connect to it.
            - high-bandwidth connectivity using wired and wireless,
                    like Gigabit ehternet, 802.11n and 802.11ac
            

                                DISTRIBUTION LAYER
                                
                                *** Special Note ***

            | The Distribution layer will serve as the Access layer's default
            gateway.  
            layer is the Smitty J of the Campus design. It does the work, but
            can get overworked depending on the size of the Access layer. 

            - Aggregate access layer switches
            - Deployed in pairs for redundancy
            - 2 key functions
            
                    Layer 2: - Creates boundary for STP
                             - Limits propagation of Layer 2 faults
                    Layer 3: -summarizes IP routing info to enter the core


                                CORE LAYER
            - Aggregation point for multiple networks
                    provides scalability, high availability and fast convergance
    

                    Enterprise Network Architecture Options

    ■ Two-tier design (collapsed core)
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
                1 ethernet cable with a laeyr 3 switch and lose nothing but some
                money.
            -Layer 3 Access Design (Access layer is layer 3 switches)
                -- Doesn't need to use STP,FHRP
                -- For troubleshooting purposes you are able to ping 
                other than the managment VLAN
                -- Able to use routing protocol EIGRP, RIP, OSPF        
                    
    ■ Three-tier design
        Typically used for the following reasons:
        - Large campus netowrks that use more than 1 building
        - Using alot of WAN devices it affects proformance of the network


    ■ Layer 2 access layer (STP based)
        Like said above its cheap but you get cheap networking, 
                To keep it a buck fiddy wit you cuh it suck boo boo
        uses FHRP (VRRP and HSRP)   dont trip folk we gonna cover this later >;)
                down side you are only using a single access uplink
        Loop-free and Looped topology
                    - Loop-free is where a VLAN is constrained to a single switch 
                    each switch is its own VLAN
                            UP SIDE: you can use GLBP, no STP blocking, higher Bandwidth than looped
                            DOWN SIDE: network flexibility, switches can't talk to eachother
                    - Looped is where all switches are on the same VLAN
                            UP SIDE: switches can talk to each other, more flexible
                            DOWN SIDE: STP blocks paths, cuts bandwith in half, no GLBP
                                       slower netowk convergance.
                                   
    ■ Layer 3 access layer (routed access)
                    As stated above essentially you just use layer devices all around.
                    
                    
    ■ Simplified campus design (using VSS and stackwise)
            - StackWise can be applied to any switch to any Campus Model to make things
            more simple.

                --VSS (Virtual Switching System) / Cisco StackWise
                    --- Allows swithes to act/ be configured as one switch.
                    --- Access switch can use a single Multichassis EtherChannel
                    (MEC) upstream link to connect to a distribution switch.
                    --- Eliminates the use for FHRP because it is logically using 1 IP gateway
                    --- STP is not relied on as much.
                    --- Allows you to use a Hub-and-spoke network topology.


                    ■ Software-Defined Access (SD-Access)
        - Automates policies and reduces time to adapt to the network, also reduces security breaches
        - Part of the DNA (digital Network Architecture)                     