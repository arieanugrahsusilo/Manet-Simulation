#===================================
#     Simulation parameters setup
#===================================
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     80                         ;# number of mobilenodes
set val(rp)     DSR                       ;# routing protocol
set val(x)      2121                      ;# X dimension of topography
set val(y)      100                      ;# Y dimension of topography
set val(stop)   25.0                         ;# time of simulation end
if { $val(rp) == "DSR" } {
set val(ifq) CMUPriQueue
} else {
set val(ifq) Queue/DropTail/PriQueue
}


#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns [new Simulator]

#Setup topography object
set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)

#Open the NS trace file
set tracefile [open DSR80.tr w]
$ns trace-all $tracefile

#Open the NAM trace file
set namfile [open DSR80.nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#Create wireless channel

#===================================
#     Mobile node parameter setup
#===================================
$ns node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON

#===================================
#        Nodes Definition        
#===================================
#Create 80 nodes
set n0 [$ns node]
$n0 set X_ 333
$n0 set Y_ 431
$n0 set Z_ 0.0
$ns initial_node_pos $n0 20
set n1 [$ns node]
$n1 set X_ 433
$n1 set Y_ 431
$n1 set Z_ 0.0
$ns initial_node_pos $n1 20
set n2 [$ns node]
$n2 set X_ 533
$n2 set Y_ 431
$n2 set Z_ 0.0
$ns initial_node_pos $n2 20
set n3 [$ns node]
$n3 set X_ 633
$n3 set Y_ 431
$n3 set Z_ 0.0
$ns initial_node_pos $n3 20
set n4 [$ns node]
$n4 set X_ 733
$n4 set Y_ 431
$n4 set Z_ 0.0
$ns initial_node_pos $n4 20
set n5 [$ns node]
$n5 set X_ 833
$n5 set Y_ 431
$n5 set Z_ 0.0
$ns initial_node_pos $n5 20
set n6 [$ns node]
$n6 set X_ 933
$n6 set Y_ 431
$n6 set Z_ 0.0
$ns initial_node_pos $n6 20
set n7 [$ns node]
$n7 set X_ 1033
$n7 set Y_ 431
$n7 set Z_ 0.0
$ns initial_node_pos $n7 20
set n8 [$ns node]
$n8 set X_ 1133
$n8 set Y_ 431
$n8 set Z_ 0.0
$ns initial_node_pos $n8 20
set n9 [$ns node]
$n9 set X_ 1233
$n9 set Y_ 431
$n9 set Z_ 0.0
$ns initial_node_pos $n9 20
set n10 [$ns node]
$n10 set X_ 333
$n10 set Y_ 331
$n10 set Z_ 0.0
$ns initial_node_pos $n10 20
set n11 [$ns node]
$n11 set X_ 433
$n11 set Y_ 331
$n11 set Z_ 0.0
$ns initial_node_pos $n11 20
set n12 [$ns node]
$n12 set X_ 533
$n12 set Y_ 331
$n12 set Z_ 0.0
$ns initial_node_pos $n12 20
set n13 [$ns node]
$n13 set X_ 633
$n13 set Y_ 331
$n13 set Z_ 0.0
$ns initial_node_pos $n13 20
set n14 [$ns node]
$n14 set X_ 733
$n14 set Y_ 331
$n14 set Z_ 0.0
$ns initial_node_pos $n14 20
set n15 [$ns node]
$n15 set X_ 833
$n15 set Y_ 331
$n15 set Z_ 0.0
$ns initial_node_pos $n15 20
set n16 [$ns node]
$n16 set X_ 933
$n16 set Y_ 331
$n16 set Z_ 0.0
$ns initial_node_pos $n16 20
set n17 [$ns node]
$n17 set X_ 1033
$n17 set Y_ 331
$n17 set Z_ 0.0
$ns initial_node_pos $n17 20
set n18 [$ns node]
$n18 set X_ 1133
$n18 set Y_ 331
$n18 set Z_ 0.0
$ns initial_node_pos $n18 20
set n19 [$ns node]
$n19 set X_ 1233
$n19 set Y_ 331
$n19 set Z_ 0.0
$ns initial_node_pos $n19 20
set n20 [$ns node]
$n20 set X_ 333
$n20 set Y_ 231
$n20 set Z_ 0.0
$ns initial_node_pos $n20 20
set n21 [$ns node]
$n21 set X_ 433
$n21 set Y_ 231
$n21 set Z_ 0.0
$ns initial_node_pos $n21 20
set n22 [$ns node]
$n22 set X_ 533
$n22 set Y_ 231
$n22 set Z_ 0.0
$ns initial_node_pos $n22 20
set n23 [$ns node]
$n23 set X_ 633
$n23 set Y_ 231
$n23 set Z_ 0.0
$ns initial_node_pos $n23 20
set n24 [$ns node]
$n24 set X_ 733
$n24 set Y_ 231
$n24 set Z_ 0.0
$ns initial_node_pos $n24 20
set n25 [$ns node]
$n25 set X_ 833
$n25 set Y_ 231
$n25 set Z_ 0.0
$ns initial_node_pos $n25 20
set n26 [$ns node]
$n26 set X_ 933
$n26 set Y_ 231
$n26 set Z_ 0.0
$ns initial_node_pos $n26 20
set n27 [$ns node]
$n27 set X_ 1033
$n27 set Y_ 231
$n27 set Z_ 0.0
$ns initial_node_pos $n27 20
set n28 [$ns node]
$n28 set X_ 1133
$n28 set Y_ 231
$n28 set Z_ 0.0
$ns initial_node_pos $n28 20
set n29 [$ns node]
$n29 set X_ 1233
$n29 set Y_ 231
$n29 set Z_ 0.0
$ns initial_node_pos $n29 20
set n30 [$ns node]
$n30 set X_ 333
$n30 set Y_ 131
$n30 set Z_ 0.0
$ns initial_node_pos $n30 20
set n31 [$ns node]
$n31 set X_ 433
$n31 set Y_ 131
$n31 set Z_ 0.0
$ns initial_node_pos $n31 20
set n32 [$ns node]
$n32 set X_ 533
$n32 set Y_ 131
$n32 set Z_ 0.0
$ns initial_node_pos $n32 20
set n33 [$ns node]
$n33 set X_ 633
$n33 set Y_ 131
$n33 set Z_ 0.0
$ns initial_node_pos $n33 20
set n34 [$ns node]
$n34 set X_ 733
$n34 set Y_ 131
$n34 set Z_ 0.0
$ns initial_node_pos $n34 20
set n35 [$ns node]
$n35 set X_ 833
$n35 set Y_ 131
$n35 set Z_ 0.0
$ns initial_node_pos $n35 20
set n36 [$ns node]
$n36 set X_ 933
$n36 set Y_ 131
$n36 set Z_ 0.0
$ns initial_node_pos $n36 20
set n37 [$ns node]
$n37 set X_ 1033
$n37 set Y_ 131
$n37 set Z_ 0.0
$ns initial_node_pos $n37 20
set n38 [$ns node]
$n38 set X_ 1133
$n38 set Y_ 131
$n38 set Z_ 0.0
$ns initial_node_pos $n38 20
set n39 [$ns node]
$n39 set X_ 1233
$n39 set Y_ 131
$n39 set Z_ 0.0
$ns initial_node_pos $n39 20
set n40 [$ns node]
$n40 set X_ 333
$n40 set Y_ 31
$n40 set Z_ 0.0
$ns initial_node_pos $n40 20
set n41 [$ns node]
$n41 set X_ 433
$n41 set Y_ 31
$n41 set Z_ 0.0
$ns initial_node_pos $n41 20
set n42 [$ns node]
$n42 set X_ 533
$n42 set Y_ 31
$n42 set Z_ 0.0
$ns initial_node_pos $n42 20
set n43 [$ns node]
$n43 set X_ 633
$n43 set Y_ 31
$n43 set Z_ 0.0
$ns initial_node_pos $n43 20
set n44 [$ns node]
$n44 set X_ 733
$n44 set Y_ 31
$n44 set Z_ 0.0
$ns initial_node_pos $n44 20
set n45 [$ns node]
$n45 set X_ 833
$n45 set Y_ 31
$n45 set Z_ 0.0
$ns initial_node_pos $n45 20
set n46 [$ns node]
$n46 set X_ 933
$n46 set Y_ 31
$n46 set Z_ 0.0
$ns initial_node_pos $n46 20
set n47 [$ns node]
$n47 set X_ 1033
$n47 set Y_ 31
$n47 set Z_ 0.0
$ns initial_node_pos $n47 20
set n48 [$ns node]
$n48 set X_ 1133
$n48 set Y_ 31
$n48 set Z_ 0.0
$ns initial_node_pos $n48 20
set n49 [$ns node]
$n49 set X_ 1233
$n49 set Y_ 31
$n49 set Z_ 0.0
$ns initial_node_pos $n49 20
set n50 [$ns node]
$n50 set X_ 333
$n50 set Y_ -69
$n50 set Z_ 0.0
$ns initial_node_pos $n50 20
set n51 [$ns node]
$n51 set X_ 433
$n51 set Y_ -69
$n51 set Z_ 0.0
$ns initial_node_pos $n51 20
set n52 [$ns node]
$n52 set X_ 533
$n52 set Y_ -69
$n52 set Z_ 0.0
$ns initial_node_pos $n52 20
set n53 [$ns node]
$n53 set X_ 633
$n53 set Y_ -69
$n53 set Z_ 0.0
$ns initial_node_pos $n53 20
set n54 [$ns node]
$n54 set X_ 733
$n54 set Y_ -69
$n54 set Z_ 0.0
$ns initial_node_pos $n54 20
set n55 [$ns node]
$n55 set X_ 833
$n55 set Y_ -69
$n55 set Z_ 0.0
$ns initial_node_pos $n55 20
set n56 [$ns node]
$n56 set X_ 933
$n56 set Y_ -69
$n56 set Z_ 0.0
$ns initial_node_pos $n56 20
set n57 [$ns node]
$n57 set X_ 1033
$n57 set Y_ -69
$n57 set Z_ 0.0
$ns initial_node_pos $n57 20
set n58 [$ns node]
$n58 set X_ 1133
$n58 set Y_ -69
$n58 set Z_ 0.0
$ns initial_node_pos $n58 20
set n59 [$ns node]
$n59 set X_ 1233
$n59 set Y_ -69
$n59 set Z_ 0.0
$ns initial_node_pos $n59 20
set n60 [$ns node]
$n60 set X_ 333
$n60 set Y_ -169
$n60 set Z_ 0.0
$ns initial_node_pos $n60 20
set n61 [$ns node]
$n61 set X_ 433
$n61 set Y_ -169
$n61 set Z_ 0.0
$ns initial_node_pos $n61 20
set n62 [$ns node]
$n62 set X_ 533
$n62 set Y_ -169
$n62 set Z_ 0.0
$ns initial_node_pos $n62 20
set n63 [$ns node]
$n63 set X_ 633
$n63 set Y_ -169
$n63 set Z_ 0.0
$ns initial_node_pos $n63 20
set n64 [$ns node]
$n64 set X_ 733
$n64 set Y_ -169
$n64 set Z_ 0.0
$ns initial_node_pos $n64 20
set n65 [$ns node]
$n65 set X_ 833
$n65 set Y_ -169
$n65 set Z_ 0.0
$ns initial_node_pos $n65 20
set n66 [$ns node]
$n66 set X_ 933
$n66 set Y_ -169
$n66 set Z_ 0.0
$ns initial_node_pos $n66 20
set n67 [$ns node]
$n67 set X_ 1033
$n67 set Y_ -169
$n67 set Z_ 0.0
$ns initial_node_pos $n67 20
set n68 [$ns node]
$n68 set X_ 1133
$n68 set Y_ -169
$n68 set Z_ 0.0
$ns initial_node_pos $n68 20
set n69 [$ns node]
$n69 set X_ 1233
$n69 set Y_ -169
$n69 set Z_ 0.0
$ns initial_node_pos $n69 20
set n70 [$ns node]
$n70 set X_ 333
$n70 set Y_ -269
$n70 set Z_ 0.0
$ns initial_node_pos $n70 20
set n71 [$ns node]
$n71 set X_ 433
$n71 set Y_ -269
$n71 set Z_ 0.0
$ns initial_node_pos $n71 20
set n72 [$ns node]
$n72 set X_ 533
$n72 set Y_ -269
$n72 set Z_ 0.0
$ns initial_node_pos $n72 20
set n73 [$ns node]
$n73 set X_ 633
$n73 set Y_ -269
$n73 set Z_ 0.0
$ns initial_node_pos $n73 20
set n74 [$ns node]
$n74 set X_ 733
$n74 set Y_ -269
$n74 set Z_ 0.0
$ns initial_node_pos $n74 20
set n75 [$ns node]
$n75 set X_ 833
$n75 set Y_ -269
$n75 set Z_ 0.0
$ns initial_node_pos $n75 20
set n76 [$ns node]
$n76 set X_ 933
$n76 set Y_ -269
$n76 set Z_ 0.0
$ns initial_node_pos $n76 20
set n77 [$ns node]
$n77 set X_ 1033
$n77 set Y_ -269
$n77 set Z_ 0.0
$ns initial_node_pos $n77 20
set n78 [$ns node]
$n78 set X_ 1133
$n78 set Y_ -269
$n78 set Z_ 0.0
$ns initial_node_pos $n78 20
set n79 [$ns node]
$n79 set X_ 1233
$n79 set Y_ -269
$n79 set Z_ 0.0
$ns initial_node_pos $n79 20

#===================================
#        Agents Definition        
#===================================
#Setup a TCP connection
set tcp0 [new Agent/TCP]
$ns attach-agent $n0 $tcp0
set sink2 [new Agent/TCPSink]
$ns attach-agent $n39 $sink2
$ns connect $tcp0 $sink2
$tcp0 set packetSize_ 1500

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n40 $tcp1
set sink3 [new Agent/TCPSink]
$ns attach-agent $n59 $sink3
$ns connect $tcp1 $sink3
$tcp1 set packetSize_ 1500


#===================================
#        Applications Definition        
#===================================
#Setup a FTP Application over TCP connection
set ftp0 [new Application/FTP]
$ftp0 attach-agent $tcp1
$ns at 1.0 "$ftp0 start"
$ns at 10.0 "$ftp0 stop"

#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp0
$ns at 1.0 "$ftp1 start"
$ns at 10.0 "$ftp1 stop"


#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam DSR80.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$n$i reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
