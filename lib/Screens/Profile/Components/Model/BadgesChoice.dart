import 'package:flutter/material.dart';

class Choice {
  const Choice({required this.title, required this.icon, required this.msg});
  final String title;
  final IconData icon;
  final String msg;
}

List<Choice> earnedBadges = <Choice>[
  const Choice(
      title: 'STREAK CHAMP',
      icon: Icons.local_fire_department_outlined,
      msg: 'You have successfully taken\npart in 4+ events till now'),
  const Choice(
      title: 'FIRST EVENT',
      icon: Icons.check_circle_outline,
      msg: 'You attended your very first\nevent, keep up the streak!'),
  const Choice(
      title: 'FIRST FOLLOW',
      icon: Icons.person_add_alt_outlined,
      msg: 'You must be popular,\nsomeone just followed you!!'),
];

List<Choice> allBadges = <Choice>[
  const Choice(
      title: 'TEAMWORK',
      icon: Icons.people_outline,
      msg:
          'Teamwork makes the dream work,\nYou must\'ve bonded with your team'),
  const Choice(
      title: 'ICONIC',
      icon: Icons.star_border,
      msg: 'Wow you\'re on a roll baby,\nkeep pushing yourself'),
  const Choice(
      title: 'DORA',
      icon: Icons.search,
      msg:
          'Heard about the event through\nothers? searching helps you find it'),
  const Choice(
      title: 'BOOKMARK',
      icon: Icons.bookmark_border,
      msg: 'Planning ahead for an event,\nyou must be excited for it!'),
  const Choice(
      title: 'FRIENDS',
      icon: Icons.person_add,
      msg: 'You added your first friend,\nnow attend events with them'),
  const Choice(
      title: 'EXCELLENCE',
      icon: Icons.auto_awesome,
      msg: 'You\'re unstoppable now,\nget to the finish line'),
  const Choice(
      title: 'GOLDEN BOY',
      icon: Icons.bolt_outlined,
      msg: 'You\'re so golden,\nimpossible to not stare!!'),
  const Choice(
      title: 'MVP',
      icon: Icons.rocket_launch_outlined,
      msg: 'You\'re really very good\nat this, keep going MVP!'),
  const Choice(
      title: 'ACHIEVER',
      icon: Icons.school_outlined,
      msg: 'You have so much experience\nwith events, try leading one!'),
  const Choice(
      title: 'GOAT',
      icon: Icons.emoji_events_outlined,
      msg: 'You\'re the GOAT,\nall hail you!'),
  const Choice(
      title: 'QR SCAN',
      icon: Icons.qr_code,
      msg: 'Reached an event and got\nyour QR code scanned, enjoy'),
  const Choice(
      title: 'CERTIFIED STAR',
      icon: Icons.note_add_outlined,
      msg: 'You received your first\ncertificate, Congratulations!'),
  const Choice(
      title: 'FULL HOUSE',
      icon: Icons.military_tech_outlined,
      msg: 'You have successfully\ncollected all the badges!!'),
  // const Choice(title: 'Setting', icon: Icons.settings, msg: ''),
  // const Choice(title: 'Album', icon: Icons.photo_album, msg: ''),
  // const Choice(title: 'WiFi', icon: Icons.wifi, msg: ''),
];
