class API {
  static const hostConnect = "http://192.168.16.49/chpms";

  static const authConnect = "$hostConnect/auth";
  static const roomConnect = "$hostConnect/room";
  static const roomCatConnect = "$hostConnect/room_cat";
  static const frontConnect = "$hostConnect/front";
  static const userConnect = "$hostConnect/user";

  static const login = "$authConnect/login.php";

  static const userNameValidate = '$userConnect/username_validate.php';
  static const userCreate = '$userConnect/user_create.php';
}
