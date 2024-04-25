class BusPass {
  final String userName;
  final String userStudentId;
  final String userAllotedBus;
  final String userDepartment;
  final String userValidity;
  final String userPhoneNumber;
  final String userFeesStatus;
  final String userAddress;
  final String userBranch;
  final String userImage;

  BusPass({
    required this.userName,
    required this.userStudentId,
    required this.userAllotedBus,
    required this.userDepartment,
    required this.userValidity,
    required this.userPhoneNumber,
    required this.userFeesStatus,
    required this.userAddress,
    required this.userBranch,
    required this.userImage,
  });

  // A method to deserialize a map to a BusPass object
  factory BusPass.fromMap(Map<String, dynamic> map) {
    return BusPass(
      userName: map['userName'],
      userStudentId: map['userStudentId'],
      userAllotedBus: map['userAllotedBus'],
      userDepartment: map['userDepartment'],
      userValidity: map['userValidity'],
      userPhoneNumber: map['userPhoneNumber'],
      userFeesStatus: map['userFeesStatus'],
      userAddress: map['userAddress'],
      userBranch: map['userBranch'],
      userImage: map['userImage'],
    );
  }

  // A method to serialize a BusPass object to a map
  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'userStudentId': userStudentId,
      'userAllotedBus': userAllotedBus,
      'userDepartment': userDepartment,
      'userValidity': userValidity,
      'userPhoneNumber': userPhoneNumber,
      'userFeesStatus': userFeesStatus,
      'userAddress': userAddress,
      'userBranch': userBranch,
      'userImage': userImage,
    };
  }
}
