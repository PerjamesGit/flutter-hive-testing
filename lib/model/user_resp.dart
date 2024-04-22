/// status : "success"
/// data : {"users":[{"id":1,"username":"user1","email":"user1@example.com","age":25,"country":"USA","posts":[{"id":101,"title":"Post 1","content":"This is the content of post 1.","likes":150,"comments":[{"id":1001,"user_id":2,"username":"user2","comment":"Great post!","timestamp":"2024-03-20T12:00:00Z"},{"id":1002,"user_id":3,"username":"user3","comment":"I enjoyed reading this.","timestamp":"2024-03-20T13:00:00Z"}]},{"id":102,"title":"Post 2","content":"This is the content of post 2.","likes":120,"comments":[{"id":1003,"user_id":4,"username":"user4","comment":"Interesting perspective.","timestamp":"2024-03-20T14:00:00Z"},{"id":1004,"user_id":5,"username":"user5","comment":"I agree!","timestamp":"2024-03-20T15:00:00Z"}]}]},{"id":2,"username":"user2","email":"user2@example.com","age":30,"country":"Canada","posts":[{"id":103,"title":"Post 3","content":"This is the content of post 3.","likes":200,"comments":[{"id":1005,"user_id":1,"username":"user1","comment":"Well said!","timestamp":"2024-03-20T16:00:00Z"},{"id":1006,"user_id":3,"username":"user3","comment":"I disagree with some points.","timestamp":"2024-03-20T17:00:00Z"}]},{"id":104,"title":"Post 4","content":"This is the content of post 4.","likes":180,"comments":[{"id":1007,"user_id":5,"username":"user5","comment":"I found this helpful.","timestamp":"2024-03-20T18:00:00Z"},{"id":1008,"user_id":1,"username":"user1","comment":"Keep up the good work!","timestamp":"2024-03-20T19:00:00Z"}]}]}]}

class UserResp {
  UserResp({
      this.status, 
      this.data,});

  UserResp.fromJson(dynamic json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? status;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// users : [{"id":1,"username":"user1","email":"user1@example.com","age":25,"country":"USA","posts":[{"id":101,"title":"Post 1","content":"This is the content of post 1.","likes":150,"comments":[{"id":1001,"user_id":2,"username":"user2","comment":"Great post!","timestamp":"2024-03-20T12:00:00Z"},{"id":1002,"user_id":3,"username":"user3","comment":"I enjoyed reading this.","timestamp":"2024-03-20T13:00:00Z"}]},{"id":102,"title":"Post 2","content":"This is the content of post 2.","likes":120,"comments":[{"id":1003,"user_id":4,"username":"user4","comment":"Interesting perspective.","timestamp":"2024-03-20T14:00:00Z"},{"id":1004,"user_id":5,"username":"user5","comment":"I agree!","timestamp":"2024-03-20T15:00:00Z"}]}]},{"id":2,"username":"user2","email":"user2@example.com","age":30,"country":"Canada","posts":[{"id":103,"title":"Post 3","content":"This is the content of post 3.","likes":200,"comments":[{"id":1005,"user_id":1,"username":"user1","comment":"Well said!","timestamp":"2024-03-20T16:00:00Z"},{"id":1006,"user_id":3,"username":"user3","comment":"I disagree with some points.","timestamp":"2024-03-20T17:00:00Z"}]},{"id":104,"title":"Post 4","content":"This is the content of post 4.","likes":180,"comments":[{"id":1007,"user_id":5,"username":"user5","comment":"I found this helpful.","timestamp":"2024-03-20T18:00:00Z"},{"id":1008,"user_id":1,"username":"user1","comment":"Keep up the good work!","timestamp":"2024-03-20T19:00:00Z"}]}]}]

class Data {
  Data({
      this.users,});

  Data.fromJson(dynamic json) {
    if (json['users'] != null) {
      users = [];
      json['users'].forEach((v) {
        users?.add(Users.fromJson(v));
      });
    }
  }
  List<Users>? users;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (users != null) {
      map['users'] = users?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// username : "user1"
/// email : "user1@example.com"
/// age : 25
/// country : "USA"
/// posts : [{"id":101,"title":"Post 1","content":"This is the content of post 1.","likes":150,"comments":[{"id":1001,"user_id":2,"username":"user2","comment":"Great post!","timestamp":"2024-03-20T12:00:00Z"},{"id":1002,"user_id":3,"username":"user3","comment":"I enjoyed reading this.","timestamp":"2024-03-20T13:00:00Z"}]},{"id":102,"title":"Post 2","content":"This is the content of post 2.","likes":120,"comments":[{"id":1003,"user_id":4,"username":"user4","comment":"Interesting perspective.","timestamp":"2024-03-20T14:00:00Z"},{"id":1004,"user_id":5,"username":"user5","comment":"I agree!","timestamp":"2024-03-20T15:00:00Z"}]}]

class Users {
  Users({
      this.id, 
      this.username, 
      this.email, 
      this.age, 
      this.country, 
      this.posts,});

  Users.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    age = json['age'];
    country = json['country'];
    if (json['posts'] != null) {
      posts = [];
      json['posts'].forEach((v) {
        posts?.add(Posts.fromJson(v));
      });
    }
  }
  int? id;
  String? username;
  String? email;
  int? age;
  String? country;
  List<Posts>? posts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    map['email'] = email;
    map['age'] = age;
    map['country'] = country;
    if (posts != null) {
      map['posts'] = posts?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 101
/// title : "Post 1"
/// content : "This is the content of post 1."
/// likes : 150
/// comments : [{"id":1001,"user_id":2,"username":"user2","comment":"Great post!","timestamp":"2024-03-20T12:00:00Z"},{"id":1002,"user_id":3,"username":"user3","comment":"I enjoyed reading this.","timestamp":"2024-03-20T13:00:00Z"}]

class Posts {
  Posts({
      this.id, 
      this.title, 
      this.content, 
      this.likes, 
      this.comments,});

  Posts.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    likes = json['likes'];
    if (json['comments'] != null) {
      comments = [];
      json['comments'].forEach((v) {
        comments?.add(Comments.fromJson(v));
      });
    }
  }
  int? id;
  String? title;
  String? content;
  int? likes;
  List<Comments>? comments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['content'] = content;
    map['likes'] = likes;
    if (comments != null) {
      map['comments'] = comments?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1001
/// user_id : 2
/// username : "user2"
/// comment : "Great post!"
/// timestamp : "2024-03-20T12:00:00Z"

class Comments {
  Comments({
      this.id, 
      this.userId, 
      this.username, 
      this.comment, 
      this.timestamp,});

  Comments.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    username = json['username'];
    comment = json['comment'];
    timestamp = json['timestamp'];
  }
  int? id;
  int? userId;
  String? username;
  String? comment;
  String? timestamp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['username'] = username;
    map['comment'] = comment;
    map['timestamp'] = timestamp;
    return map;
  }

}