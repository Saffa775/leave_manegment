// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// ignore_for_file: file_names

class TeacherModel {
  String? teachername;
  String? teacherid;
  String? teacheremail;
  String? teachercnic;
  String? teacherpassword;
  int? leavecount;

  TeacherModel({
    this.teachername,
    this.teacherid,
    this.teacheremail,
    this.teachercnic,
    this.teacherpassword,
    this.leavecount,
  });

  TeacherModel copyWith({
    String? teachername,
    String? teacherid,
    String? teacheremail,
    String? teachercnic,
    String? teacherpassword,
    int? leavecount,
  }) {
    return TeacherModel(
      teachername: teachername ?? this.teachername,
      teacherid: teacherid ?? this.teacherid,
      teacheremail: teacheremail ?? this.teacheremail,
      teachercnic: teachercnic ?? this.teachercnic,
      teacherpassword: teacherpassword ?? this.teacherpassword,
      leavecount: leavecount ?? this.leavecount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'teachername': teachername,
      'teacherid': teacherid,
      'teacheremail': teacheremail,
      'teachercnic': teachercnic,
      'teacherpassword': teacherpassword,
      'leavecount': leavecount,
    };
  }

  factory TeacherModel.fromMap(Map<String, dynamic> map) {
    return TeacherModel(
      teachername: map['teachername'] != null ? map['teachername'] as String : null,
      teacherid: map['teacherid'] != null ? map['teacherid'] as String : null,
      teacheremail: map['teacheremail'] != null ? map['teacheremail'] as String : null,
      teachercnic: map['teachercnic'] != null ? map['teachercnic'] as String : null,
      teacherpassword: map['teacherpassword'] != null ? map['teacherpassword'] as String : null,
      leavecount: map['leavecount'] != null ? map['leavecount'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TeacherModel.fromJson(String source) => TeacherModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TeacherModel(teachername: $teachername, teacherid: $teacherid, teacheremail: $teacheremail, teachercnic: $teachercnic, teacherpassword: $teacherpassword, leavecount: $leavecount)';
  }

  @override
  bool operator ==(covariant TeacherModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.teachername == teachername &&
      other.teacherid == teacherid &&
      other.teacheremail == teacheremail &&
      other.teachercnic == teachercnic &&
      other.teacherpassword == teacherpassword &&
      other.leavecount == leavecount;
  }

  @override
  int get hashCode {
    return teachername.hashCode ^
      teacherid.hashCode ^
      teacheremail.hashCode ^
      teachercnic.hashCode ^
      teacherpassword.hashCode ^
      leavecount.hashCode;
  }
}
