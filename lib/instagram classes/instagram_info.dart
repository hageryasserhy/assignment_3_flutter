import 'package:flutter/material.dart';

class InstaInfo {
  String? main_acc_image;
  String? post_user_img;
  String? username;
  String? liked_image;
  String? liked_name;
  String? no_of_likes;
  String? descreption;
  String? no_of_comments;
  String? post_img;
  InstaInfo({this.main_acc_image,this.post_user_img, this.username, this.liked_image, this.liked_name,this.no_of_likes,this.descreption,this.no_of_comments,this.post_img});
}

List<InstaInfo> list = [
  InstaInfo(
      main_acc_image:'https://bettercollective.com/wp-content/uploads/2023/09/Britt-Boskov.jpg',
      username:'hager yasser',
      post_user_img:'https://images.unsplash.com/photo-1536063211352-0b94219f6212?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D',
      liked_image:'https://images.thewest.com.au/publication/C-12356342/f3a4b213cfa706e540b90360c17dce893dd70301.jpg?imwidth=810&impolicy=wan_v3',
      liked_name:'nada mahmoud',
      no_of_likes:'100',
      descreption:'taking photo',
      no_of_comments:'36',
      post_img:'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
  ),
  InstaInfo(
    main_acc_image:'https://bettercollective.com/wp-content/uploads/2023/09/Britt-Boskov.jpg',
    username:'nada mahmoud',
    post_user_img:'https://images.thewest.com.au/publication/C-12356342/f3a4b213cfa706e540b90360c17dce893dd70301.jpg?imwidth=810&impolicy=wan_v3',
    liked_image:'https://www.adobe.com/acrobat/hub/media_177c6b232df976d37b7450f633e350b3c6beab0c4.jpeg?width=750&format=jpeg&optimize=medium',
    liked_name:'mohamed20',
    no_of_likes:'50',
    descreption:'good morning',
    no_of_comments:'100',
    post_img:'https://st.depositphotos.com/2001755/3622/i/450/depositphotos_36220949-stock-photo-beautiful-landscape.jpg',
  ),
  InstaInfo(
    main_acc_image:'https://bettercollective.com/wp-content/uploads/2023/09/Britt-Boskov.jpg',
    username:'mohamed20',
    post_user_img:'https://www.adobe.com/acrobat/hub/media_177c6b232df976d37b7450f633e350b3c6beab0c4.jpeg?width=750&format=jpeg&optimize=medium',
    liked_image:'https://bettercollective.com/wp-content/uploads/2023/09/Britt-Boskov.jpg',
    liked_name:'nada mahmoud',
    no_of_likes:'28',
    descreption:'self love',
    no_of_comments:'10',
    post_img:'https://media.istockphoto.com/id/636379014/photo/hands-forming-a-heart-shape-with-sunset-silhouette.jpg?s=612x612&w=0&k=20&c=CgjWWGEasjgwia2VT7ufXa10azba2HXmUDe96wZG8F0=',
  ),

];
