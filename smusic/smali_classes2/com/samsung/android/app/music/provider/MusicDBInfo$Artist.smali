.class Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Artist"
.end annotation


# static fields
.field static final INDEX_ARTIST_KEY_NAME:Ljava/lang/String; = "artistkey_index"

.field static final INDEX_ARTIST_KEY_SCHENA:Ljava/lang/String; = "artists(artist_key)"

.field static final INDEX_ARTIST_NAME:Ljava/lang/String; = "artist_idx"

.field static final INDEX_ARTIST_SCHEMA:Ljava/lang/String; = "artists(artist)"

.field static final TABLE_COLUMNS_DEFINITION_20077:Ljava/lang/String; = "artist_id INTEGER PRIMARY KEY,source_artist_id INTEGER,artist_key TEXT NOT NULL,artist TEXT NOT NULL,artist_content_location INTEGER NOT NULL, CONSTRAINT unique_artist UNIQUE(source_artist_id, artist_content_location),CONSTRAINT unique_artist_key UNIQUE(artist_key, artist_content_location)"

.field static final TABLE_COLUMNS_DEFINITION_20200:Ljava/lang/String; = "artist_id INTEGER PRIMARY KEY, source_artist_id TEXT, artist_unique_key TEXT UNIQUE NOT NULL, artist_key TEXT NOT NULL,artist TEXT NOT NULL,artist_pinyin TEXT, is_multple_artist INTEGER DEFAULT 0, artist_cp_attrs INTEGER NOT NULL"

.field private static final TABLE_COLUMNS_DEFINITION_COMMON:Ljava/lang/String; = "artist_key TEXT NOT NULL,artist TEXT NOT NULL"

.field static final TABLE_NAME:Ljava/lang/String; = "artists"

.field static final TABLE_PINYIN_COLUMNS_20077:Ljava/lang/String; = "artist_pinyin TEXT"

.field static final VIEW_NAME:Ljava/lang/String; = "music_artist_info"

.field static final VIEW_SCHEMA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT artist_id AS _id, artist, artist_pinyin, artist_key, artist_unique_key, artist_cp_attrs, COUNT(DISTINCT album_id) AS number_of_albums, is_multple_artist, COUNT(*) AS number_of_tracks, album_id,  max(most_played) AS total_most_played,  max(date_added) AS max_date_added, min(album COLLATE LOCALIZED) AS dummy FROM audio WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 413
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GROUP BY artist_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;->VIEW_SCHEMA:Ljava/lang/String;

    .line 406
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
