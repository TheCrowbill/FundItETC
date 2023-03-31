// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IFundIt {
    struct Campaign {
        address owner;
        string title;
        string description;
        uint256 target;
        uint256 deadline;
        uint256 amountCollected;
        string image;
        bool active;
    }

    function createCampaign(
        string memory _title,
        string memory _description,
        uint256 _target,
        uint256 _duration,
        string memory _image
    ) external;

    function donateToCampaign(uint256 _id) external payable;

    function getCampaignDonors(uint256 _id) external returns (address[] memory, uint256[] memory);

    function getActiveCampaigns() external returns (Campaign[] memory);

    function getEndedCampaigns() external returns (Campaign[] memory);

    function endCampaign(uint256 _id) external;
}