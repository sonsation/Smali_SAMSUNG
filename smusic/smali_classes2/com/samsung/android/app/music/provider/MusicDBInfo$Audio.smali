.class public Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Audio"
.end annotation


# static fields
.field static final ALTER_COLUMN_20200_DRM_TYPE:Ljava/lang/String; = "drm_type INTEGER DEFAULT 0"

.field static final ALTER_COLUMN_20200_LOCAL_TRACK_ID:Ljava/lang/String; = "local_track_id TEXT"

.field static final AUDIO_VIEW_NAME:Ljava/lang/String; = "audio"

.field static final INDEX_ALBUM_ID_NAME:Ljava/lang/String; = "album_id_idx"

.field static final INDEX_ALBUM_ID_SCHEMA:Ljava/lang/String; = "audio_meta(album_id)"

.field static final INDEX_ARTIST_ID_NAME:Ljava/lang/String; = "artist_id_idx"

.field static final INDEX_ARTIST_ID_SCHEMA:Ljava/lang/String; = "audio_meta(artist_id)"

.field static final INDEX_BUCKET_ID_NAME:Ljava/lang/String; = "bucket_id_index"

.field static final INDEX_BUCKET_ID_SCHEMA:Ljava/lang/String; = "audio_meta(bucket_id)"

.field static final INDEX_COMPOSER_NAME:Ljava/lang/String; = "composer_index"

.field static final INDEX_COMPOSER_SCHEMA:Ljava/lang/String; = "audio_meta(composer)"

.field static final INDEX_GENRE_NAME_NAME:Ljava/lang/String; = "genre_name_index"

.field static final INDEX_GENRE_NAME_SCHEMA:Ljava/lang/String; = "audio_meta(genre_name)"

.field static final INDEX_MUSIC_ALBUM_ARTIST_NAME:Ljava/lang/String; = "music_artist_name_index"

.field static final INDEX_MUSIC_ALBUM_ARTIST_SCHEMA:Ljava/lang/String; = "audio_meta(music_album_artist)"

.field static final INDEX_PATH_NAME:Ljava/lang/String; = "path_index"

.field static final INDEX_PATH_SCHEMA:Ljava/lang/String; = "audio_meta(_data)"

.field static final INDEX_TITLE_KEY_NAME:Ljava/lang/String; = "titlekey_index"

.field static final INDEX_TITLE_KEY_SCHEMA:Ljava/lang/String; = "audio_meta(title_key)"

.field static final INDEX_TITLE_NAME:Ljava/lang/String; = "title_idx"

.field static final INDEX_TITLE_SCHEMA:Ljava/lang/String; = "audio_meta(title)"

.field static final TABLE_COLUMNS_DEFINITION_20077:Ljava/lang/String; = "_id INTEGER PRIMARY KEY AUTOINCREMENT,source_id INTEGER,_data TEXT UNIQUE on conflict ignore,_size INTEGER,mime_type TEXT,title TEXT,title_key TEXT,_display_name TEXT,duration INTEGER,track INTEGER,artist_id INTEGER,album_id INTEGER,genre_name TEXT default \'<unknown>\',composer TEXT default \'<unknown>\', year INTEGER, year_name TEXT default \'<unknown>\',bucket_id TEXT,bucket_display_name TEXT,sampling_rate INTEGER default 0,bit_depth INTEGER default 0,is_music INTEGER default 1,is_favorite INTEGER default 0,is_secretbox INTEGER default 0,is_drm INTEGER default 0,date_added INTEGER,date_modified INTEGER,date_updated INTEGER,recently_played INTEGER default 0,most_played INTEGER default 0,recently_added_remove_flag INTEGER default 0, media_type INTEGER default 2,content_location INTEGER,exclusivity INTEGER,CONSTRAINT unique_contents UNIQUE(source_id, content_location) ON CONFLICT IGNORE"

.field static final TABLE_COLUMNS_DEFINITION_20200:Ljava/lang/String; = "_id INTEGER PRIMARY KEY AUTOINCREMENT,source_id TEXT,title_unique_key TEXT UNIQUE NOT NULL,_data TEXT UNIQUE on conflict ignore,_size INTEGER,mime_type TEXT,title TEXT,title_key TEXT,_display_name TEXT,duration INTEGER,track INTEGER,artist_id INTEGER,album_id INTEGER,genre_name TEXT default \'<unknown>\',composer TEXT default \'<unknown>\', year INTEGER, year_name TEXT default \'<unknown>\',bucket_id TEXT,bucket_display_name TEXT,sampling_rate INTEGER default 0,bit_depth INTEGER default 0,is_music INTEGER default 1,is_favorite INTEGER default 0,is_secretbox INTEGER default 0,is_drm INTEGER default 0,date_added INTEGER,date_modified INTEGER,date_updated INTEGER,recently_played INTEGER default 0,most_played INTEGER default 0,recently_added_remove_flag INTEGER default 0, media_type INTEGER default 2,title_pinyin TEXT,genre_name_pinyin TEXT,composer_pinyin TEXT,_display_name_pinyin TEXT,bucket_display_name_pinyin TEXT,music_album_artist TEXT, music_album_artist_key TEXT, music_album_artist_pinyin TEXT, genre_name_key TEXT, composer_key TEXT, display_name_key TEXT, bucket_display_name_key TEXT, cp_attrs INTEGER NOT NULL"

.field private static final TABLE_COLUMNS_DEFINITION_COMMON:Ljava/lang/String; = "_data TEXT UNIQUE on conflict ignore,_size INTEGER,mime_type TEXT,title TEXT,title_key TEXT,_display_name TEXT,duration INTEGER,track INTEGER,artist_id INTEGER,album_id INTEGER,genre_name TEXT default \'<unknown>\',composer TEXT default \'<unknown>\', year INTEGER, year_name TEXT default \'<unknown>\',bucket_id TEXT,bucket_display_name TEXT,sampling_rate INTEGER default 0,bit_depth INTEGER default 0,is_music INTEGER default 1,is_favorite INTEGER default 0,is_secretbox INTEGER default 0,is_drm INTEGER default 0,date_added INTEGER,date_modified INTEGER,date_updated INTEGER,recently_played INTEGER default 0,most_played INTEGER default 0,recently_added_remove_flag INTEGER default 0, media_type INTEGER default 2"

.field public static final TABLE_NAME:Ljava/lang/String; = "audio_meta"

.field static final TABLE_PINYIN_COLUMNS_20077:Ljava/lang/String; = "title_pinyin TEXT,genre_name_pinyin TEXT,composer_pinyin TEXT,_display_name_pinyin TEXT,bucket_display_name_pinyin TEXT"

.field static final VIEW_SCHEMA:Ljava/lang/String; = "SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
