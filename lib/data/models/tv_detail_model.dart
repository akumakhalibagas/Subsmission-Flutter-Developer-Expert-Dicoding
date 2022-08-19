import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/domain/entities/tv_detail.dart';
import 'package:equatable/equatable.dart';

class TvDetailResponse extends Equatable {
  TvDetailResponse(
      {required this.adult,
      required this.backdropPath,
      required this.genres,
      required this.homepage,
      required this.id,
      required this.imdbId,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.status,
      required this.tagline,
      required this.voteAverage,
      required this.voteCount,
      required this.episode});

  final bool adult;
  final String? backdropPath;
  final List<GenreModel> genres;
  final String homepage;
  final int id;
  final String? imdbId;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String status;
  final String tagline;
  final double voteAverage;
  final int voteCount;
  final int episode;

  factory TvDetailResponse.fromJson(Map<String, dynamic> json) =>
      TvDetailResponse(
          adult: json["adult"],
          backdropPath: json["backdrop_path"],
          genres: List<GenreModel>.from(
              json["genres"].map((x) => GenreModel.fromJson(x))),
          homepage: json["homepage"],
          id: json["id"],
          imdbId: json["imdb_id"],
          originalLanguage: json["original_language"],
          originalTitle: json["name"],
          overview: json["overview"],
          popularity: json["popularity"].toDouble(),
          posterPath: json["poster_path"],
          releaseDate: json["first_air_date"],
          status: json["status"],
          tagline: json["tagline"],
          voteAverage: json["vote_average"].toDouble(),
          voteCount: json["vote_count"],
          episode: json["number_of_episodes"]);

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "homepage": homepage,
        "id": id,
        "imdb_id": imdbId,
        "original_language": originalLanguage,
        "name": originalTitle,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "first_air_date": releaseDate,
        "status": status,
        "tagline": tagline,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "number_of_episodes": episode,
      };

  TvDetail toEntity() {
    return TvDetail(
      adult: this.adult,
      backdropPath: this.backdropPath,
      genres: this.genres.map((genre) => genre.toEntity()).toList(),
      id: this.id,
      originalTitle: this.originalTitle,
      overview: this.overview,
      posterPath: this.posterPath,
      releaseDate: this.releaseDate,
      voteAverage: this.voteAverage,
      voteCount: this.voteCount,
      episode: this.episode,
    );
  }

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        genres,
        homepage,
        id,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        releaseDate,
        status,
        tagline,
        voteAverage,
        voteCount,
      ];
}
