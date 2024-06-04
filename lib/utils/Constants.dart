import '../Screens/HomePage.dart';
import '../model/MediaDataModel.dart';

List<MediaDataModel> addDataList = [

  /*------------------------------------CommunityData-------------------------------------*/
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 1",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 1,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "1",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F01.%20Oceans%20(Where%20Feet%20May%20Fail)%20-%20Hillsong%20United.mp4?alt=media&token=d94db83e-79bd-4265-b886-b537d9e37914",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 2",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 2,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "2",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F02.%20Mighty%20to%20Save%20-%20(Hillsong%20United).mp4?alt=media&token=3618261b-2878-48fe-9085-0decef52e09a",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 3",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 3,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "3",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F03.%20My%20Redeemer%20Lives%20Lyrics.mp4?alt=media&token=8dfcb40b-800c-4860-89f0-fd0462da7924",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 4",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 4,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "4",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F04.%20Lord%2C%20I%20Lift%20Your%20Name%20High%20-%20Michael%20W.%20Smith.mp4?alt=media&token=5b42192a-9dac-43bb-b8ba-c8744965d3c7",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 5",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 5,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "5",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F06.%20Glorious%20Day%20-%20Casting%20Crowns.mp4?alt=media&token=db1ee8ee-c3ac-4451-9852-d4c28e533455",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 6",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 6,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "6",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F07.%20Count%20Your%20Blessings%20-%20Casting%20Crowns.mp4?alt=media&token=e87f76fd-b410-4b22-a5f5-50ea746e3273",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 7",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 7,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "7",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F08.%20Bloodstained%20Pages%20(Crystal%20Lewis).mp4?alt=media&token=6e9ca6b1-3695-44ae-897e-1b49f44b2e0f",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 8",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 8,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "8",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F25.%20Nothing%20but%20the%20blood%20(Passion%20Music).mp4?alt=media&token=ec9b98af-2123-4fcb-8cdc-1daeacfc5b09",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 9",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 9,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "9",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F27.%20Oh%20what%20love%20(The%20city%20harmonic).mp4?alt=media&token=90c4697d-d6e6-411b-b005-79c9fe1ea76e",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 10",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 10,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "10",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F30.%20Because%20of%20the%20blood%20(ricky%20dillard%20%26%20new).mp4?alt=media&token=b9b19285-eef4-4f82-ab6a-7c54918e132c",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 11",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 11,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "11",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F34.%20Washed%20in%20the%20blood%20(E_mPRAISE%20INC).mp4?alt=media&token=542bdbf7-5bd6-4877-bc6e-c745c836c9c9",
  // ),
  //
  // MediaDataModel(
  //   description:
  //   "The bible or the scriptures as it may be commonly referred to, is a compendium of God’s works. It gives us the picture of God’s and man’s relationship. It gives us the knowledge of God’s relationship with other spiritual beings like Satan, angels, and the heavenly creatures. The bible speaks of the past, the present, as well as the future. So, what is the bible? I’d simply say it’s a compendium of true stories and knowledge that all point to the all-powerful, most awesome God – it’s all about God. Man is also a very important actor in the whole biblical cast as he finds his place in the chronicles of the Almighty God because of his cherished place in the sight of God. The bible is one great book – literally and figuratively. It is full of so much knowledge. In order to understand it better for study purpose, it is divided into the Old Testament (before the coming of Jesus to earth) and the New Testament (during and after the earthly coming of Jesus). There are sixty-six books in the bible spread across the Old and New Testament – 39 in the Old Testament and 27 in the New Testament. In case you’re new to the bible and wondering what all these books are about, here’s a quick guide to get you started. Here, I give a summary of each book so you know what they’re about. We go in a chronological order according to the protestant arrangement of the bible.",
  //   name: "Community: 12",
  //   profileImageUrl:
  //   "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 12,
  //   thumb:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "12",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAin%E2%80%99t%20No%20Grave--%20Bethel%20Music%2C%20Molly%20Skaggs.m4a?alt=media&token=111fdc29-3243-438e-aa67-949669f7647a",
  //   videoUrl:
  //   "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F39.%20Your%20Glory%20%20Nothing%20But%20the%20Blood%20(Live)%20(All%20Sons%20%26%20Daughters).mp4?alt=media&token=642f9ce7-2d3f-4f28-a74b-ab7f2f1cf0db",
  // ),



  // /*------------------------------------Review-------------------------------------*/
  // MediaDataModel(
  //   description: "Historical and Literary Context (Extensive):"
  //       "\nOrigins and Dating: Delve into the historical timeline of the Bible/'s composition. Explore the different periods when various parts were written, ranging from the earliest oral traditions to the final compilation of the New Testament. Discuss the diverse geographical locations where these texts emerged."
  //       "\nAuthorship and Transmission: Analyze the question of authorship. The Bible is not attributed to a single author, but rather a collection of writings from various sources. Explore how these texts were transmitted and preserved over centuries, highlighting the roles of scribes, oral traditions, and eventual translations."
  //       "\nLiterary Impact: Examine the Bible/'s profound influence on Western literature. Explore how its narratives, themes, and language have shaped countless works of art, music, and literature throughout history.",
  //   name: "Review 1",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 1,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "1",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F01.%20Oceans%20(Where%20Feet%20May%20Fail)%20-%20Hillsong%20United.mp4?alt=media&token=d94db83e-79bd-4265-b886-b537d9e37914",
  // ),
  // MediaDataModel(
  //   description:
  //       "Religious and Spiritual Core (Detailed):"
  //           "\nMonotheism: Discuss the concept of one God in contrast to polytheistic religions. Analyze the development of monotheism in the Hebrew Bible and its impact on religious thought."
  //           "\nCovenant: Explore the concept of a covenant between God and humanity, particularly the Abrahamic covenant and its significance in Judaism and Christianity."
  //           "\nSalvation and Redemption: Delve into theological themes surrounding salvation, such as sin, atonement, and God\'s plan for humanity\'s redemption.",
  //   name: "Review 2",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 2,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "2",
  //   audioUrl: "",
  //   videoUrl:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F02.%20Mighty%20to%20Save%20-%20(Hillsong%20United).mp4?alt=media&token=3618261b-2878-48fe-9085-0decef52e09a",
  // ),
  // MediaDataModel(
  //   description: "Major Narratives (Explanatory):"
  //       "\nCreation: Analyze the various creation narratives found in the Bible, exploring their theological and literary significance. Discuss how these stories have shaped humanity\'s understanding of origins and our place in the universe."
  //       "\nPatriarchs and Prophets: Provide a detailed overview of key figures like Abraham, Sarah, Moses, David, and Elijah. Explore their roles in God\'s unfolding plan and the lessons their stories offer."
  //       "\nLife and Teachings of Jesus: Offer an in-depth examination of Jesus life, ministry, teachings, and impact. Analyze the Gospels portrayal of his miracles, parables, and ethical message.",
  //   name: "Review 3",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 3,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "3",
  //   audioUrl: "",
  //   videoUrl:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F03.%20My%20Redeemer%20Lives%20Lyrics.mp4?alt=media&token=8dfcb40b-800c-4860-89f0-fd0462da7924",
  // ),
  // MediaDataModel(
  //   description:
  //       "Ethical Teachings (Analysis):"
  //           "\nThe Ten Commandments: Discuss the significance of the Ten Commandments as a foundational moral code. Explore their enduring influence on legal systems and ethical frameworks."
  //           "\nLove and Forgiveness: Analyze the emphasis on love for God and neighbor (Leviticus 19:18) and the importance of forgiveness found throughout the Bible."
  //           "\nSocial Justice: Examine how the Bible addresses issues of social justice, such as care for the poor, the oppressed, and the marginalized.",
  //   name: "Review 4",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 4,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "Review 4",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F04.%20Lord%2C%20I%20Lift%20Your%20Name%20High%20-%20Michael%20W.%20Smith.mp4?alt=media&token=5b42192a-9dac-43bb-b8ba-c8744965d3c7",
  // ),
  // MediaDataModel(
  //   description: "Approaches to Interpretation (Nuances):"
  //       "\nJudaic vs. Christian Interpretations: Discuss the diversity of interpretations within Judaism and Christianity. Explore how different branches within each tradition approach the Bible's meaning."
  //       "\nLiteral vs. Metaphorical Readings: Analyze the challenges and approaches to interpreting the Bible literally or metaphorically. Discuss the role of historical context and literary devices in understanding the text."
  //       "\nHermeneutics: Introduce the concept of hermeneutics, the study of interpreting texts. Briefly explore different hermeneutical methods used to approach the Bible.",
  //   name: "Review 5",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 5,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "5",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F06.%20Glorious%20Day%20-%20Casting%20Crowns.mp4?alt=media&token=db1ee8ee-c3ac-4451-9852-d4c28e533455",
  // ),
  // MediaDataModel(
  //   description: "Challenges of Interpretation (Detailed Discussion):"
  //       "\nTranslation Issues: Discuss the complexities of translating ancient texts with nuanced meanings and cultural references. Explore how different translations can affect the interpretation of the Bible."
  //       "\nCultural Context: Analyze the gap between the Bible's ancient Near Eastern context and the modern world. Discuss the importance of understanding the original cultural context for accurate interpretation.",
  //   name: "Review 6",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 6,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "6",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F07.%20Count%20Your%20Blessings%20-%20Casting%20Crowns.mp4?alt=media&token=e87f76fd-b410-4b22-a5f5-50ea746e3273",
  // ),
  // MediaDataModel(
  //   description: "Literary Devices and Styles (Examples):"
  //       "\nPoetry and Symbolism: Explore the use of poetic language, metaphors, and symbols throughout the Bible. Analyze how these devices enhance the text's meaning and evoke emotional responses."
  //       "\nParables and Allegories: Discuss the use of parables and allegories as teaching tools employed by Jesus and other biblical figures. Analyze how these stories convey deeper spiritual truths."
  //       "\nHistorical Accounts: Examine the historical nature of various biblical narratives. Discuss the importance of distinguishing between historical accounts and theological interpretations.",
  //   name: "Review 7",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 7,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "7",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F08.%20Bloodstained%20Pages%20(Crystal%20Lewis).mp4?alt=media&token=6e9ca6b1-3695-44ae-897e-1b49f44b2e0f",
  // ),
  // MediaDataModel(
  //   description: "Theological Themes (Deep Dive):"
  //       "\nSin and Evil: Delve into the theological concepts of sin and evil as presented in the Bible. Explore the consequences of sin and various perspectives on the nature of evil."
  //       "\nEschatology: Discuss biblical teachings on the afterlife, including concepts like heaven, hell, and the final judgment. Analyze how these themes have shaped different understandings of the future."
  //       "\nGrace and Free Will: Explore the theological debate surrounding grace and free will. Discuss how the Bible addresses the relationship between God's grace and human responsibility.",
  //   name: "Review 8",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 8,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "8",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F25.%20Nothing%20but%20the%20blood%20(Passion%20Music).mp4?alt=media&token=ec9b98af-2123-4fcb-8cdc-1daeacfc5b09",
  // ),
  // MediaDataModel(
  //   description: "Impact on Different Cultures (Global Perspective):"
  //       "\nExplore how the Bible has been received and interpreted in various cultures worldwide. Discuss how different cultural contexts influence interpretations and practices."
  //       "\nAnalyze the role of missionaries and colonialism in spreading the Bible and its impact on indigenous cultures."
  //       "\nBriefly mention the rise of new religious movements and interpretations of the Bible in different regions.",
  //   name: "Review 9",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 9,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "9",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F27.%20Oh%20what%20love%20(The%20city%20harmonic).mp4?alt=media&token=90c4697d-d6e6-411b-b005-79c9fe1ea76e",
  // ),
  // MediaDataModel(
  //   description: "Modern Relevance (Contemporary Issues):"
  //       "\nDiscuss the ongoing debates and controversies surrounding the Bible's application in today's world. Explore issues like gender roles, sexuality, and scientific advancements."
  //       "\nAnalyze how different religious groups and individuals interpret the Bible in relation to contemporary social and ethical issues."
  //       "\nBriefly touch upon secular critiques of the Bible and its relevance in a modern context.",
  //   name: "Review 10",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 10,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "10",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F30.%20Because%20of%20the%20blood%20(ricky%20dillard%20%26%20new).mp4?alt=media&token=b9b19285-eef4-4f82-ab6a-7c54918e132c",
  // ),
  // MediaDataModel(
  //   description: "Social and Political Influence (Power and Change):"
  //       "\nAnalyze how the Bible has shaped social structures, legal systems, and political thought. Discuss concepts like divine right of kings and the separation of church and state."
  //       "\nExplore how the Bible has been used to justify both oppression and social reform movements throughout history.",
  //   name: "Review 11",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 11,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "11",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F34.%20Washed%20in%20the%20blood%20(E_mPRAISE%20INC).mp4?alt=media&token=542bdbf7-5bd6-4877-bc6e-c745c836c9c9",
  // ),
  // MediaDataModel(
  //   description: "Artistic and Literary Inspiration (Enduring Legacy):"
  //       "\nExplore how the Bible has inspired countless works of art, music, and literature. Analyze how biblical themes, narratives, and characters have been reinterpreted in various artistic forms."
  //       "\nDiscuss the ongoing influence of the Bible on contemporary artists, musicians, and writers.",
  //   name: "Review 12",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 12,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "12",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2F39.%20Your%20Glory%20%20Nothing%20But%20the%20Blood%20(Live)%20(All%20Sons%20%26%20Daughters).mp4?alt=media&token=642f9ce7-2d3f-4f28-a74b-ab7f2f1cf0db",
  // ),

  // /*-------------------------------------Prayer----------------------------------------------*/
  //
  // MediaDataModel(
  //   description:
  //       "Adoration and Praise:"
  //           "\nExpress gratitude to God for His creation, love, faithfulness, and power. (Psalm 103, Psalm 145)"
  //           "\nPray for a deeper understanding and appreciation of God's character and attributes.",
  //   name: "Prayer 1",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 1,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "1",
  //   audioUrl: "",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPrayer%2FCain%20Murders%20Abel.mp4?alt=media&token=fad4d99d-592e-400b-92e9-7c830f029c58",
  // ),
  // MediaDataModel(
  //   description:
  //       "Confession and Repentance:"
  //           "\nAcknowledge personal shortcomings and sins. (Psalm 51)"
  //           "\nPray for forgiveness and cleansing."
  //           "\nSeek guidance to overcome temptation and grow closer to God.",
  //   name: "Prayer 2",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 2,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "2",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPrayer%2FGenealogies.mp4?alt=media&token=f2d6c619-59f2-429e-a682-37343df581ab",
  // ),
  // MediaDataModel(
  //   description:
  //       "Supplication for Needs:"
  //           "\nPray for personal needs, such as health, relationships, or guidance in challenging situations. (Philippians 4:6)"
  //           "\nLift up the needs of loved ones, friends, or those facing difficulties."
  //           "\nIntercede for specific situations in your community or the world.",
  //   name: "Prayer 3",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 3,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "3",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPrayer%2FMATTHEW%20chapter%206%20to%20%2028-2.mp4?alt=media&token=dc7d2156-d815-4e8c-aa1d-7fc6d4d24652",
  // ),
  // MediaDataModel(
  //   description:
  //       "Intercession for Others:"
  //           "\nPray for spiritual growth and maturity in the lives of believers. (Ephesians 3:14-19)"
  //           "\nLift up leaders in church, government, and society for wisdom and discernment."
  //           "\nPray for peace, justice, and the spread of the Gospel message around the world.",
  //   name: "Prayer 4",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 4,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "4",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPrayer%2FThe%20Fall%20of%20Man.mp4?alt=media&token=50d8716e-a289-43f5-af0c-940b0e3f612f",
  // ),

  // /*-------------------------------------Promises--------------------------------------*/
  // MediaDataModel(
  //   description:
  //       "Topical Approach:"
  //           "\nHere are some common themes with related Bible verses containing God's promises:"
  //           "\nSalvation and Eternal Life: John 3:16, Romans 10:9, Ephesians 2:8-9"
  //           "\nGuidance and Strength: Proverbs 3:5-6, Joshua 1:9, Philippians 4:13"
  //           "\nPeace and Comfort: Isaiah 26:3, John 14:27, Philippians 4:6-7"
  //           "\nProvision and Needs: Matthew 6:33, Philippians 4:19, Psalm 34:10"
  //           "\nHealing and Restoration: Jeremiah 30:17, Isaiah 58:8, Psalm 103:3",
  //   name: "Promises 1",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 1,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "1",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20-%201%20st%20King.mp4?alt=media&token=ed3dea19-fd19-43e8-99f7-cd5c76aed918",
  // ),
  // MediaDataModel(
  //   description:
  //       "Online Resources:"
  //           "\nSeveral websites offer lists of Bible promises categorized by topic. You can search for \"Bible promises about [topic]\" to find relevant verses.",
  //   name: "Promises 2",
  //   profileImageUrl:
  //       "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 2,
  //   thumb:
  //       "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "2",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20-%201%20st%20Samuel.mp4?alt=media&token=78a217b7-cad4-49cc-91cc-00ae79c02391",
  // ),
  //
  // MediaDataModel(
  //   description: "opical Concordance:"
  //       "\nA topical concordance is a reference tool that lists Bible verses by theme or topic. This can help you find promises related to specific areas of your life. Many Bible study apps or websites offer a digital concordance function.",
  //   name: "Promises 3",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 3,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "3",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20-%202%20nd%20%20Samuel.mp4?alt=media&token=360bde49-c670-49c7-ab70-ac85c6629819",
  // ),
  //
  // MediaDataModel(
  //   description: "Bible Reading Plans:"
  //       "\nMany Bible reading plans focus on themes like promises or hope. These plans can guide you through relevant passages over a set period.",
  //   name: "Promises 4",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 4,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "4",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20-%202%20nd%20King.mp4?alt=media&token=249773cb-29ff-4b9a-95a2-6fb29cdfb9af",
  // ),
  //
  // MediaDataModel(
  //   description: "Personal Exploration:"
  //       "\nReading the Bible with a focus on God's promises can be a rewarding experience. As you read, passages that resonate with you as promises might stand out. You can then delve deeper into those verses for personal meaning.",
  //   name: "Promises 5",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 5,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "5",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Amos.mp4?alt=media&token=462dfc81-fc68-4922-a06c-cb3836171285",
  // ),
  //
  // MediaDataModel(
  //   description: "Philippians 4:13: I can do all things through him who strengthens me. (This promise empowers believers to face challenges and overcome obstacles through God's strength working within them.)",
  //   name: "Promises 6",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 6,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "6",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Deuteronomy.mp4?alt=media&token=2a03f81d-d673-43f2-b3b4-931055266ce9",
  // ),
  //
  // MediaDataModel(
  //   description: "Isaiah 26:3: You will keep him in perfect peace whose mind is stayed on you, because he trusts in you. (Peace comes from trusting in God's unfailing presence and plans.)",
  //   name: "Promises 7",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 7,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "7",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Ecclesiastes.mp4?alt=media&token=cded9088-54d9-42f2-a572-ec2979615a90",
  // ),
  //
  // MediaDataModel(
  //   description: "Philippians 4:6-7: Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God. And the peace of God, which transcends all understanding, will guard your hearts and your minds in Christ Jesus. (This promiseoffers peace beyond human comprehension amidst anxieties, attained through prayer and trusting in God.)",
  //   name: "Promises 8",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 8,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "8",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Esther.mp4?alt=media&token=ae352a22-ba60-42cc-aca4-ee36fdde4bb0",
  // ),
  //
  // MediaDataModel(
  //   description: "John 14:27: Peace I leave with you; my peace I give you. I do not give to you as the world gives. Do not let your hearts be troubled and do not be afraid.(Jesus offers His peace, a deep inner calmness that is independent of circumstances.)",
  //   name: "Promises 9",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 9,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "9",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Exodus%20promise%20words.mp4?alt=media&token=3c75112f-7ce4-4a25-957f-eab42cf4ee3e",
  // ),
  //
  // MediaDataModel(
  //   description: "Matthew 6:33: But seek first his kingdom and his righteousness, and all these things will be added to you. (This promise assures believers that when they prioritize God's kingdom and his righteousness, their basic needs will be met.)",
  //   name: "Promises 10",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 10,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "10",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Ezra.mp4?alt=media&token=a5ee01a5-fc63-4f74-8062-3a21af4c5bef",
  // ),
  //
  // MediaDataModel(
  //   description: "Philippians 4:19: And my God will supply all your needs according to his riches in glory in Christ Jesus. (God promises to take care of His children's needs according to His riches and glory.)",
  //   name: "Promises 11",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 11,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "11",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Genesis%20promise%20words.mp4?alt=media&token=68a268c0-8462-4bb5-a601-fd8812af1f1a",
  // ),
  //
  // MediaDataModel(
  //   description: "Psalm 34:10: The young lions suffer want and hunger; but those who seek the Lord lack nothing good. (Those who seek God will not lack the necessities of life.)",
  //   name: "Promises 12",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 12,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "12",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Habakkuk.mp4?alt=media&token=39f41ec0-7c40-40a6-ab86-e6b9a925f862",
  // ),
  //
  // MediaDataModel(
  //   description: "Jeremiah 30:17: But I will restore you to health and heal your wounds, declares the Lord, because they have called you an outcast—Zion for whom no one cares. (This promise offers hope for healing, both physical and spiritual, for those who turn to God.)",
  //   name: "Promises 13",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 13,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "13",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Haggai.mp4?alt=media&token=a1de6c21-b0e0-4eae-8f36-d53fa9621842",
  // ),
  //
  // MediaDataModel(
  //   description: "Jeremiah 30:17: But I will restore you to health and heal your wounds, declares the Lord, because they have called you an outcast—Zion for whom no one cares. (This promise offers hope for healing, both physical and spiritual, for those who turn to God.)",
  //   name: "Promises 14",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 14,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "14",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Hosea.mp4?alt=media&token=8038c539-63ea-467c-96af-f52f77c1f8fb",
  // ),
  //
  // MediaDataModel(
  //   description: "Isaiah 1:18: Though your sins are like scarlet, they shall be as white as snow; though they are red like crimson, they shall becomelike wool. (This promise offers forgiveness and cleansing of sins through repentance and faith in God.)",
  //   name: "Promises 15",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 15,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "15",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Joel.mp4?alt=media&token=27aa0267-b505-4057-92a0-09ec522cd120",
  // ),
  //
  // MediaDataModel(
  //   description: "Psalm 103:12: As far as the east is from the west, so far has he removed our transgressions from us. (This promise emphasizes the completeness of God's forgiveness.)",
  //   name: "Promises 16",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 16,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "16",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Jonah.mp4?alt=media&token=926fcda5-532e-4888-8cac-62be4a7f5386",
  // ),
  //
  // MediaDataModel(
  //   description: "1 John 1:9: If we confess our sins, he is faithful and just and will forgive us our sins and purify us from all unrighteousness. (Confessionleads to forgiveness and cleansing by God.)",
  //   name: "Promises 17",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 17,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "17",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Joshua.mp4?alt=media&token=228bcf1d-08b9-4451-b3f9-2a506d1baeb0",
  // ),
  //
  // MediaDataModel(
  //   description: "James 1:5: If any of you lacks wisdom, you should ask God, who gives generously to all without reservation and without reproach. (This promise offers wisdom and discernment to those who seek God's guidance in their decisions.)",
  //   name: "Promises 18",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 18,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "18",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Judges.mp4?alt=media&token=0c29b8d5-88de-4b8a-9725-3edf1ab111f1",
  // ),
  //
  // MediaDataModel(
  //   description: "Proverbs 2:6: For the Lord gives wisdom; from his mouth come knowledge and understanding. (God is the source of wisdom, readily available to those who seek Him.)",
  //   name: "Promises 19",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 19,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "19",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Lamentations.mp4?alt=media&token=95a9f2f9-bcf5-465d-a10c-419f30b9f527",
  // ),
  //
  // MediaDataModel(
  //   description: "Romans 8:38-39: For I am convinced that neither death nor life, neither angels nor demons, neither the present nor the future, nor any powers, neither height nor depth, nor anything else in all creation, will be able to separate us from the love of God that is in Christ Jesus our Lord. (This promise assures believers of God\'s unwavering love and acceptance, regardless of circumstances.)",
  //   name: "Promises 20",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 20,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "20",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Leviticus.mp4?alt=media&token=efe7a8f5-ca9b-4577-b839-72081c7636f2",
  // ),
  //
  // MediaDataModel(
  //   description: "Jeremiah 31:3: The Lord appeared to him from far away, saying: \'I have loved you with an everlasting love; with unfailing kindness I have drawn you.\' (God's love for His people is everlasting and unfailing.)",
  //   name: "Promises 21",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 21,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "21",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Malachi.mp4?alt=media&token=87606c35-a77e-4d74-8f76-f94eb06a6ee4",
  // ),
  //
  // MediaDataModel(
  //   description: "Jeremiah 29:11: For I know the plans I have for you, \'declares the Lord, 'plans to prosper you and not to harm you, plans to give you hope and a future.\' (This promise offers hope and a secure future for those who trust in God's plans and purposes.)",
  //   name: "Promises 22",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 22,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "22",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Micah.mp4?alt=media&token=e34c4876-b4ec-4c77-b1b8-ce5570181d6a",
  // ),
  //
  // MediaDataModel(
  //   description: "Romans 8:24: For in this hope we were saved. Now hope that is seen is not hope. For who hopes for what he sees? But if we hope for what we do not see, we wait for it with patience. (Hope is a key element of salvation, leading us to patiently wait for God\'s promises.)",
  //   name: "Promises 23",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 23,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "23",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Nahum.mp4?alt=media&token=c2a4cfd7-c92c-4741-8d5f-dde7c8ee6edb",
  // ),
  //
  // MediaDataModel(
  //   description: "Isaiah 40:29: He gives strength to the weary and increases the power of the weak. (God provides strength and power to those who are weak or weary.)",
  //   name: "Promises 24",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 24,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "24",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Nehemiah.mp4?alt=media&token=98043c35-9ff7-438f-ab2a-d73cb6a7a9f8",
  // ),
  //
  // MediaDataModel(
  //   description: " Corinthians 12:9: But he said to me, \'My grace is sufficient for you, for my power is made perfect in weakness.\' Therefore I will boast all the more gladly about my weaknesses, so that the power of Christ may reston me. (God's grace is sufficient, and His power is made perfect in our weakness.)",
  //   name: "Promises 25",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 25,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "25",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Numbers-highlight.mp4?alt=media&token=9fd21160-1208-4946-84b1-52acb0972153",
  // ),
  //
  // MediaDataModel(
  //   description: "Psalm 16:11 (continued):(True joy and fulfillment come from knowing God and being in His presence.)",
  //   name: "Promises 26",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 26,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "26",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Numbers.mp4?alt=media&token=84dc4c60-b89f-4ad9-8a13-2a4053769561",
  // ),
  //
  // MediaDataModel(
  //   description: "Romans 8:37: No, in all these things we are more than conquerors through him who loved us. (Through Christ, believers are more than conquerors over any challenge.)",
  //   name: "Promises 27",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 27,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "27",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Obadiah.mp4?alt=media&token=e50ea4ad-8f8d-4cf3-864f-8bb4fa03945c",
  // ),
  //
  // MediaDataModel(
  //   description: "1 Corinthians 15:57: But thanks be to God! He gives us the victory through our Lord Jesus Christ. (Victory over sin and death is ultimately through Jesus Christ.)",
  //   name: "Promises 28",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 28,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "28",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Proverbs.mp4?alt=media&token=4b1a26d8-4a4a-4b07-920e-6cd9fde8ae25",
  // ),
  //
  // MediaDataModel(
  //   description: "Matthew 7:7-8: Ask, and it will be given to you; seek, and you will find; knock, and it will be opened to you. For everyone who asks receives, the one who seeks finds, and to the one who knocks it willbe opened. (This promise encourages persistent prayer, knowing God hears and responds.)",
  //   name: "Promises 29",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 29,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "29",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Proverbs.mp4?alt=media&token=4b1a26d8-4a4a-4b07-920e-6cd9fde8ae25",
  // ),
  //
  // MediaDataModel(
  //   description: "Psalm 66:19: But truly God has listened; he has attended to the voice of my prayer. (God listens to the prayers of His people.)",
  //   name: "Promises 30",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 30,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "30",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Song%20of%20song.mp4?alt=media&token=07ef6c1d-4d38-49d3-8483-b7909233df06",
  // ),
  //
  // MediaDataModel(
  //   description: "Hebrews 13:5-6: Keep your lives free from love of money and be content with what you have, because God has said, \'Never will I leave you; never will I forsake you.\' So we can say with confidence, \'The Lord is my helper; I will not be afraid. What can man do to me?\' (This promise assures believers of God's faithfulness, presence, and help in times of need.)",
  //   name: "Promises 31",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 31,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "31",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FPromises%2FBook%20of%20Zephaniah.mp4?alt=media&token=a7a94cbd-e2f6-4fe5-a608-7b71f0f309a3",
  // ),

  // /*-------------------------------------------Worship---------------------------------------------------*/
  //
  // MediaDataModel(
  //   description: "Psalm 95:1-2: Come, let us sing for joy to the Lord; let us shout aloud to the Rock of our salvation. Let us come before him with thanksgiving and extol him with melodious song. (Expressing joy and gratitude to God)",
  //   name: "Worship 1",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 1,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "1",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F01.%20Oceans%20(Where%20Feet%20May%20Fail)%20-%20Hillsong%20United.mp4?alt=media&token=ea9ddd63-31eb-4134-bf95-aef719398cf4",
  // ),
  //
  // MediaDataModel(
  //   description: "Psalm 103:1-2: Bless the Lord, O my soul, and all that is within me, bless his holy name! Bless the Lord, O my soul, and forget not all his benefits! (Praising God for His character and blessings)",
  //   name: "Worship 2",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 2,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "2",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F02.%20Mighty%20to%20Save%20-%20(Hillsong%20United).mp4?alt=media&token=f7089e14-70b0-4852-adbd-ea2da15bea9c",
  // ),
  //
  // MediaDataModel(
  //   description: "Revelation 4:11: Worthy are you, our Lord and God, to receive glory and honor and power, for you created all things, and by your will they existed and were created. (Acknowledging God's worth and power)",
  //   name: "Worship 3",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 3,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "3",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F03.%20My%20Redeemer%20Lives%20Lyrics.mp4?alt=media&token=de25575a-12bd-436a-b7c0-254f149fd6bf",
  // ),
  //
  // MediaDataModel(
  //   description: "Psalm 51:1-3: Have mercy on me, O God, according to your unfailing love; according to your immense compassion blot out my transgressions. Wash away all my iniquity and cleanse me from my sin. For I know my transgressions, and my sin is always before me. (Acknowledging sin and seeking forgiveness)",
  //   name: "Worship 4",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 4,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "4",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F04.%20Lord%2C%20I%20Lift%20Your%20Name%20High%20-%20Michael%20W.%20Smith.mp4?alt=media&token=569e2c92-38dc-4866-abca-88eef8f29b3e",
  // ),
  //
  // MediaDataModel(
  //   description: "Proverbs 28:13: Whoever conceals their transgressions will not prosper, but he who confesses and forsakes them will receive mercy. (Confession leading to God's mercy)",
  //   name: "Worship 5",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 5,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "5",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F05.%20In%20Christ%20Alone%20-%20Kristian%20Stanfill.mp4?alt=media&token=37eea91e-392f-402f-91bf-a3027246ac3e",
  // ),
  //
  // MediaDataModel(
  //   description: "1 John 1:9: If we confess our sins, he is faithful and just and will forgive us our sins and purify us from all unrighteousness. (Confession as a step towards cleansing)",
  //   name: "Worship 6",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 6,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "6",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F06.%20Glorious%20Day%20-%20Casting%20Crowns.mp4?alt=media&token=d58bba86-cc73-47e9-9d62-3a7902622b37",
  // ),
  //
  // MediaDataModel(
  //   description: "Psalm 100:4: Enter his gates with thanksgiving, and his courts with praise; give thanks to him; bless his name. (Offering thanks for God's presence and blessings)",
  //   name: "Worship 7",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 7,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "7",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F07.%20Count%20Your%20Blessings%20-%20Casting%20Crowns.mp4?alt=media&token=5efb0dcb-3eda-4863-9fec-56321a983ac7",
  // ),
  //
  // MediaDataModel(
  //   description: "Malachi 3:10: Bring the whole tithe into the storehouse, that there may be food in my temple. Test me in this, says the Lord Almighty, and see if I will not throw open the floodgates of heaven and pour out so much blessing that you will not have room enough for it. (Offering tithes and resources as an act of worship)",
  //   name: "Worship 8",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 8,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "8",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F08.%20Bloodstained%20Pages%20(Crystal%20Lewis).mp4?alt=media&token=edbdd345-696a-49c3-a62e-2468ecf9a4e3",
  // ),
  //
  // MediaDataModel(
  //   description: "Hebrews 13:15: Therefore let us offer through him a continual sacrifice of praise to God, the fruit of lips that confess his name. (Praising God as a continual offering)",
  //   name: "Worship 9",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 9,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "9",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F09.%20Nothing%20But%20The%20Blood%20(Andy%20Cherry).mp4?alt=media&token=f6785522-dba8-432f-90c5-bd5d29cdf448",
  // ),
  //
  // MediaDataModel(
  //   description: "Psalm 46:10: Be still, and know that I am God; I will be exalted among the nations, I will be exalted in the earth! (Acknowledging God's sovereignty and surrendering to His will)",
  //   name: "Worship 10",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 10,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "10",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F10.%20Nothing%20But%20The%20Blood%20Of%20Jesus%20(Natalie%20Grant).mp4?alt=media&token=609a5a67-44cf-45c6-aaed-0f484a1f93a1",
  // ),
  //
  // MediaDataModel(
  //   description: "Proverbs 3:5-6: Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to him, and he will make your paths straight. (Trusting and submitting to God's guidance)",
  //   name: "Worship 11",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 11,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "11",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F11.%20The%20Blood%20%2B%20Nothing%20But%20The%20Blood%20(David%20Funk).mp4?alt=media&token=a352be06-3751-4658-9b03-21c94ba13d8a",
  // ),
  //
  // MediaDataModel(
  //   description: "Micah 6:8: He has shown you, O man, what is good. And what does the Lord require of you? To act justly and to love mercy and to walk humbly with your God. (Living a life surrendered to God's principles)",
  //   name: "Worship 12",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 12,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "12",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F12.%20Holy%20spirit%20%20Living%20Breadth%20of%20God%20(keith%20%26%20kristyn%20getty).mp4?alt=media&token=cdd5cb61-25d3-4210-b9eb-7ff3e6324494",
  // ),
  //
  // MediaDataModel(
  //   description: "Romans 15:30: I appeal to you, brothers, to help me in my struggle by praying to God for me. (Interceding for others in prayer)",
  //   name: "Worship 13",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 13,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "13",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F13.%20Jesus%20paid%20it%20all%20(Kristian%20Stanfil).mp4?alt=media&token=d0384e82-92d8-43d0-b70c-2e07b0c9d371",
  // ),
  //
  // MediaDataModel(
  //   description: "Philippians 4:6: Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God. (Bringing personal needs and prayers before God)",
  //   name: "Worship 14",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 14,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "14",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F14.%20It_s%20still%20the%20blood%20(The%20inspirations).mp4?alt=media&token=b9d21792-1921-49a7-98d3-af9a2bcb7f21",
  // ),
  //
  // MediaDataModel(
  //   description: "1 Timothy 2:1-2: First of all, then, I urge that supplications, prayers, intercessions, and thanksgivings be made for all people, for kings and all who are in high positions, that we may lead a peaceful and quiet life in all godliness and dignity. (Praying for others in positions of authority)",
  //   name: "Worship 15",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 15,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "15",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F15.%20Nothing%20but%20the%20blood%20(Robert%20Lowry).mp4?alt=media&token=6c8e78eb-3261-46e4-91d6-ca28670eccd2",
  // ),
  //
  // MediaDataModel(
  //   description: "Deuteronomy 31:11-12 (continued): ...hear and learn to fear the Lord your God and carefully follow all the words of this law. Their children who have not known it will hear and learn, and they will grow up to fear the Lord your God as long as you live in the land you are crossing the Jordan to possess. (Hearing and learning God\'s word is a vital aspect of worship)",
  //   name: "Worship 16",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 16,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "16",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F16.%20Jesus%20only%20Jesus%20%20(matt%20redman).mp4?alt=media&token=9a694b03-5c9b-4d42-b484-9f57dcfd0062",
  // ),
  //
  // MediaDataModel(
  //   description: "Psalm 119:105: Your word is a lamp to my feet and a light for my path. (God's word guides our steps and illuminates our worship)",
  //   name: "Worship 17",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 17,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "17",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F17.%20Mercy%20Seat%20(Vicki%20Yohe).mp4?alt=media&token=6513664a-d1ea-4d7b-8d89-509d4f692a54",
  // ),
  //
  // MediaDataModel(
  //   description: "Romans 12:1: Therefore, I urge you, brothers, in view of God\'s immense mercy, to offer your bodies as living sacrifices, holy and pleasing to God—this is your true and proper worship. (Living a life dedicated to serving God is a form of worship)",
  //   name: "Worship 18",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 18,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "18",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F18.%20Mercy%20tree%20%20(Lacey%20Sturm).mp4?alt=media&token=9b59d051-1101-4fa3-865a-cd302d899775",
  // ),
  //
  // MediaDataModel(
  //   description: "Micah 6:8: ...He has shown you, O man, what is good. And what does the Lord require of you? To act justly and to love mercy and to walk humbly with your God. (Living a life that reflects God's character is a form of worship)",
  //   name: "Worship 19",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 19,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "19",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F19.%20Nothing%20but%20the%20blood%20%20(Jars%20of%20Clay).mp4?alt=media&token=80ed5b09-125b-44d9-8976-0c958da94b00",
  // ),
  //
  // MediaDataModel(
  //   description: "Hebrews 10:25: Let us not give up meeting together, as some are in the habit of doing, but let us encourage one another—and all the more as you see the Day approaching. (Gathering with other believers for worship and encouragement)",
  //   name: "Worship 20",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 20,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "20",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F20.%20Nothing%20but%20the%20blood%20(Citizens%20%26%20Saints).mp4?alt=media&token=99eceba5-f0f7-42d0-b2eb-0b0b0fbf3686",
  // ),
  //
  // MediaDataModel(
  //   description: "Psalm 133:1: How good and pleasant it is when God\'s people live together in unity! (Experiencing unity and fellowship among believers is a form of worship)",
  //   name: "Worship 21",
  //   profileImageUrl: "https://fastly.picsum.photos/id/267/536/354.jpg?hmac=zVch2Xc4A7TDu19qPBFQxet0q1gXDc3aUr4zEUbs1Ec",
  //   position: 21,
  //   thumb: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/images%2FCommunity%2Fcommunity_page_top_banner_image.png?alt=media&token=8eeffbb6-dee4-4dd4-a2ce-99b26a758c2f",
  //   title: "21",
  //   audioUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FCommunity%2FAretha%20Franklin%20-%20There%20Is%20A%20Fountain%20Filled%20With%20Blood.m4a?alt=media&token=c5b0e21e-3fe2-467f-904d-e3f7118661b6",
  //   videoUrl: "https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/videos%2FCommunity%2FWorship%2F7.mp4?alt=media&token=76255f30-be7e-485f-9e3e-ee7b7fd10bc0",
  // ),


];



