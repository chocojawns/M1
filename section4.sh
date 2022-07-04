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
            - (Hot Standby Routing Protocol)
            - HSRP is Cisco Proprietary
            - Active/Standby
            - RFC 2281
            - Port 1985, UDP IPV4
            - Port 2029, UDP IPV6
            -Highest priority is selected as the Active router 
                --Default Priority is 100 
            ** IF SAME PRIORITY HIGHEST IP IS SELECTED AS PRIMARY ROUTE **
            -Version 1 of HSRP 
                -- MAC Address 00.00.0C.07.AC.XX
                -- 224.0.0.2     MULTICAST
                -- Cant do CGMP (Cisco Group Management Protocol) at the
                same time as Version 1 HSRP.
                -- Standby group number is 0 by default.
                -- Standby hello time 3 seconds.
                -- Standby holdtime 10 seconds.
                -- Up to 255 standby groups.
                

            -Version 2 of HSRP
                -- MAC Address 00.00.0C.9F.F0.00
                -- 224.0.0.102    MULTICAST
                -- CGMP can be enabled at the same time as version 2 HSRP
                because the leave processing is no longer mutually exclusive.
                -- Able to use IPV6.
                -- Up to 4096 standby groups.
                --Standby holdtime 10 seconds.
                -- Up to 255 standby groups

                    3 Multicast messages HSRP uses 
            
            -Coup
                -- messges is sent when a standby device wants to assume the active
                role.
            -Hello
                -- Convey other HSRP devices about Priority and state information.
            -Resign
                -- Sent by a Active device when it is about to shutdown or when a
                device with a high priority sends a coupe or a hello request.