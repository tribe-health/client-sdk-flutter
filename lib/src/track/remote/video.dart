import 'package:flutter_webrtc/flutter_webrtc.dart' as rtc;

import 'package:livekit_client/src/track/local.dart';
import '../../proto/livekit_models.pb.dart' as lk_models;
import '../../types.dart';
import '../remote.dart';

class RemoteVideoTrack extends RemoteTrack with VideoTrack {
  //
  RemoteVideoTrack(
    String name,
    TrackSource source,
    rtc.MediaStream stream,
    rtc.MediaStreamTrack track,
  ) : super(
          name,
          lk_models.TrackType.VIDEO,
          source,
          stream,
          track,
        );
}
