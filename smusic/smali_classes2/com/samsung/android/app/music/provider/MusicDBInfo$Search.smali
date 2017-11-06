.class Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Search"
.end annotation


# static fields
.field private static final ALBUM_PINYIN_ADD:Ljava/lang/String;

.field private static final ARTIST_PINYIN_ADD:Ljava/lang/String;

.field static final HELPER_VIEW_TITLE_VIEW_NAME:Ljava/lang/String; = "search_helper_title"

.field static final LOCAL_VIEW_SEARCH_QUERY_ALBUM:Ljava/lang/String;

.field static final LOCAL_VIEW_SEARCH_QUERY_ARTIST:Ljava/lang/String;

.field static final LOCAL_VIEW_SEARCH_QUERY_TRACK:Ljava/lang/String;

.field static final SEARCH_ALBUM_VIEW_NAME:Ljava/lang/String; = "search_album"

.field static final SEARCH_ARTIST_VIEW_NAME:Ljava/lang/String; = "search_artist"

.field static final SEARCH_TRACK_VIEW_NAME:Ljava/lang/String; = "search_track"

.field private static final TRACK_PINYIN_ADD:Ljava/lang/String;

.field static final VIEW_NAME:Ljava/lang/String; = "search"

.field static final VIEW_SEARCH_HELPER_TITLE_QUERY:Ljava/lang/String; = "SELECT * FROM audio ORDER BY title  COLLATE LOCALIZED "


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 596
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->ARTIST_PINYIN_ADD:Ljava/lang/String;

    .line 599
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->ALBUM_PINYIN_ADD:Ljava/lang/String;

    .line 603
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->TRACK_PINYIN_ADD:Ljava/lang/String;

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT _id, \'artist\' AS mime_type, artist, album_id, NULL AS duration, NULL AS album, NULL AS title, artist AS text1, NULL AS text2, number_of_albums AS data1, number_of_tracks AS data2, artist_cp_attrs AS cp_attrs, artist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->ARTIST_PINYIN_ADD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS match, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/audio/artists/\'||_id AS suggest_intent_data,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1 AS grouporder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM music_artist_info WHERE (artist!=\'<unknown>\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->LOCAL_VIEW_SEARCH_QUERY_ARTIST:Ljava/lang/String;

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT _id, \'album\' AS mime_type, artist, _id AS album_id,  NULL AS duration, album, NULL AS title, album AS text1, artist AS text2, numsongs AS data1, NULL AS data2, album_cp_attrs AS cp_attrs, artist||\' \'||album"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->ALBUM_PINYIN_ADD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS match, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/audio/albums/\'||_id AS suggest_intent_data, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2 AS grouporder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM music_album_info WHERE (album!=\'<unknown>\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->LOCAL_VIEW_SEARCH_QUERY_ALBUM:Ljava/lang/String;

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT search_helper_title._id AS _id, mime_type, artist, album_id, duration, album, title, title AS text1, artist AS text2, NULL AS data1,NULL AS data2, cp_attrs, artist||\' \'||album||\' \'||title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->TRACK_PINYIN_ADD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS match, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/external/audio/media/\'||search_helper_title._id AS suggest_intent_data, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3 AS grouporder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM search_helper_title WHERE (title != \'\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 660
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->LOCAL_VIEW_SEARCH_QUERY_TRACK:Ljava/lang/String;

    .line 646
    return-void

    .line 596
    :cond_0
    const-string/jumbo v0, "||\' \'||artist_pinyin"

    goto/16 :goto_0

    .line 599
    :cond_1
    const-string/jumbo v0, "||\' \'||artist_pinyin||\' \'||album_pinyin"

    goto/16 :goto_1

    .line 603
    :cond_2
    const-string/jumbo v0, "||\' \'||artist_pinyin||\' \'||album_pinyin||\' \'||title_pinyin"

    goto/16 :goto_2
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
