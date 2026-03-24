// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Auction (Exercise)
 * @dev Highest bid wins; owner ends auction and sends funds to beneficiary.
 *
 * TODO: Add beneficiary and owner addresses.
 * TODO: Add highestBidder and highestBid amount.
 * TODO: Add ended flag (auction closed).
 * TODO: Add event BidPlaced and AuctionEnded.
 * TODO: bid() payable: require not ended; require msg.value > highestBid; optionally refund previous highest; update highestBidder and highestBid.
 * TODO: endAuction(): only owner; set ended; send highestBid to beneficiary (transfer AVAX).
 * TODO: receive or ensure bid() is the only way to send AVAX (so refunds work).
 */
contract Auction {
    // TODO: your state variables
    address public owner;
    address public beneficiary;
    address public highestBidder;
    uint256 public highestBid;
    bool public ended;
    // TODO: your events
    event BidPlaced(address indexed bidder, uint256 amount);
    event AuctionEnded( address indexed winner, uint256 amount);
    // TODO: constructor(beneficiary)
    constructor(address _beneficiary) {
        require(_beneficiary != address(0), "Beneficiary cannot be zero address");
        owner = msg.sender;
        beneficiary = _beneficiary;
    }
    // TODO: function bid() external payable
    function bid() external payable {
        require(!ended, "Auction has ended");
        require(msg.value > highestBid, "Bid too low");

        if (highestBidder != address(0)) {
            payable(highestBidder).transfer(highestBid);
        }
        highestBidder = msg.sender;
        highestBid = msg.value;

        emit BidPlaced(msg.sender, msg.value);
    }
    // TODO: function endAuction() external
    function endAuction() external {
        require(msg.sender == owner, "Only owner can end auction");
        require(!ended, "Auction has already ended");

        ended = true;
        payable(beneficiary).transfer(highestBid);
        
        emit AuctionEnded(highestBidder, highestBid);
    }

    receive() external payable {
        revert("Use bid() function to participate in auction");
    }
}
