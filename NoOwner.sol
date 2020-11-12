pragma solidity 0.6.6;

/* The purpose of this contract is to renounce ownership of KP3RL governance
    Disabling it forever. */

interface IKP3RL { function acceptGovernance() external; }

    function disableGovernance() public {
        require(msg.sender == mother, "only KP3RL mother can disable governance!");
        // Once this is called Governance will be disabled forever!
        // Due to community decision, ownership has been renounced.
        // - No KP3RL can be minted.
        // - KP3RL governance can never be transfered.
        // - Theres no going back.
        //
        // You asked, we listened!
        kp3rl.acceptGovernance();
    }
}