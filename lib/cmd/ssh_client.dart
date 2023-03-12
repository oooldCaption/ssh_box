
import 'package:dartssh2/dartssh2.dart';
class SSHCtrl{

  Future<SSHClient> initClient(String host,int port, String user, String psw) async{
    final socket = await SSHSocket.connect(host, port);
    final client = SSHClient(socket, username: user ,onPasswordRequest:()=>psw);
    return client;
  }

  sendCMD(SSHClient client, String cmd){
    client.run(cmd);

  }
  
}