.class Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Album"
.end annotation


# static fields
.field static final INDEX_ALBUM_KEY_NAME:Ljava/lang/String; = "albumkey_index"

.field static final INDEX_ALBUM_KEY_SCHENA:Ljava/lang/String; = "albums(album_key)"

.field static final INDEX_ALBUM_NAME:Ljava/lang/String; = "album_idx"

.field static final INDEX_ALBUM_SCHEMA:Ljava/lang/String; = "albums(album)"

.field static final TABLE_COLUMNS_DEFINITION_20077:Ljava/lang/String; = "album_id INTEGER PRIMARY KEY,source_album_id INTEGER,album_key TEXT NOT NULL,album TEXT NOT NULL, album_artist TEXT,album_content_location INTEGER NOT NULL,CONSTRAINT unique_albums UNIQUE(source_album_id, album_content_location),CONSTRAINT unique_albums_key UNIQUE(album_key, album_content_location)"

.field static final TABLE_COLUMNS_DEFINITION_20200:Ljava/lang/String; = "album_id INTEGER PRIMARY KEY,source_album_id TEXT,album_unique_key TEXT UNIQUE NOT NULL,album_key TEXT NOT NULL,album TEXT NOT NULL, album_artist TEXT,album_pinyin TEXT,album_cp_attrs INTEGER NOT NULL"

.field private static final TABLE_COLUMNS_DEFINITION_COMMON:Ljava/lang/String; = "album_key TEXT NOT NULL,album TEXT NOT NULL, album_artist TEXT"

.field static final TABLE_NAME:Ljava/lang/String; = "albums"

.field static final TABLE_PINYIN_COLUMNS_20077:Ljava/lang/String; = "album_pinyin TEXT"

.field static final VIEW_NAME:Ljava/lang/String; = "music_album_info"

.field static final VIEW_SCHEMA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT audio.album_id AS _id, album, album_pinyin, album_unique_key, album_key, album_cp_attrs, MIN(year) AS minyear, MAX(year) AS maxyear, MAX(CASE WHEN year_name IS \'<unknown>\' THEN null ELSE year_name END) AS year_name, artist, artist_id, artist_key, artist_pinyin, count(distinct(artist)) as artist_count, count(*) AS numsongs, album_art._data AS album_art, MAX(date_added) AS max_date_added FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 342
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GROUP BY audio.album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;->VIEW_SCHEMA:Ljava/lang/String;

    .line 333
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
