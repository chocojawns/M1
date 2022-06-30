#!/bin/bash
#### section 2 of Module of CCNP "THIS BASH SCRIPT WILL KILL YOU"
#### "LIKE RIGHT NOW!!!!"
#### *SIIIIIIIIIP SOUNDS*

echo "Enterprise Campus Model
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
            issue with this is that it allows limited scalability."