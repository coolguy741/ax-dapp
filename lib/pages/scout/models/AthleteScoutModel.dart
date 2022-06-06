import 'package:ax_dapp/util/SupportedSports.dart';

class AthleteScoutModel {
  final int id;
  final String name;
  final String position;
  final String team;
  final double bookPrice;
  final double bookPriceUsd;
  final SupportedSport sport;
  final String time;
  final double homeRuns;
  final double strikeOuts;
  final double saves;
  final double stolenBase;
  final double atBats;
  final double weightedOnBasePercentage;
  final double errors;
  final double inningsPlayed;

  final double longTokenPrice;
  final double longTokenPriceUsd;
  final double shortTokenPrice;
  final double longTokenPercentage;
  final double shortTokenPercentage;
  final double shortTokenPriceUsd;

  AthleteScoutModel(
      this.id,
      this.name,
      this.position,
      this.team,
      this.bookPrice,
      this.sport,
      this.time,
      this.homeRuns,
      this.strikeOuts,
      this.saves,
      this.stolenBase,
      this.atBats,
      this.weightedOnBasePercentage,
      this.errors,
      this.inningsPlayed,
      this.longTokenPrice,
      this.shortTokenPrice,
      this.longTokenPercentage,
      this.shortTokenPercentage,
      this.bookPriceUsd,
      this.longTokenPriceUsd,
      this.shortTokenPriceUsd);
}
