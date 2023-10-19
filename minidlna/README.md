# MiniDLNA

## Configuration

You can override the settings in minidlna.conf using these environment variables.

|Environment variable|Key in minidlna.conf|Default value|
|-|-|-|
minidlna_album_art_names | album_art_names | Cover.jpg/cover.jpg/AlbumArtSmall.jpg/albumartsmall.jpg/AlbumArt.jpg/albumart.jpg/Album.jpg/album.jpg/Folder.jpg/folder.jpg/Thumb.jpg/thumb.jpg
minidlna_db_dir | db_dir | /var/cache/minidlna
minidlna_enable_tivo | enable_tivo | no
minidlna_force_sort_criteria | force_sort_criteria | +upnp:class,+upnp:originalTrackNumber,+dc:title
minidlna_friendly_name | friendly_name | 
minidlna_inotify | inotify | yes
minidlna_log_dir | log_dir | /var/log
minidlna_log_level | log_level | general,artwork,database,inotify,scanner,metadata,http,ssdp,tivo | warn
minidlna_max_connections | max_connections | 50
minidlna_media_dir | media_dir | V,/media/movies
minidlna_merge_media_dirs |merge_media_dirs | no
minidlna_minissdpdsocket |minissdpdsocket | /var/run/minissdpd.sock
minidlna_model_number | model_number | 1
minidlna_network_interface | network_interface | 
minidlna_notify_interval | notify_interval | 900
minidlna_port | port | 8200
minidlna_presentation_url | presentation_url | https://server.local/index.php
minidlna_root_container | root_container | B
minidlna_serial | serial | 12345678
minidlna_strict_dlna | strict_dlna | no
minidlna_user | user | root