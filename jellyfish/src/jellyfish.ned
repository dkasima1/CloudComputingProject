//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package jellyfish;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.linklayer.configurator.L2NodeConfigurator;
import inet.linklayer.configurator.L2NetworkConfigurator;
import inet.linklayer.ieee8021d.rstp.Rstp;


import inet.node.ethernet.EtherSwitch;
import inet.node.ethernet.EtherHost;
import inet.node.inet.StandardHost;
import inet.linklayer.ethernet.EtherBus;
import inet.linklayer.ethernet.EtherHub;
import inet.node.inet.Router;
import ned.DatarateChannel;

//
// A 100Mb/s Ethernet cable. Part of ~LargeNet.
//
channel cable extends DatarateChannel
{
    parameters:
        delay = 0.1us;
        datarate = 100Mbps;
}

//
// TODO auto-generated type
//
network Jellyfish
{
    submodules:
        client: StandardHost;
        servers[15]: StandardHost;
        switches[20]: EtherSwitch;
        configurator: Ipv4NetworkConfigurator;
    connections:
        servers[0].ethg++ <--> cable <--> switches[0].ethg++;
        servers[1].ethg++ <--> cable <--> switches[1].ethg++;
        servers[2].ethg++ <--> cable <--> switches[2].ethg++;
        servers[3].ethg++ <--> cable <--> switches[3].ethg++;
        servers[4].ethg++ <--> cable <--> switches[4].ethg++;
        servers[5].ethg++ <--> cable <--> switches[5].ethg++;
        servers[6].ethg++ <--> cable <--> switches[6].ethg++;
        servers[7].ethg++ <--> cable <--> switches[7].ethg++;
        servers[8].ethg++ <--> cable <--> switches[8].ethg++;
        servers[9].ethg++ <--> cable <--> switches[9].ethg++;
        servers[10].ethg++ <--> cable <--> switches[10].ethg++;
        servers[11].ethg++ <--> cable <--> switches[11].ethg++;
        servers[12].ethg++ <--> cable <--> switches[12].ethg++;
        servers[13].ethg++ <--> cable <--> switches[13].ethg++;
        servers[14].ethg++ <--> cable <--> switches[14].ethg++;
        client.ethg++ <--> cable <--> switches[15].ethg++;
        switches[9].ethg++ <--> cable <--> switches[12].ethg++;
        switches[3].ethg++ <--> cable <--> switches[19].ethg++;
        switches[14].ethg++ <--> cable <--> switches[8].ethg++;
        switches[2].ethg++ <--> cable <--> switches[6].ethg++;
        switches[13].ethg++ <--> cable <--> switches[12].ethg++;
        switches[19].ethg++ <--> cable <--> switches[4].ethg++;
        switches[0].ethg++ <--> cable <--> switches[10].ethg++;
        switches[6].ethg++ <--> cable <--> switches[12].ethg++;
        switches[8].ethg++ <--> cable <--> switches[3].ethg++;
        switches[8].ethg++ <--> cable <--> switches[13].ethg++;
        switches[17].ethg++ <--> cable <--> switches[5].ethg++;
        switches[16].ethg++ <--> cable <--> switches[9].ethg++;
        switches[7].ethg++ <--> cable <--> switches[18].ethg++;
        switches[10].ethg++ <--> cable <--> switches[4].ethg++;
        switches[5].ethg++ <--> cable <--> switches[11].ethg++;
        switches[19].ethg++ <--> cable <--> switches[18].ethg++;
        switches[10].ethg++ <--> cable <--> switches[19].ethg++;
        switches[13].ethg++ <--> cable <--> switches[3].ethg++;
        switches[7].ethg++ <--> cable <--> switches[11].ethg++;
        switches[2].ethg++ <--> cable <--> switches[14].ethg++;
        switches[4].ethg++ <--> cable <--> switches[18].ethg++;
        switches[11].ethg++ <--> cable <--> switches[17].ethg++;
        switches[7].ethg++ <--> cable <--> switches[1].ethg++;
        switches[16].ethg++ <--> cable <--> switches[1].ethg++;
        switches[18].ethg++ <--> cable <--> switches[0].ethg++;
        switches[0].ethg++ <--> cable <--> switches[14].ethg++;
        switches[17].ethg++ <--> cable <--> switches[15].ethg++;
        switches[2].ethg++ <--> cable <--> switches[17].ethg++;
        switches[15].ethg++ <--> cable <--> switches[1].ethg++;
        switches[15].ethg++ <--> cable <--> switches[9].ethg++;
        switches[16].ethg++ <--> cable <--> switches[6].ethg++;
        switches[16].ethg++ <--> cable <--> switches[5].ethg++;
}