// final audioDataMorning = [
//   {
//     'title': 'Matthew-1',
//     'position': 'Matthew-1',
//     'audioUrl': 'https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FJanuary%2FM_matthew_01.mp3?alt=media&token=cc3fa513-e143-4e40-a869-94e90eaee824',
//     'description': '',
//     'type': 'Morning',
//   },
//   {
//     'title': 'Matthew-2',
//     'position': 'Matthew-2',
//     'audioUrl': 'https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FJanuary%2FM_matthew_02.mp3?alt=media&token=01cdcce0-c19a-454a-adff-10427f2bea71',
//     'description': '',
//     'type': 'Morning',
//   },
// ];
//
// final audioDataEvening = [
//   {
//     'title': 'Genesis-1-2',
//     'position': 'Genesis-1-2',
//     'audioUrl': 'https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FJanuary%2FE_genesis-01_02.mp3?alt=media&token=62834472-b8b0-46c9-b682-e01f99a73c83',
//     'description': '',
//     'type': 'Evening',
//   },
//   {
//     'title': 'Genesis-3-5',
//     'position': 'Genesis-3-5',
//     'audioUrl': 'https://firebasestorage.googleapis.com/v0/b/charriotswill.appspot.com/o/audios%2FJanuary%2FE_genesis-03_05.mp3?alt=media&token=8e12cb8e-ce1c-4f64-953c-d42ab177f087',
//     'description': '',
//     'type': 'Evening',
//   },
// ];