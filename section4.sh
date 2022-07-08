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

                                ******** HSRP ********
            - (Hot Standby Routing Protocol)
            - HSRP is Cisco Proprietary
            - Active/Standby
            - RFC 2281 Port 1985, UDP IPV4 Port 2029, UDP IPV6
            - Preemption immediately picks the router/switch with the highest priority 
            *obvi not great when a rouge device is at play*
            - Preempt is disabled by default, you can enable it by entering the "standby preempt"
            command
            -Highest priority is selected as the Active router 
                --Default Priority is 100 
            ** IF SAME PRIORITY HIGHEST IP IS SELECTED AS PRIMARY ROUTE **
            - HSRP can lower priority of devices that fail, goes down in increments of 10 be 
           - HSRP can lower priority of devices that fail, goes down in increments of 10 be 
            - HSRP can lower priority of devices that fail, goes down in increments of 10 be 
           default called "object tracking"
            - Two types of authentication plaintext and MD5 
                -- PLaintext: can only use a maximum of 8 characters long
                -- MD5: uses hashes -_-
            -hello and dead timers can use MSEC but only when configured default is seconds
                -- timers can be set between 1 to 255

    Load sharing can be set up by configuring both paths to the core with HSRP by using MHSRP
    (Multigroup Hot Standby Routing Protocol). THE BREAK DWON: if you have 2 layer 3 switches using 2
    diffrent VLANS using trunks then those 2 switches are competeting with each other because 1 switch
    has to be the active switcha and one has to be the stnadby. HOWEVER you can figure HSRP with MHSRP
    so switch A can be in group 20 for VLAN 20 as the active switch and switch B is standby while you
    configure switch B in group 10 for VLAN 10 as the active switch and switch A is standby. MHSRP is 
    like making a street for one secific HSRP group.

            -Version 1 of HSRP                                      -Version 2 of HSRP
    -------------------------------------------------------------------------------------------------
    | -MAC Address 00.00.0C.07.AC.XX                 |       -MAC Address 00.00.0C.9F.F0.00         |
    | -224.0.0.2  MULTICAST                          |       -224.0.0.102 MULTICAST                 |
    | -Cant do CGMP (Cisco Group                     |       -CGMP can be enabled                   |
    |     Management Protocol)                       |       -Able to use IPV6.                     |
    | -Standby group number is 0 by default.         |       -Up to 4096 standby groups             |
    | -Standby hello time 3 seconds.                 |       -Standby hello time 3 seconds          |
    | -Standby holdtime 10 seconds.                  |       -Standby holdtime 10 sewconds          |
    | -Up to 255 standby groups                      |                                              |
    -------------------------------------------------------------------------------------------------
                    3 Multicast messages HSRP uses 
            
        -Coup
            -- messges is sent when a standby device wants to assume the
            active role.
        -Hello
            -- Convey other HSRP devices about Priority and state 
            information.
        -Resign
            -- Sent by a Active device when it is about to shutdown or when a
            device with a high priority sends a coupe or a hello request.

        ----------------------------------------------------------------------
        |                         EXAM ALERT!!!!!!!!                         |
        |                                                                    |
        |           MAKE SURE YOU KNOW THE DIFFERENT STATES OF HSRP          |
        |                                                                    |
        |        Aye Init Disabled well Learn Listen Speak and Standby       |
        |                                                                    |
        ----------------------------------------------------------------------

                                    STATES OF HSRP

            - Active:
                -- Forwards all traffic and responding to all ARP request
                for the virtual IP address

        -Init or disabled
            -- Not ready to do HSRP yet, either the interface is down or device
            is booting up or its in a groupt with out a specific IP address.

        - Learn
            -- Device waits to receieve a hello messgae from the active router
            so it can learn the virtual IP address, its listening to the active 
            router.
            
        - Listen
            -- Device receives a hello message.

        - Speak
            -- Device is sending and receiving heloo messgaes.

        - Standby
            --Device is ready to become the active device in case the 
            active device goes down

                                ******** VRRP ********

        - (Virtual Routing Redundancy Protocol)
        - Master / Backup
        - 0 priority means the current master router has stopped participating in 
        VRRP
            -- Setting the priority value to 0 triggers the next backup to change
            the master.
        - You can use the physical IP address of the group members as the virtual IP address.
        - Advertisement default is 1 second and a 3 second hold time.
        -port number 112

                         -VRRP                                             - HSRP
    -------------------------------------------------------------------------------------------------
    | -MAC Address 0000.5E00.01XX                    |       -MAC Address 0000.0C9F.FXXX            |
    | -224.0.0.18                                    |       -224.0.0.102 and 224.0.0.2             |
    | -1 master several backups                      |       -1 active 1 standby many candidates    |
    | -Virtual IP can be same as physical IP         |        -Virtual IP is diffrent than          |
    |                                                |         physical                             |
    | -Can only track objects.                       |       -Can track objects and interfaces      |
    | -Timer is 1 second hello 3 holdtime            |       -Timer is 3 hello and 10 hold time     |
    | -Authentication not supported by RFC           |       -Authentication supported              |
       But is supported on IOS devices               |                                              |
    | -Industry standard                             |       -Cisco proprietary                     |
    -------------------------------------------------------------------------------------------------