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

  static (SortBy sortBy, SortOrder order) getSortByNameValue({
    required SortBy currentSortBy,
    required SortOrder currentOrder,
  }) {
    if (currentSortBy == SortBy.name) {

      if (currentOrder == SortOrder.asc) {

        return (SortBy.name, SortOrder.desc);
      }

      return (SortBy.artist, SortOrder.asc);
    }

    if (currentOrder == SortOrder.asc) {

      return (SortBy.artist, SortOrder.desc);
    }

    return (SortBy.name, SortOrder.asc);
  }

  static (SortBy sortBy, SortOrder order) getSortByAndOrder({
    required SortBy currentSortBy,
    required SortBy newSortBy,
    required SortOrder currentOrder,
  }) {
    SortOrder order = currentOrder;
    SortBy sortBy = currentSortBy;


    if (newSortBy == currentSortBy) {

      if (newSortBy == SortBy.name) {

        final (newSortBy, sortOrder) = getSortByNameValue(
          currentSortBy: currentSortBy,
          currentOrder: order,
        );

        order = sortOrder;
        sortBy = newSortBy;
      } else {

        order = order == SortOrder.asc ? SortOrder.desc : SortOrder.asc;
      }
    } else  if (newSortBy == SortBy.name) {

      final (newSortBy, sortOrder) = getSortByNameValue(
        currentSortBy: currentSortBy,
        currentOrder: order,
      );

      order = sortOrder;
      sortBy = newSortBy;
    } else {
      sortBy = newSortBy;
      order = SortOrder.asc;
    }



    return (sortBy, order);
  }
}
