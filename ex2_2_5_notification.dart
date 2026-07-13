import 'dart:async';

void main(){
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (data) => print("การแจ้งเตือนที่เข้ามา: $data"),
    onDone: () => print("การแจ้งเตือนครบแล้ว"),
  );
  controller.add("youtube");
  controller.add("Twitter");
  controller.add("Teams");

  controller.close();
}