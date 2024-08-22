// ignore_for_file: prefer_const_constructors

import 'package:facebook_clone/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DummyDb {
  static List storylist = [
    {"imagepath": ImageConstants.profile1, "name": "Your story"},
    {
      "imagepath":
          "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Bob"
    },
    {
      "imagepath":
          "https://images.pexels.com/photos/2169434/pexels-photo-2169434.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Charlie"
    },
    {
      "imagepath":
          "https://images.pexels.com/photos/2613260/pexels-photo-2613260.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Diana"
    },
    {
      "imagepath":
          "https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Edward"
    },
    {
      "imagepath":
          "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Fiona"
    },
    {
      "imagepath":
          "https://images.pexels.com/photos/839633/pexels-photo-839633.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "George"
    },
    {
      "imagepath":
          "https://images.pexels.com/photos/839633/pexels-photo-839633.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "George"
    },
    {
      "imagepath":
          "https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Hannah"
    },
    {
      "imagepath":
          "https://images.pexels.com/photos/732425/pexels-photo-732425.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Ian"
    },
    {
      "imagepath":
          "https://images.pexels.com/photos/2122276/pexels-photo-2122276.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Jane"
    },
  ];
  static List postlist = [
    {
      "image":
          "https://images.pexels.com/photos/2156416/pexels-photo-2156416.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "bob",
      "time": "10:00",
      "description":
          "Hey pals, guess what? 🎉 I've just wrapped up crafting these mind-blowing 3D wallpapers, drenched in the coolest of the cool colors! 🌈💎",
      "post":
          "https://images.pexels.com/photos/4388287/pexels-photo-4388287.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "10.3K",
      "commentcount": "762 comments, 91 shares"
    },
    {
      "image":
          "https://images.pexels.com/photos/157661/young-woman-shooting-model-157661.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "charlie",
      "time": "10:30",
      "description":
          "Exploring the vibrant streets of downtown with a camera in hand, capturing candid moments. A perfect day for street photography.",
      "post":
          "https://images.pexels.com/photos/4388167/pexels-photo-4388167.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "4.8K",
      "commentcount": "89 comments, 23 shares"
    },
    {
      "image":
          "https://images.pexels.com/photos/2743754/pexels-photo-2743754.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "edward",
      "time": "11:00",
      "description":
          "A serene morning by the lake, calm waters reflecting the golden sunrise. Nature's beauty at its finest.",
      "post":
          "https://images.pexels.com/photos/1831545/pexels-photo-1831545.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "8.2K",
      "commentcount": "512 comments, 67 shares"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "diana",
      "time": "11:30",
      "description":
          "Hiking up the mountain trails, greeted by breathtaking panoramic views. An adventure to remember.",
      "post":
          "https://images.pexels.com/photos/441585/pexels-photo-441585.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "6.5K",
      "commentcount": "230 comments, 15 shares"
    },
    {
      "image":
          "https://images.pexels.com/photos/2118052/pexels-photo-2118052.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "hannah",
      "time": "12:00",
      "description":
          "Enjoying the bustling city life, capturing moments of everyday urban beauty. Cityscapes full of energy.",
      "post":
          "https://images.pexels.com/photos/4356137/pexels-photo-4356137.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "50K",
      "commentcount": "128 comments, 47 shares"
    },
  ];
  static List profilepostlist = [
    {
      "image": "",
      "time": "1d",
      "description":
          "Hiking up the mountain trails, greeted by breathtaking panoramic views. An adventure to remember.",
      "post":
          "https://images.pexels.com/photos/441585/pexels-photo-441585.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "6.5K",
      "commentcount": "230 comments, 15 shares"
    },
    {
      "image": "",
      "time": "8d",
      "description":
          "Morning coffee and a good book. The best way to start the day.",
      "post":
          "https://images.pexels.com/photos/606541/pexels-photo-606541.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "3.2K",
      "commentcount": "120 comments, 10 shares"
    },
    {
      "image": "",
      "time": "17d",
      "description":
          "Exploring the city's hidden gems. Found this amazing street art today.",
      "post":
          "https://images.pexels.com/photos/1808554/pexels-photo-1808554.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "4.8K",
      "commentcount": "190 comments, 25 shares"
    },
    {
      "image": "",
      "time": "2m",
      "description":
          "Sunset by the beach. Nothing beats the sound of waves and a sky painted with hues of orange.",
      "post":
          "https://images.pexels.com/photos/269583/pexels-photo-269583.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "7.4K",
      "commentcount": "310 comments, 40 shares"
    },
    {
      "image": "",
      "time": "2m",
      "description":
          "Late-night baking session. Tried a new recipe and it turned out amazing!",
      "post":
          "https://images.pexels.com/photos/357561/pexels-photo-357561.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "2.7K",
      "commentcount": "80 comments, 5 shares"
    }
  ];
  static List reelscoverimage = [
    "https://i.pinimg.com/236x/9e/1b/56/9e1b567a5445db392298cd5affa4239e.jpg",
    "https://images.pexels.com/photos/357573/pexels-photo-357573.jpeg?auto=compress&cs=tinysrgb&w=300",
    "https://i.pinimg.com/236x/4d/e0/a8/4de0a8accf9ce66f009c1ab2ff3f0793.jpg",
    "https://i.pinimg.com/236x/cc/f0/84/ccf08468b2ecbd4cb831b6df06a936ab.jpg",
    "https://i.pinimg.com/236x/2b/64/e1/2b64e15ac11687bb3074b9f7abc87edd.jpg",
    "https://i.pinimg.com/236x/d7/3c/92/d73c926c7bc83ec8ee4ebef036b12d4a.jpg",
    "https://i.pinimg.com/236x/94/c3/95/94c395da117d8439907f614cb396cf60.jpg",
    "https://i.pinimg.com/236x/11/11/3c/11113c8ac6d9311e93c7c59516958f06.jpg",
    "https://i.pinimg.com/236x/76/0e/65/760e65d1bfe1f7c98a58dc6e374dab65.jpg",
    "https://i.pinimg.com/236x/e6/bb/c8/e6bbc80b6a0ec1950d05bfe5fa33672d.jpg",
  ];
  static List videopagedata = [
    {
      "image":
          "https://images.pexels.com/photos/2156416/pexels-photo-2156416.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "bob",
      "time": "10:00",
      "description":
          "Hey pals, guess what? 🎉 I've just wrapped up crafting these mind-blowing 3D wallpapers, drenched in the coolest of the cool colors! 🌈💎",
      "post":
          "https://images.pexels.com/photos/4388287/pexels-photo-4388287.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "10.3K",
      "commentcount": "762 comments, 91 shares"
    },
    {
      "image":
          "https://images.pexels.com/photos/157661/young-woman-shooting-model-157661.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "charlie",
      "time": "10:30",
      "description":
          "Exploring the vibrant streets of downtown with a camera in hand, capturing candid moments. A perfect day for street photography.",
      "post":
          "https://images.pexels.com/photos/4388167/pexels-photo-4388167.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "4.8K",
      "commentcount": "89 comments, 23 shares"
    },
    {
      "image":
          "https://images.pexels.com/photos/2743754/pexels-photo-2743754.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "edward",
      "time": "11:00",
      "description":
          "A serene morning by the lake, calm waters reflecting the golden sunrise. Nature's beauty at its finest.",
      "post":
          "https://images.pexels.com/photos/1831545/pexels-photo-1831545.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "8.2K",
      "commentcount": "512 comments, 67 shares"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "diana",
      "time": "11:30",
      "description":
          "Hiking up the mountain trails, greeted by breathtaking panoramic views. An adventure to remember.",
      "post":
          "https://images.pexels.com/photos/441585/pexels-photo-441585.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "6.5K",
      "commentcount": "230 comments, 15 shares"
    },
    {
      "image":
          "https://images.pexels.com/photos/2118052/pexels-photo-2118052.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "hannah",
      "time": "12:00",
      "description":
          "Enjoying the bustling city life, capturing moments of everyday urban beauty. Cityscapes full of energy.",
      "post":
          "https://images.pexels.com/photos/4356137/pexels-photo-4356137.jpeg?auto=compress&cs=tinysrgb&w=600",
      "like": "50K",
      "commentcount": "128 comments, 47 shares"
    },
  ];
  static List<Map<String, dynamic>> createprofiledata = [
    {
      "icon": Icon(Icons.person_pin_circle_rounded),
      "title1": "Personal profile",
      "title2": "Create another profile",
      "text1": "Get a new name and feed",
      "text2": "Choose who you connect with"
    },
    {
      "icon": Icon(Icons.flag),
      "title1": "Public Page",
      "title2": "Grow as business,creator or organization",
      "text1": "Get advanced professional tools",
      "text2": "Assign access to others"
    }
  ];
  static List friendrequest = [
    {
      "image":
          "https://images.pexels.com/photos/2804282/pexels-photo-2804282.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Alice",
      "date": "1d"
    },
    {
      "image":
          "https://images.pexels.com/photos/764529/pexels-photo-764529.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Bob",
      "date": "2d"
    },
    {
      "image":
          "https://images.pexels.com/photos/2071881/pexels-photo-2071881.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Charlie",
      "date": "1m"
    },
    {
      "image":
          "https://images.pexels.com/photos/2224736/pexels-photo-2224736.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "David",
      "date": "3m"
    },
    {
      "image":
          "https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Eva",
      "date": "6m"
    },
    {
      "image":
          "https://images.pexels.com/photos/2262810/pexels-photo-2262810.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Frank",
      "date": "2y"
    },
  ];
  static List peopleyouknow = [
    {
      "image":
          "https://images.pexels.com/photos/935969/pexels-photo-935969.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "George"
    },
    {
      "image":
          "https://images.pexels.com/photos/2128818/pexels-photo-2128818.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Hannah"
    },
    {
      "image":
          "https://images.pexels.com/photos/2515420/pexels-photo-2515420.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Ivy"
    },
    {
      "image":
          "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Jack"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Kara"
    },
    {
      "image":
          "https://images.pexels.com/photos/1399016/pexels-photo-1399016.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Leo"
    },
    {
      "image":
          "https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Mia"
    },
    {
      "image":
          "https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Nina"
    },
    {
      "image":
          "https://images.pexels.com/photos/2118052/pexels-photo-2118052.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Oscar"
    },
    {
      "image":
          "https://images.pexels.com/photos/1642161/pexels-photo-1642161.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Paul"
    },
  ];
  static List suggestion = [
    {
      "image":
          "https://images.pexels.com/photos/1642161/pexels-photo-1642161.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Quinn"
    },
    {
      "image":
          "https://images.pexels.com/photos/2118052/pexels-photo-2118052.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Riley"
    },
    {
      "image":
          "https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Sophia"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Tom"
    },
    {
      "image":
          "https://images.pexels.com/photos/2118052/pexels-photo-2118052.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Uma"
    },
    {
      "image":
          "https://images.pexels.com/photos/1642161/pexels-photo-1642161.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Victor"
    },
    {
      "image":
          "https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Willow"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Xander"
    },
    {
      "image":
          "https://images.pexels.com/photos/2118052/pexels-photo-2118052.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Yara"
    },
    {
      "image":
          "https://images.pexels.com/photos/1642161/pexels-photo-1642161.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "Zane"
    },
  ];
  static List marketlist = [
    {
      "imageurl":
          "https://i.pinimg.com/236x/8d/5d/e2/8d5de2ffc4d11778a7a9fcf3f93ab672.jpg",
      "rate": "₹4,000",
      "itemname": "Dress"
    },
    {
      "imageurl":
          "https://i.pinimg.com/236x/96/08/ea/9608ea61e8e5fd51987a14e31e04bd33.jpg",
      "rate": "₹2,500",
      "itemname": "Bag"
    },
    {
      "imageurl":
          "https://i.pinimg.com/236x/22/fb/78/22fb7858f90a79c917a4a2efae786ce1.jpg",
      "rate": "₹15,00,000",
      "itemname": "Car"
    },
    {
      "imageurl":
          "https://i.pinimg.com/236x/0b/14/f6/0b14f67451abe2d8cf2e0d275be33a28.jpg",
      "rate": "₹75,000",
      "itemname": "Bike"
    },
    {
      "imageurl":
          "https://i.pinimg.com/236x/f5/fc/57/f5fc57b2e85cb2f810bc453192738112.jpg",
      "rate": "₹6,000",
      "itemname": "Shoes"
    },
    {
      "imageurl":
          "https://i.pinimg.com/236x/d9/ba/7e/d9ba7ee4fba67aaf5cb4c1a9a6316a77.jpg",
      "rate": "₹1,200",
      "itemname": "Hat"
    },
    {
      "imageurl":
          "https://i.pinimg.com/236x/71/29/26/712926c3f5d7f095afa14f40a3b9e4a3.jpg",
      "rate": "₹15,000",
      "itemname": "Watch"
    },
    {
      "imageurl":
          "https://i.pinimg.com/236x/61/94/90/619490ffcfdd6bbc7fc82b99ce56fd30.jpg",
      "rate": "₹5,000",
      "itemname": "Sunglasses"
    },
    {
      "imageurl":
          "https://i.pinimg.com/236x/9d/f1/9f/9df19f882d6da5d2d194fdd804a0ab87.jpg",
      "rate": "₹9,000",
      "itemname": "Jacket"
    },
    {
      "imageurl":
          "https://i.pinimg.com/236x/20/4e/90/204e905bfc7f55c45f3a0eeddc2431c9.jpg",
      "rate": "₹90,000",
      "itemname": "Laptop"
    },
  ];
  static List notification = [
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "alex",
      "count": "and 4 others"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "olivia",
      "count": "and 3 others"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "ethan",
      "count": "and 23 others"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "ava",
      "count": "and 2 others"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "noah",
      "count": "and 11 others"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "sophia",
      "count": "and 30 others"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "liam",
      "count": "and 44 others"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "charlotte",
      "count": "and 3 others"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "mason",
      "count": "and 67 others"
    },
    {
      "image":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=400",
      "name": "amelia",
      "count": "and 21 others"
    },
  ];
  static List<Map<String, dynamic>> menudata = [
    {
      "icon": FaIcon(
        FontAwesomeIcons.clockRotateLeft,
        color: Colors.blue,
      ),
      "text": "Memories"
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.bookmark,
        color: Colors.purple,
      ),
      "text": "Saved"
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.circleUser,
        color: Colors.blue,
      ),
      "text": "Groups"
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.video,
        color: Colors.green,
      ),
      "text": "Video"
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.store,
        color: Colors.blue,
      ),
      "text": "Marketplace"
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.magnifyingGlassPlus,
        color: Colors.blue,
      ),
      "text": "Find friends"
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.solidMessage,
        color: Colors.blue,
      ),
      "text": "Feeds"
    },
    {
      "icon": FaIcon(
        FontAwesomeIcons.star,
        color: Colors.yellow,
      ),
      "text": "Events"
    },
  ];
}
