/*
 * first.cc
 *
 *  Created on: Oct 15, 2020
 *      Author: bannu
 */

#include <omnetpp.h>

using namespace omnetpp;

class Computer: public cSimpleModule {
    void initialize() override;
    void handleMessage(cMessage *msg) override;
};

Define_Module(Computer);

void Computer::initialize() {
    if (strcmp("computer2", getName()) == 0) {
        cMessage *msg = new cMessage("computer13");
        send(msg, "out");
    }
}

void Computer::handleMessage(cMessage *msg) {
//    if (strcmp("msg", getName()) == 0) {
//        EV << "Success\n";
//    }
//    send(msg, "out");
    return;
}

class Switch: public cSimpleModule {
    void handleMessage(cMessage *msg);
};


Define_Module(Switch);

void Switch::handleMessage(cMessage *msg) {
    cMessage *msg2 = new cMessage(*msg);
    cMessage *msg3 = new cMessage(*msg);
    cMessage *msg4 = new cMessage(*msg);
    send(msg2, "out2");
    send(msg3, "out3");
    send(msg4, "out4");
}
