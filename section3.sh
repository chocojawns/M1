#!/bin/bash
#### section 3 of the jawn ####
######################################################################################################
sleep 1
echo "Enterprise Architecture Model

                        There are four modules 
        Module 1 (Enterprise Campus): 
            -Follows the 3 layer architecture (access, distribution, and core). 
            -Contains 3 submodules 
                -- Building access 
                -- Building distribution 
                -- Campus core 
                -- Data center 
                
                    *** Special Note *** If you would like to know more about the Enterprise Campus
                    Module, it is under Section Two in this current study guide. ( s2) 

        Module 2 (Enterprise Edge): 
            -Contains the Internet Edge and WAN Edge submodules. 
            -Connects the ISP ( Internet Service Provider) and the internal network. 
            -Within the Enterprise Edge are the following submodules: 

                    -- E-commerce services. 

                        ---Devices in this submodule are the Internet, application database servers,
                        firewalls, and firewall routers. 

                    -- Internet connectivity and the DMZ (demilitarized zone). 
                        --- Provides internal users with access to public servers, email, and DNS.
                        --- Componets of this section are firewalls, firewall routers, Internet Edge
                        Routers, FTP, HTTP, SMTP relay servers, and DNS servers. 
                    
                    -- Remote access and VPN access. 

                        --- Provides the usual remote things like the termination services and
                        authentication for users and sites. 
                        --- Componets are firewalls, Dail-in access concentrators, Cisco Adaptive
                        Security Appliances (ASA), and Intrusion Prevention Systems (IPS). WAN
                        site-to-site VPN access 

        Module 3 (Service Provider Edge): 
            -Connects between the edge and the remote. It combines voice, video, and data services
            over a single IP network.
             -Cost effective at talking over distant geographic areas. 
             -Supports QoS, IPsec, and MPLS with layer 2 and layer 3 WANs. 

                -- ISP setups:
                    --- Single-homed (1 to 1) 
                    --- Dual-homed (2 or more connections with 1 ISP) 
                    --- Multi-homed (connection to two or more ISPs (two routers, two cables, and two
                    ISPs) 
                    --- Dual-Multi-homed (Multiple connections to 2 or more ISPs) 

            -This is the section where you typically have your,
                -- Internet service providers (ISPs).
                -- WAN services such as Frame Relay, ATM, and MAN.
                -- Public switched telephone network (PSTN) services.

        Module 4 (Remote Locations): 
            -Anything that is not physically there at the camp. 
            -Connected to the SP are 3 remote submodules. 

                -- Enterprise branch:
                    --- Employees can work at non-campus locations STILL DIRECTED TO THE CAMPUS. 
                    --- Extends head office application. 
                    --- Rely on the SP Edge to provide applications and services from the main site.
                    --- Primarily through a WAN link.
                    --- Internet link as a backup, using site-to-site VPN IPsec. 

                -- Enterprise teleworker:
                --- Employees can work anywhere, such as at home, hotel, or customer/ client sites.
                --- Operating out of different geographically dispersed locations.
                --- Uses local ISP.

              -- Enterprise data center: 
                --- Just a remote data center. uses high end switches. 
                --- Uses load balancing. 
                --- Allows enterprises to scale without any change to infrastructure."