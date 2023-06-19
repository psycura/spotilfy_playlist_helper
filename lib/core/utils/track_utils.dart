import 'package:collection/collection.dart';
import 'package:spotify_playlist_helper/core/enums/sorting.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';

abstract class TrackUtils {
  static List<TrackWithMetaEntity> getSortedTracks(
    Iterable<TrackWithMetaEntity> tracks, {
    SortBy sortBy = SortBy.name,
    SortOrder sortOrder = SortOrder.asc,
  }) {
    List<TrackWithMetaEntity> res;
    switch (sortBy) {
      case SortBy.album:
        res = tracks.sortedBy((element) => element.track.album.name);
      case SortBy.saved:
        res = tracks.sorted(
          (a, b) => (a.track.is_saved == b.track.is_saved
              ? 0
              : (a.track.is_saved ? 1 : -1)),
        );
      case SortBy.addedAt:
        res = tracks.sortedBy((element) => element.added_at);
      case SortBy.artist:
        res = tracks.sortedBy((element) => element.track.artists.first.name);
      case SortBy.playlistsCount:
        res = tracks.sorted(
          (a, b) => (a.track.playlists.length == b.track.playlists.length
              ? 0
              : (a.track.playlists.length > b.track.playlists.length ? 1 : -1)),
        );
      case SortBy.name:
      default:
        res = tracks.sortedBy((element) => element.track.name);
    }

    return sortOrder == SortOrder.asc ? res : res.reversed.toList();
  }
}
