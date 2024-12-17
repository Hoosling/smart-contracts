// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.28;

contract CrowdFunding {
    
    struct Campaign {
        uint id;
        address creator;
        string title;
        string description;
        uint goal;
        uint fundsRaised;
        uint deadline;
        bool withdrawn;
    }

    struct Contribution {
        address donor;
        uint projectId;
        uint amount;
    }

    mapping(uint => Campaign) public campaigns;
    mapping(uint => Contribution[]) public contributions;

    uint public nextCampaignId;
    constructor () {}

    event CampaignCreated(uint indexed id, address indexed creator, uint goal, uint deadline);
    event DonationReceived(uint indexed campaignId, address indexed donor, uint amount);
    event FundsWithdrawn(uint indexed campaignId, address indexed creator, uint amount);
    event RefundIssued(uint indexed campaignId, address indexed donor, uint amount);
}
