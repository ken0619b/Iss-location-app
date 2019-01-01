import '../model/iss.pb.dart';
import '../model/iss.pbgrpc.dart';
import '../common/grpc_commons.dart';

class IssService {

  static Future<LocReply> get_location() async{
    LocRequest request = new LocRequest();
    var client = LocDetectorClient(GrpcClientSingleton().client);
    return await client.getLoc(request);
  }
}