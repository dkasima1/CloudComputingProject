# CloudComputingProject

Follow instructions from the slides to access Mininet VM:

Reproducing Fat-Tree Topology with single shortest path and controller:
1) From aidanutility1 navigate to mininet/examples using cd.
2) Now do "sudo ./fat-tree.py
3) Run pox controller by navigating to folder aidanutility1 but in another VM.
4) cd pox
5) Do "python3 ./pox.py openflow.discovery openflow.spanning_tree forwarding.l2_learning"



Reproducing Jellyfish Results:
1) In the file explorer, click on jellyfish.
2) Open src
3) Open omnetpp.ini
4) Click run at the top to run the jellyfish network.
5) In the gui, click the red start button.
6) To generate new random connections for the jellyfish network open the jellyfish.ned file with is also in the src folder.
7) In terminal run "python3 generate.py > <file_name>"
8) Copy the contents of the file and paste it into the jellyfish.ned connections section.
