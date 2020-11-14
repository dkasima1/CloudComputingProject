# CloudComputingProject

1) Install omnetpp IDE and make sure to install Inet while installing for your specific operating system. Follow the installation instructions here https://doc.omnetpp.org/omnetpp/InstallGuide.pdf.
2) The install will take some time.
3) Clone into the repository on your desktop with git clone.
4) To start the IDE, navigate to where omnett was installed and open mingwenv.batch.
5) Type "omnetpp" in the terminal.
6) In the IDE, open CloudComputingProject when it asks for workspace.

Reproducing Fat-Tree Results:
1) In the File explorer on the left hand side, click on Fat-Tree-Inet.
2) Open simulations,  and double click omnetpp.ini and package.ned.
3) In Package.ned, at the bottom click source. 
4) You can test different sizes of the fat-tree by changing the num_leafs variable's default value. Currently, set at 24. The value must be in multiples of 4.
5) Go into your omnetpp.ini file and at the top, you will see a green play button.
6) Click that to simulate the automatic construction of the Fat-Tree.
7) To reproduce data transfer, on the file explorer at the left hand side, open Fat-Tree.
8) Open source, and then open the omnetpp.ini file.
9) Click the play button which will bring up the GUI. On the gui, at the top there is a red run button.
10) Click that to see currently how our Fat-Tree can transmit messages.
