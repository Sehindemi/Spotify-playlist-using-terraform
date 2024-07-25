resource "spotify_playlist" "tems_music" {
  name = "demi-playlist"
  tracks = ["47hsUYxvbTlBAN3sP9dEOd"]
}

data "spotify_search_track" "drake" {
  artist = "drake"

}

resource "spotify_playlist" "tems_music_2" {
  name = "Terraform-playlist"
  tracks = [data.spotify_search_track.drake.tracks[0].id,
  data.spotify_search_track.drake.tracks[1].id,
  data.spotify_search_track.drake.tracks[2].id]
}
