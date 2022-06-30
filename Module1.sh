#!/bin/bash
#### CCNP Module 1 and notes
#### this is an attempt lol
######################################################################################################
s1="s1:
Flat Design"
s2="s2:
Enterprise Campus Model"
s3="s3:
Enterprise Architecture Model"
s4="s4:
FHRP"
s5="s5:
High Availability"
s6="s6:
SD-Access"
s7="s7:
Cisco TrustSec"
s8="s8:
Cisco DNA Center"
s9="s9:
Physical Layer"
s10="s10:
SD-WAN"
sections=("$s1" "$s2" "$s3" "$s4" "$s5" "$s6" "$s7" "$s8" "$s9" "$s10")
echo "Type the section (EX: for "FHRP" type--> "s4") or type list for help." 
read input
if [[ "${input}" == "list" ]] ; then 
    echo ${sections[-0]}
    echo ${sections[-9]}
    echo ${sections[-8]}
    echo ${sections[-7]}
    echo ${sections[-6]}
    echo ${sections[-5]}
    echo ${sections[-4]}
    echo ${sections[-3]}
    echo ${sections[-2]}
    echo ${sections[-1]}
    fi
if [[ "${input}" == "s1" ]] ; then 
	echo ${section1[@]}
    fi
if [[ "${input}" == "s2" ]] ; then
    /bin/bash ./section2.sh
    fi
if [[ "${input}" == "s3" ]] ; then
    /bin/bash ./section3.sh
    fi
if [[ "${input}" == "s4" ]] ; then
    /bin/bash ./section4.sh
    fi
if [[ "${input}" == "s5" ]] ; then
    /bin/bash ./section5.sh
    fi
if [[ "${input}" == "s6" ]] ; then
	/bin/bash ./section6.sh
    fi
if [[ "${input}" == "s7" ]] ; then
	/bin/bash ./section7.sh
    fi
if [[ "${input}" == "s8" ]] ; then
	/bin/bash ./section8.sh
    fi
if [[ "${input}" == "s9" ]] ; then
	/bin/bash ./section9.sh 
if [[ "${input}" == "s10" ]] ; then
    /bin/bash section10.sh
    fi
else
    echo "ERROR: --> look at the instructions B"
    fi