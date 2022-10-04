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
      msg: 'You have successfully taken part in 4+ events till now.'),
  const Choice(
      title: 'FIRST EVENT',
      icon: Icons.check_circle_outline,
      msg: 'You attended your very first event, keep up the streak.’'),
  const Choice(
      title: 'FIRST FOLLOW',
      icon: Icons.person_add_alt_outlined,
      msg: 'You must be popular, someone just followed you!!'),
];

List<Choice> allBadges = <Choice>[
  const Choice(
      title: 'TEAMWORK',
      icon: Icons.people_outline,
      msg: 'Teamwork makes the dream work, You must\'ve bonded with your team'),
  const Choice(
      title: 'ICONIC',
      icon: Icons.star_border,
      msg: 'Wow you\'re on a roll baby, keep pushing yourself'),
  const Choice(
      title: 'DORA',
      icon: Icons.search,
      msg: 'Heard about the event through others? searching helps you find it'),
  const Choice(
      title: 'BOOKMARK',
      icon: Icons.bookmark_border,
      msg: 'Planning ahead for an event, you must be excited for it!'),
  const Choice(
      title: 'FRIENDS',
      icon: Icons.person_add,
      msg: 'You added your first friend, now attend events with them'),
  const Choice(
      title: 'EXCELLENCE',
      icon: Icons.auto_awesome,
      msg: 'You\'re unstoppable now, get to the finish line'),
  const Choice(
      title: 'GOLDEN BOY',
      icon: Icons.bolt_outlined,
      msg: 'You\'re so golden, impossible to not stare!!'),
  const Choice(
      title: 'MVP',
      icon: Icons.rocket_launch_outlined,
      msg: 'You\'re really very good at this, keep going MVP!'),
  const Choice(
      title: 'ACHIEVER',
      icon: Icons.school_outlined,
      msg: 'You have so much experience with events, try leading one!'),
  const Choice(
      title: 'GOAT',
      icon: Icons.emoji_events_outlined,
      msg: 'You\'re the GOAT, all hail you!'),
  const Choice(
      title: 'QR SCAN',
      icon: Icons.qr_code,
      msg: 'Reached an event and got your QR code scanned, enjoy'),
  const Choice(
      title: 'CERTIFIED STAR',
      icon: Icons.note_add_outlined,
      msg: 'You received your first certificate, Congratulations!'),
  const Choice(
      title: 'FULL HOUSE',
      icon: Icons.military_tech_outlined,
      msg: 'You have successfully collected all the badges!!'),
  // const Choice(title: 'Setting', icon: Icons.settings, msg: ''),
  // const Choice(title: 'Album', icon: Icons.photo_album, msg: ''),
  // const Choice(title: 'WiFi', icon: Icons.wifi, msg: ''),
];
