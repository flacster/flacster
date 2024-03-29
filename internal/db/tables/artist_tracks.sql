drop table if exists artist_tracks cascade;
create table if not exists artist_tracks
(
    artist_id uuid references artists (artist_id),
    track_id  uuid references tracks (track_id),
    primary key (artist_id, track_id)
);

comment on column artist_tracks.artist_id is 'Unique identifier of the artist';
comment on column artist_tracks.track_id is 'Artist name';