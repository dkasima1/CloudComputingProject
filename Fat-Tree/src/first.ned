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

package fat_tree;

//
// TODO auto-generated type
//
network First
{
    @display("bgb=1326,1100");
    types:
        simple Computer
        {
            gates:
                input in;
                output out;

        }

        simple Switch
        {
            gates:
                input in1;
                input in2;
                input in3;
                input in4;
                output out1;
                output out2;
                output out3;
                output out4;
        }

    submodules:
        computer: Computer {
            @display("p=110,778");
        }
        computer1: Computer {
            @display("p=158,778");
        }
        computer2: Computer {
            @display("p=244,778");
        }
        computer3: Computer {
            @display("p=296,778");
        }
        computer4: Computer {
            @display("p=413,778");
        }
        computer5: Computer {
            @display("p=461,778");
        }
        computer6: Computer {
            @display("p=526,780");
        }
        computer7: Computer {
            @display("p=573,779");
        }
        computer8: Computer {
            @display("p=720,778");
        }
        computer9: Computer {
            @display("p=769,778");
        }
        computer10: Computer {
            @display("p=834,778");
        }
        computer11: Computer {
            @display("p=882,778");
        }
        computer12: Computer {
            @display("p=1015,778");
        }
        computer13: Computer {
            @display("p=1064,778");
        }
        computer14: Computer {
            @display("p=1136,778");
        }
        computer15: Computer {
            @display("p=1181,778");
        }
        switch: Switch {
            @display("p=149,481");
        }
        switch1: Switch {
            @display("p=269,481");
        }
        switch2: Switch {
            @display("p=149,615");
        }
        switch3: Switch {
            @display("p=269,615");
        }
        switch4: Switch {
            @display("p=439,615");
        }
        switch5: Switch {
            @display("p=439,481");
        }
        switch6: Switch {
            @display("p=552,481");
        }
        switch7: Switch {
            @display("p=552,615");
        }
        switch8: Switch {
            @display("p=744,481");
        }
        switch9: Switch {
            @display("p=744,615");
        }
        switch10: Switch {
            @display("p=861,481");
        }
        switch11: Switch {
            @display("p=861,615");
        }
        switch12: Switch {
            @display("p=1025,615");
        }
        switch13: Switch {
            @display("p=1025,481");
        }
        switch14: Switch {
            @display("p=1152,481");
        }
        switch15: Switch {
            @display("p=1152,615");
        }
        switch16: Switch {
            @display("p=205,313");
        }
        switch17: Switch {
            @display("p=500,313");
        }
        switch18: Switch {
            @display("p=808,313");
        }
        switch19: Switch {
            @display("p=1089,313");
        }
    connections:
        switch.out1 --> {  delay = 100ms; } --> switch16.in1;
        switch.out2 --> {  delay = 100ms; } --> switch17.in1;
        switch16.out1 --> {  delay = 100ms; } --> switch.in1;
        switch17.out1 --> {  delay = 100ms; } --> switch.in2;
        switch1.out1 --> {  delay = 100ms; } --> switch18.in1;
        switch18.out1 --> {  delay = 100ms; } --> switch1.in1;
        switch1.out2 --> {  delay = 100ms; } --> switch19.in1;
        switch19.out1 --> {  delay = 100ms; } --> switch1.in2;
        computer.out --> {  delay = 100ms; } --> switch2.in1;
        switch2.out1 --> {  delay = 100ms; } --> computer.in;
        computer1.out --> {  delay = 100ms; } --> switch2.in2;
        switch2.out2 --> {  delay = 100ms; } --> computer1.in;
        computer2.out --> {  delay = 100ms; } --> switch3.in1;
        computer3.out --> {  delay = 100ms; } --> switch3.in2;
        switch3.out1 --> {  delay = 100ms; } --> computer2.in;
        switch3.out2 --> {  delay = 100ms; } --> computer3.in;
        computer4.out --> {  delay = 100ms; } --> switch4.in1;
        computer5.out --> {  delay = 100ms; } --> switch4.in2;
        computer6.out --> {  delay = 100ms; } --> switch7.in1;
        computer7.out --> {  delay = 100ms; } --> switch7.in2;
        switch4.out1 --> {  delay = 100ms; } --> computer4.in;
        switch4.out2 --> {  delay = 100ms; } --> computer5.in;
        switch7.out1 --> {  delay = 100ms; } --> computer6.in;
        switch7.out2 --> {  delay = 100ms; } --> computer7.in;
        switch9.out1 --> {  delay = 100ms; } --> computer8.in;
        switch9.out2 --> {  delay = 100ms; } --> computer9.in;
        computer8.out --> {  delay = 100ms; } --> switch9.in1;
        computer9.out --> {  delay = 100ms; } --> switch9.in2;
        computer10.out --> {  delay = 100ms; } --> switch11.in1;
        computer11.out --> {  delay = 100ms; } --> switch11.in2;
        switch11.out1 --> {  delay = 100ms; } --> computer10.in;
        switch11.out2 --> {  delay = 100ms; } --> computer11.in;
        switch12.out1 --> {  delay = 100ms; } --> computer12.in;
        switch12.out2 --> {  delay = 100ms; } --> computer13.in;
        computer12.out --> {  delay = 100ms; } --> switch12.in1;
        computer13.out --> {  delay = 100ms; } --> switch12.in2;
        computer14.out --> {  delay = 100ms; } --> switch15.in1;
        computer15.out --> {  delay = 100ms; } --> switch15.in2;
        switch15.out1 --> {  delay = 100ms; } --> computer14.in;
        switch15.out2 --> {  delay = 100ms; } --> computer15.in;
        switch2.out3 --> {  delay = 100ms; } --> switch1.in3;
        switch3.out3 --> {  delay = 100ms; } --> switch.in3;
        switch1.out3 --> {  delay = 100ms; } --> switch2.in3;
        switch.out3 --> {  delay = 100ms; } --> switch3.in3;
        switch2.out4 --> {  delay = 100ms; } --> switch.in4;
        switch.out4 --> {  delay = 100ms; } --> switch2.in4;
        switch1.out4 --> {  delay = 100ms; } --> switch3.in4;
        switch3.out4 --> {  delay = 100ms; } --> switch1.in4;
        switch5.out1 --> {  delay = 100ms; } --> switch4.in3;
        switch6.out1 --> {  delay = 100ms; } --> switch7.in3;
        switch4.out3 --> {  delay = 100ms; } --> switch5.in1;
        switch7.out3 --> {  delay = 100ms; } --> switch6.in1;
        switch5.out2 --> {  delay = 100ms; } --> switch7.in4;
        switch7.out4 --> {  delay = 100ms; } --> switch5.in2;
        switch4.out4 --> {  delay = 100ms; } --> switch6.in2;
        switch6.out2 --> {  delay = 100ms; } --> switch4.in4;
        switch8.out1 --> {  delay = 100ms; } --> switch11.in3;
        switch11.out3 --> {  delay = 100ms; } --> switch8.in1;
        switch9.out3 --> {  delay = 100ms; } --> switch10.in1;
        switch10.out1 --> {  delay = 100ms; } --> switch9.in3;
        switch9.out4 --> {  delay = 100ms; } --> switch8.in2;
        switch8.out2 --> {  delay = 100ms; } --> switch9.in4;
        switch10.out2 --> {  delay = 100ms; } --> switch11.in4;
        switch11.out4 --> {  delay = 100ms; } --> switch10.in2;
        switch13.out1 --> {  delay = 100ms; } --> switch12.in3;
        switch12.out3 --> {  delay = 100ms; } --> switch13.in1;
        switch14.out1 --> {  delay = 100ms; } --> switch15.in3;
        switch15.out3 --> {  delay = 100ms; } --> switch14.in1;
        switch12.out4 --> {  delay = 100ms; } --> switch14.in2;
        switch14.out2 --> {  delay = 100ms; } --> switch12.in4;
        switch15.out4 --> {  delay = 100ms; } --> switch13.in2;
        switch13.out2 --> {  delay = 100ms; } --> switch15.in4;
        switch14.out3 --> {  delay = 100ms; } --> switch19.in2;
        switch14.out4 --> {  delay = 100ms; } --> switch18.in2;
        switch18.out2 --> {  delay = 100ms; } --> switch14.in3;
        switch13.out3 --> {  delay = 100ms; } --> switch17.in2;
        switch17.out2 --> {  delay = 100ms; } --> switch13.in3;
        switch13.out4 --> {  delay = 100ms; } --> switch16.in2;
        switch16.out2 --> {  delay = 100ms; } --> switch13.in4;
        switch10.out3 --> {  delay = 100ms; } --> switch19.in3;
        switch19.out2 --> {  delay = 100ms; } --> switch10.in3;
        switch10.out4 --> {  delay = 100ms; } --> switch18.in3;
        switch18.out3 --> {  delay = 100ms; } --> switch10.in4;
        switch8.out3 --> {  delay = 100ms; } --> switch17.in3;
        switch8.out4 --> {  delay = 100ms; } --> switch16.in3;
        switch16.out3 --> {  delay = 100ms; } --> switch8.in3;
        switch17.out3 --> {  delay = 100ms; } --> switch8.in4;
        switch5.out3 --> {  delay = 100ms; } --> switch16.in4;
        switch5.out4 --> {  delay = 100ms; } --> switch17.in4;
        switch16.out4 --> {  delay = 100ms; } --> switch5.in3;
        switch17.out4 --> {  delay = 100ms; } --> switch5.in4;
        switch6.out3 --> {  delay = 100ms; } --> switch18.in4;
        switch6.out4 --> {  delay = 100ms; } --> switch19.in4;
        switch19.out3 --> {  delay = 100ms; } --> switch6.in3;
        switch18.out4 --> {  delay = 100ms; } --> switch6.in4;
        switch19.out4 --> {  delay = 100ms; } --> switch14.in4;
}
