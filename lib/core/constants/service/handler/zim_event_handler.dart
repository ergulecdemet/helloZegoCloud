import 'package:zego_zim/zego_zim.dart';

class ZimEventHandlerManager {
  loadingEventManager() {
    ZIMEventHandler.onConnectionStateChanged =
        (state, event, extentedData, map) {
      print('onConnectionStateChanged: $state');
    };
  }

  invitationReceived() {
    ZIMEventHandler.onCallInvitationReceived = (info, callID, i) {
      print(info);
    };
  }

  acceptInvitation(){
    ZIMEventHandler.onCallInvitationAccepted =(zim, info, callID) {
      
    };
  }

  declineInvitation(){
    ZIMEventHandler.onCallInvitationRejected =(zim, info, callID) {
      
    };
  }
}
