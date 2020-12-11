# CloudComputingProject

Follow instructions from the slides to access Mininet VM:

Reproducing Fat-Tree Topology with single shortest path and controller:
1) From aidanutility1 navigate to mininet/examples using cd.
2) Now do "sudo ./fat-tree.py
3) Run pox controller by navigating to folder aidanutility1 but in another VM.
4) cd pox
5) Do "python3 ./pox.py openflow.discovery openflow.spanning_tree forwarding.l2_learning"

Testing Fat-Tree Throughput:
1) Doing the above command will automatically send output to throughput.txt when sudo ./fat-tree.py is run.
2) Throughput generation takes a very long time if we do it over all pairs of hosts.
3) You can change the number of host pairs by changing the for loop in fat-tree.py under the function BuildMinimalTopo.
4) Here you can also adjust the size of the fat-tree by changing the value sent into the fat-tree from 4 to something else when we instantiate the class.
5) Finally, to see the average throughput, run the command "python3 parseThroughput.py"

Reproducing Jellyfish Results:
1) From aidanutility1, navigate to mininet/examples using cd.
2) Run the command "sudo mn --custom jellyfish.py --topo jellyfish --mac --switch ovs --controller remote"
3) In another vm instance, from aidanutility1, navigate to pox using cd.
4) Run the pox controller by running the command "python3 ./pox.py openflow.discovery openflow.spanning_tree forwarding.l2_learning" or "python3 ./pox.py openflow.discovery openflow.spanning_tree forwarding.l2_pairs".
5) l2_learning is much slower than l2_pairs.


