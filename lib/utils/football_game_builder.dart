import 'package:flutter/material.dart';

class TeamBuilder {
  final String teamImage;
  final String teamName;
  final String teamGroupName;
  const TeamBuilder({
    Key? key,
    required this.teamGroupName,
    required this.teamImage,
    required this.teamName,
  });
}

class MatchBuilder {
  final String matchDay;
  final String macthTime;
  final String matchType;
  final StatictisBuilder statictisBuilder;
  const MatchBuilder({
    Key? key,
    required this.matchDay,
    required this.macthTime,
    required this.matchType,
    required this.statictisBuilder,
  });
}

class StatictisBuilder {
  final int firstTeamGoals;
  final int firstTeamPossession;
  final int firstTeamAttacks;
  final int firstTeamPassing;
  final int firstTeamShooting;
  final int firstTeamCorners;
  final int firstTeamPenality;
  final int firstTeamkicks;
  final int firstTeamYellowCard;
  final int firstTeamRedCard;
  final int secondTeamGoals;
  final int secondTeamPossession;
  final int secondTeamAttacks;
  final int secondTeamPassing;
  final int secondTeamShooting;
  final int secondTeamCorners;
  final int secondTeamPenality;
  final int secondTeamkicks;
  final int secondTeamYellowCard;
  final int secondTeamRedCard;

  const StatictisBuilder({
    Key? key,
    required this.firstTeamGoals,
    required this.firstTeamPossession,
    required this.firstTeamAttacks,
    required this.firstTeamPassing,
    required this.firstTeamShooting,
    required this.firstTeamCorners,
    required this.firstTeamPenality,
    required this.firstTeamkicks,
    required this.firstTeamYellowCard,
    required this.firstTeamRedCard,
    required this.secondTeamGoals,
    required this.secondTeamPossession,
    required this.secondTeamAttacks,
    required this.secondTeamPassing,
    required this.secondTeamShooting,
    required this.secondTeamCorners,
    required this.secondTeamPenality,
    required this.secondTeamkicks,
    required this.secondTeamYellowCard,
    required this.secondTeamRedCard,
  });
}

class NewsBuilder {}
