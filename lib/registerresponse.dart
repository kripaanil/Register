// class RegisterResponse {
// 	bool? status;
// 	String? message;
// 	Data? data;
// 	int? id;

// 	RegisterResponse({this.status, this.message, this.data, this.id});

// 	factory RegisterResponse.fromJson(Map<String, dynamic> json) {
// 		return RegisterResponse(
// 			status: json['status'] as bool?,
// 			message: json['message'] as String?,
// 			data: json['data'] == null
// 						? null
// 						: Data.fromJson(json['data'] as Map<String, dynamic>),
// 			id: json['id'] as int?,
// 		);
// 	}



// 	Map<String, dynamic> toJson() => {
// 				'status': status,
// 				'message': message,
// 				'data': data?.toJson(),
// 				'id': id,
// 			};
// }


// class Data {
// 	String? fname;
// 	String? lname;
// 	String? email;
// 	String? mobile;
// 	String? gender;
// 	String? password;

// 	Data({
// 		this.fname, 
// 		this.lname, 
// 		this.email, 
// 		this.mobile, 
// 		this.gender, 
// 		this.password, 
// 	});

// 	factory Data.fromJson(Map<String, dynamic> json) => Data(
// 				fname: json['fname'] as String?,
// 				lname: json['lname'] as String?,
// 				email: json['email'] as String?,
// 				mobile: json['mobile'] as String?,
// 				gender: json['gender'] as String?,
// 				password: json['password'] as String?,
// 			);

// 	Map<String, dynamic> toJson() => {
// 				'fname': fname,
// 				'lname': lname,
// 				'email': email,
// 				'mobile': mobile,
// 				'gender': gender,
// 				'password': password,
// 			};
// }

class RegisterResponse {
  bool? status;
  String? message;
  Data? data;

  RegisterResponse({this.status, this.message, this.data});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>), // Assuming data is a JSON object.
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}

class Data {
  String? name; // Change attribute name from fname to name.
  String? email;
  String? mobile;
  String? password;

  Data({
    this.name, // Change attribute name from fname to name.
    this.email,
    this.mobile,
    this.password,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json['name'] as String?, // Use 'name' instead of 'fname'.
        email: json['email'] as String?,
        mobile: json['mobile'] as String?,
        password: json['password'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name, // Use 'name' instead of 'fname'.
        'email': email,
        'mobile': mobile,
        'password': password,
      };
}