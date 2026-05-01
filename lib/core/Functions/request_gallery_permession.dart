// import 'dart:io';
// import 'package:permission_handler/permission_handler.dart';

// Future<void> requestGalleryPermission() async {
//   PermissionStatus status;

//   if (Platform.isAndroid) {
//     // فحص إصدار الأندرويد
//     // إذا كان 13 أو أعلى نطلب READ_MEDIA_IMAGES
//     // إذا كان أقل نطلب STORAGE
//     if (await Permission.photos.status.isLimited || await Permission.photos.status.isGranted) {
//        status = PermissionStatus.granted;
//     } else {
//        status = await Permission.photos.request();
//     }
//   } else {
//     // لنظام iOS
//     status = await Permission.photos.request();
//   }

//   // التعامل مع النتيجة
//   if (status.isGranted) {
//     print("تم السماح بالوصول للمعرض");
//     // يمكنك الآن استدعاء ImagePicker
//   } else if (status.isPermanentlyDenied) {
//     // توجيه المستخدم للإعدادات إذا رفض بشكل نهائي
//     openAppSettings();
//   } else {
//     print("تم رفض الإذن");
//   }
// }