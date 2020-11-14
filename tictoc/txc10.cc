/*
 * txc10.cc
 *
 *  Created on: Nov 1, 2020
 *      Author: bannu
 */
#include <stdio.h>
#include <string.h>
#include <omnetpp.h>

using namespace omnetpp;

class Txc10 : public cSimpleModule
{
  protected:
    virtual void forwardMessage(cMessage *msg);
    virtual void initialize() override;
    virtual void handleMessage(cMessage *msg) override;
};

Define_Module(Txc10);

void Txc10::initialize()
{
    if (getIndex() == 0) {
        // Boot the process scheduling the initial message as a self-message.
        char msgname[20];
        sprintf(msgname, "tic-%d", getIndex());
        cMessage *msg = new cMessage(msgname);
        scheduleAt(0.0, msg);
    }
}

void Txc10::handleMessage(cMessage *msg)
{
    if (getIndex() == 3) {
        // Message arrived.
        EV << "Message " << msg << " arrived.\n";
        delete msg;
    }
    else {
        // We need to forward the message.
        forwardMessage(msg);
    }
}

void Txc10::forwardMessage(cMessage *msg)
{
    // In this example, we just pick a random gate (gate outs size) to send it on.
    // We draw a random number between 0 and the size of gate `out[]'.
    int n = gateSize("out");
    int k = intuniform(0,n-1);

    cGate *arrivalGate = msg->getArrivalGate();
    //int arrivalGateIndex = arrivalGate->getIndex(); // null pointer exception runtime error
                                          // because the first message sent by scheduleAt is a self-message

    if (arrivalGate == NULL) //self-message, do what?
    {
        // In this case, you may want to actually do something once the self
        // message "fires". Otherwise, as you've seen, the simulation ends there.
        // In short, you could just send the self message.
        EV << "Forwarding self message " << msg << " on port out[" << k << "]\n";
        send(msg, "out", k);
    }
    else if (arrivalGate != NULL)  // if it is not a self-message, get arrivalGateIndex
    {
        int arrivalGateIndex = arrivalGate->getIndex();

        if (n >= 2) //if out gates are more than 1, easy
                    //this line is needed to avoid infinite loop because you can send back to the sender
                    //if there is only one output gate
        {
            while (arrivalGateIndex == k)
            {
                k = intuniform(0,n-1);
            }
        }

        EV << "Forwarding message " << msg << " on port out[" << k << "]\n";
        send(msg, "out", k);
    }
}



