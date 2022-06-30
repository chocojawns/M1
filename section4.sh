#!/bin/bash
#### section 4 ####
######################################################################################################

echo            "FHRP (First Hop Redundancy Protocol)
                So lets talk about the only good topic in networking and yes
                you're right we bouta talk about some good ol' HSRP

        The reason why we implement this is so we can avoid having asingle
        point of failure in our network. This allows us to not have to 
        configure the Default Gateway for end users when a router goes 
        down. 

            -STARTING WITH THE BEST FHRP, THAT PAVED THE WAY TO THE GLORIUS 
            WORLD OF NETWORKING THAT WE KNOW TODAY 

                            **** HSRP ****
            -(Hot Standby Routing Protocol)
            -HSRP is Cisco Proprietary
            -Active/Standby
            -Port 1985, UDP 
            -Highest priority is selected as the Active router 
                --Default Priority is 100 
            ** IF SAME PRIORITY HIGHEST IP IS SELECTED AS PRIMARY ROUTE **
            -Version 1 of HSRP 
                -- 224.0.0.2     MULTICAST
                --   
                --224.0.0.102  VERSION 2
            
            
            