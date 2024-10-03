// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

// @dev Import the 'MessagingFee' and 'MessagingReceipt' so it's exposed to OApp implementers
// solhint-disable-next-line no-unused-import
import { OAppSender, MessagingFee, MessagingReceipt } from "./OAppSender.sol";
// @dev Import the 'Origin' so it's exposed to OApp implementers
// solhint-disable-next-line no-unused-import
import { OAppReceiver, Origin } from "./OAppReceiver.sol";
import { OAppCore } from "./OAppCore.sol";

/**
 * @title OApp
 * @dev Abstract contract serving as the base for OApp implementation, combining OAppSender and OAppReceiver functionality.
 * @dev The Ownable library was removed, please ensure you handle security for impacted functions.
 * @dev The constructor was replaced with _initializeOApp.
 */
abstract contract OApp is OAppSender, OAppReceiver {
    /**
     * @dev Initializes the OApp with the provided endpoint and owner.
     * @dev The constructor was replaced with this initializer.
     * @param _endpoint The address of the LOCAL LayerZero endpoint.
     * @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
     */
    function _initializeOApp(address _endpoint, address _delegate) internal virtual onlyInitializing {
        _initializeOAppCore(_endpoint, _delegate);
    }

    /**
     * @notice Retrieves the OApp version information.
     * @return senderVersion The version of the OAppSender.sol implementation.
     * @return receiverVersion The version of the OAppReceiver.sol implementation.
     */
    function oAppVersion()
        public
        pure
        virtual
        override(OAppSender, OAppReceiver)
        returns (uint64 senderVersion, uint64 receiverVersion)
    {
        return (SENDER_VERSION, RECEIVER_VERSION);
    }
}