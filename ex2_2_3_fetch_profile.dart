Future<Map<String, dynamic>> fetchProfile(int userId) async{
  await Future.delayed(Duration(seconds: 2));
  if (userId <= 0){
    throw Exception("userId ไม่ถูกต้อง");
  }
  return {
    'id': userId, 'name': 'สำรวย',
  };
}
void main() async{
  int userId = 127;
  try {
    final profile = await fetchProfile(userId);
    print("ข้อมูลโปรไฟล์สำหรับ userid: $userId -> $profile");
  } catch (e){
    print("ไม่พบข้อมูลโปรไฟล์: $e");
  } finally {
    print("สิ้นสุดการทำงาน");
  }
}