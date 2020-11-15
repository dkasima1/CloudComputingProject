/*
 * jellyfish.cc
 *
 *  Created on: Oct 15, 2020
 *      Author: smitha
 */

#include <omnetpp.h>

using namespace omnetpp;

class Edge: public cSimpleModule {
protected:
    void initialize() override;
    void handleMessage(cMessage *msg) override;
};

class Switch: public cSimpleModule {
protected:
    void initialize() override;
    void handleMessage(cMessage *msg) override;
};

Define_Module(Edge);
Define_Module(Switch);

void Edge::initialize()
{

}

void Edge::handleMessage(cMessage *msg)
{

}

void Switch::initialize()
{

}

void Switch::handleMessage(cMessage *msg)
{

}
