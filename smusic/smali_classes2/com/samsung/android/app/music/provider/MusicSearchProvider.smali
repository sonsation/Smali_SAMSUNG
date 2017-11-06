.class public Lcom/samsung/android/app/music/provider/MusicSearchProvider;
.super Landroid/content/ContentProvider;
.source "MusicSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;,
        Lcom/samsung/android/app/music/provider/MusicSearchProvider$SFinderSearchType;
    }
.end annotation


# static fields
.field private static final ARTWORK_URI:Landroid/net/Uri;

.field private static final AUDIO_ALBUM_ART_ID:I = 0x4

.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.music.MusicSearchProvider"

.field private static final DEBUG:Z = true

.field private static final FINDO_COLUMNS:[Ljava/lang/String;

.field private static final GLOBAL_SEARCH:I = 0x1

.field private static final GLOBAL_SEARCH_COLUMN_COUNT:I = 0x5

.field private static final GLOBAL_SEARCH_TARGET:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-Provider"

.field private static final REGEX_SEARCH:I = 0x3

.field private static final REGEX_SEARCH_COLUMN_COUNT:I = 0x7

.field private static final SUB_TAG:Ljava/lang/String; = "Search: "

.field private static final SUGGEST_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Provider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final URI_PREFIX:Ljava/lang/String; = "android.resource://com.sec.android.app.music/"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 100
    const-string v0, "content://com.sec.android.app.music.MusicSearchProvider"

    .line 101
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "audio/albumart"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->ARTWORK_URI:Landroid/net/Uri;

    .line 104
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 108
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.MusicSearchProvider"

    const-string/jumbo v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.MusicSearchProvider"

    const-string/jumbo v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.MusicSearchProvider"

    sget-object v2, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.MusicSearchProvider"

    const-string v2, "audio/albumart/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "suggest_icon_1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "suggest_text_1"

    aput-object v1, v0, v6

    const-string/jumbo v1, "suggest_text_2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "suggest_intent_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    .line 123
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "suggest_icon_1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "suggest_icon_2"

    aput-object v1, v0, v6

    const-string/jumbo v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "suggest_text_2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_GROUP:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->FINDO_COLUMNS:[Ljava/lang/String;

    .line 131
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->GLOBAL_SEARCH_TARGET:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getFancyCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "limit"    # Ljava/lang/String;

    .prologue
    .line 474
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v11, "keywords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v9, "fancyKeyword":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    new-instance v13, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;

    invoke-direct {v13}, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;-><init>()V

    .line 479
    .local v13, "qParser":Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;
    invoke-virtual {v13, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;->regexParser(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, "RegExSeg":[Ljava/lang/String;
    array-length v12, v7

    .line 482
    .local v12, "length":I
    const-string v0, "SMUSIC-Provider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegExSeg length = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_1

    .line 485
    rem-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_0

    .line 486
    aget-object v0, v7, v10

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    aget-object v0, v7, v10

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 492
    .end local v7    # "RegExSeg":[Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "length":I
    .end local v13    # "qParser":Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 493
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;->getMusicOnlyFilteredSearchUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 494
    .local v2, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 496
    .local v8, "fancyCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->queryInternal(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 497
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 498
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 497
    :goto_1
    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getResultFancyCursor(Landroid/database/Cursor;[Ljava/lang/String;I)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 500
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    .line 498
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 500
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 501
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getGlobalSearchCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 444
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v0, "( "

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .local v10, "selection":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->GLOBAL_SEARCH_TARGET:[Ljava/lang/String;

    array-length v9, v0

    .line 447
    .local v9, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 448
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->GLOBAL_SEARCH_TARGET:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v0, " LIKE ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v0, v9, -0x1

    if-ge v8, v0, :cond_0

    .line 452
    const-string v0, " ) OR ( "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 455
    :cond_1
    const-string v0, " )"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v11

    const-string v0, "album_id"

    aput-object v0, v3, v12

    const-string/jumbo v0, "title"

    aput-object v0, v3, v13

    const-string v0, "artist"

    aput-object v0, v3, v5

    const/4 v0, 0x4

    const-string v4, "album"

    aput-object v4, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ( "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 461
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ) AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "is_music"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v13

    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    move-object v0, p0

    .line 457
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->queryInternal(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 465
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 466
    const/4 v0, 0x0

    .line 470
    :goto_1
    return-object v0

    .line 468
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getResultCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method private getResultCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 234
    const-string v8, "_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 235
    .local v4, "columnIdxID":I
    const-string v8, "album_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, "columnIdxAlbumID":I
    const-string/jumbo v8, "title"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 237
    .local v5, "columnIdxTitle":I
    const-string v8, "artist"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 238
    .local v3, "columnIdxArtist":I
    const-string v8, "album"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, "columnIdxAlbum":I
    if-ltz v4, :cond_0

    if-ltz v1, :cond_0

    if-ltz v5, :cond_0

    if-gez v3, :cond_1

    .line 241
    :cond_0
    const/4 v7, 0x0

    .line 271
    :goto_0
    return-object v7

    .line 243
    :cond_1
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v8, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 244
    .local v7, "result":Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v0, "column":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v8, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->ARTWORK_URI:Landroid/net/Uri;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    const-string v8, "global_search"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 265
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 267
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 269
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->moveToFirst()Z

    goto :goto_0
.end method

.method private getResultFancyCursor(Landroid/database/Cursor;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 33
    .param p1, "fancyOrigin"    # Landroid/database/Cursor;
    .param p2, "filter"    # [Ljava/lang/String;
    .param p3, "limit"    # I

    .prologue
    .line 281
    const-string v30, "Provider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getResultFancyCursor : fancyOrigin\'s Count : "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-eqz p1, :cond_0

    .line 282
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v29

    :goto_0
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, ", limit "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 281
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 285
    .local v14, "context":Landroid/content/Context;
    if-nez v14, :cond_1

    .line 286
    const/16 v29, 0x0

    .line 418
    :goto_1
    return-object v29

    .line 282
    .end local v14    # "context":Landroid/content/Context;
    :cond_0
    const/16 v29, 0x0

    goto :goto_0

    .line 288
    .restart local v14    # "context":Landroid/content/Context;
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    const/16 v29, 0x7

    move/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v13, "column":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v24, "com.sec.android.app.music"

    .line 290
    .local v24, "packageName":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "android.resource://com.sec.android.app.music/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const-string v31, "music_player_default_cover"

    const-string v32, "drawable"

    .line 291
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 290
    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 292
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 299
    .local v15, "defaultAlbum":Ljava/lang/String;
    const v29, 0x7f0a007d

    :try_start_0
    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 300
    .local v11, "artistString":Ljava/lang/String;
    const v29, 0x7f0a0073

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, "albumString":Ljava/lang/String;
    const v29, 0x7f0a01d1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 310
    .local v28, "trackString":Ljava/lang/String;
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v29, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->FINDO_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 311
    .local v9, "artistCursor":Landroid/database/MatrixCursor;
    new-instance v4, Landroid/database/MatrixCursor;

    sget-object v29, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->FINDO_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 312
    .local v4, "albumCursor":Landroid/database/MatrixCursor;
    new-instance v27, Landroid/database/MatrixCursor;

    sget-object v29, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->FINDO_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 314
    .local v27, "trackCursor":Landroid/database/MatrixCursor;
    if-eqz p1, :cond_8

    .line 315
    if-nez p3, :cond_2

    .line 316
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    .line 318
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 319
    .local v17, "fancyCount":I
    const-string v29, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 320
    .local v19, "idIdx":I
    const-string v29, "mime_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 321
    .local v21, "mimeTypeIdx":I
    const-string v29, "artist"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 322
    .local v10, "artistIdx":I
    const-string v29, "album_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 323
    .local v5, "albumIdIdx":I
    const-string v29, "album"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 324
    .local v6, "albumIdx":I
    const-string/jumbo v29, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 325
    .local v25, "titleIdx":I
    const-string v29, "data1"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 326
    .local v22, "numAlbumIdx":I
    const-string v29, "data2"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 328
    .local v23, "numTrackIdx":I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 329
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 330
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 331
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 332
    .local v20, "mimeType":Ljava/lang/String;
    const-string v29, "artist"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 334
    const-string v29, "Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getResultFancyCursor : artistCursor\'s Count : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 335
    invoke-virtual {v9}, Landroid/database/MatrixCursor;->getCount()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 334
    invoke-static/range {v29 .. v30}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v9}, Landroid/database/MatrixCursor;->getCount()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, p3

    if-lt v0, v1, :cond_5

    .line 329
    :cond_3
    :goto_3
    add-int/lit8 v18, v18, 0x1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 302
    .end local v4    # "albumCursor":Landroid/database/MatrixCursor;
    .end local v5    # "albumIdIdx":I
    .end local v6    # "albumIdx":I
    .end local v7    # "albumString":Ljava/lang/String;
    .end local v9    # "artistCursor":Landroid/database/MatrixCursor;
    .end local v10    # "artistIdx":I
    .end local v11    # "artistString":Ljava/lang/String;
    .end local v17    # "fancyCount":I
    .end local v18    # "i":I
    .end local v19    # "idIdx":I
    .end local v20    # "mimeType":Ljava/lang/String;
    .end local v21    # "mimeTypeIdx":I
    .end local v22    # "numAlbumIdx":I
    .end local v23    # "numTrackIdx":I
    .end local v25    # "titleIdx":I
    .end local v27    # "trackCursor":Landroid/database/MatrixCursor;
    .end local v28    # "trackString":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 303
    .local v16, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v29, "Provider"

    const-string v30, "Text resource not found exception"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    if-eqz p1, :cond_4

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v29

    if-nez v29, :cond_4

    .line 305
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_4
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 340
    .end local v16    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v4    # "albumCursor":Landroid/database/MatrixCursor;
    .restart local v5    # "albumIdIdx":I
    .restart local v6    # "albumIdx":I
    .restart local v7    # "albumString":Ljava/lang/String;
    .restart local v9    # "artistCursor":Landroid/database/MatrixCursor;
    .restart local v10    # "artistIdx":I
    .restart local v11    # "artistString":Ljava/lang/String;
    .restart local v17    # "fancyCount":I
    .restart local v18    # "i":I
    .restart local v19    # "idIdx":I
    .restart local v20    # "mimeType":Ljava/lang/String;
    .restart local v21    # "mimeTypeIdx":I
    .restart local v22    # "numAlbumIdx":I
    .restart local v23    # "numTrackIdx":I
    .restart local v25    # "titleIdx":I
    .restart local v27    # "trackCursor":Landroid/database/MatrixCursor;
    .restart local v28    # "trackString":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "artistValue":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->keyWordContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 342
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v29, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->ARTWORK_URI:Landroid/net/Uri;

    .line 344
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v29 .. v31}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    .line 343
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->makeArtistNumbersString(Landroid/content/Context;Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const/16 v29, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v9, v13}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto/16 :goto_3

    .line 356
    .end local v12    # "artistValue":Ljava/lang/String;
    :cond_6
    const-string v29, "album"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 358
    const-string v29, "Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getResultFancyCursor : albumCursor\'s Count : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 359
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->getCount()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 358
    invoke-static/range {v29 .. v30}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->getCount()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .line 364
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 365
    .local v8, "albumValue":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->keyWordContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 366
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v29, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->ARTWORK_URI:Landroid/net/Uri;

    .line 368
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v29 .. v31}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    .line 367
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const v31, 0x7f0a021b

    invoke-static/range {v29 .. v31}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 371
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v4, v13}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto/16 :goto_3

    .line 381
    .end local v8    # "albumValue":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->isTrackType(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 383
    const-string v29, "Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getResultFancyCursor : trackCursor\'s Count : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 384
    invoke-virtual/range {v27 .. v27}, Landroid/database/MatrixCursor;->getCount()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 383
    invoke-static/range {v29 .. v30}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {v27 .. v27}, Landroid/database/MatrixCursor;->getCount()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, p3

    if-lt v0, v1, :cond_9

    .line 414
    .end local v5    # "albumIdIdx":I
    .end local v6    # "albumIdx":I
    .end local v10    # "artistIdx":I
    .end local v17    # "fancyCount":I
    .end local v18    # "i":I
    .end local v19    # "idIdx":I
    .end local v20    # "mimeType":Ljava/lang/String;
    .end local v21    # "mimeTypeIdx":I
    .end local v22    # "numAlbumIdx":I
    .end local v23    # "numTrackIdx":I
    .end local v25    # "titleIdx":I
    :cond_8
    const-string v29, "Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "artistCursor count "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Landroid/database/MatrixCursor;->getCount()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v29, "Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "albumCursor count "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v4}, Landroid/database/MatrixCursor;->getCount()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v29, "Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "trackCursor count "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v27 .. v27}, Landroid/database/MatrixCursor;->getCount()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v29, Landroid/database/MergeCursor;

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Landroid/database/Cursor;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v9, v30, v31

    const/16 v31, 0x1

    aput-object v4, v30, v31

    const/16 v31, 0x2

    aput-object v27, v30, v31

    invoke-direct/range {v29 .. v30}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 389
    .restart local v5    # "albumIdIdx":I
    .restart local v6    # "albumIdx":I
    .restart local v10    # "artistIdx":I
    .restart local v17    # "fancyCount":I
    .restart local v18    # "i":I
    .restart local v19    # "idIdx":I
    .restart local v20    # "mimeType":Ljava/lang/String;
    .restart local v21    # "mimeTypeIdx":I
    .restart local v22    # "numAlbumIdx":I
    .restart local v23    # "numTrackIdx":I
    .restart local v25    # "titleIdx":I
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 390
    .local v26, "titleValue":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->keyWordContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 391
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v29, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->ARTWORK_URI:Landroid/net/Uri;

    .line 393
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v29 .. v31}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    .line 392
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const v31, 0x7f0a021b

    invoke-static/range {v29 .. v31}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 396
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto/16 :goto_3
.end method

.method private grantUriPermission(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 217
    .local v1, "uid":I
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "name":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 219
    const-string v2, "Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search: queryInternal grant permission uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private isTrackType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/x-ogg"

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyWordContains(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "keywords"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 435
    array-length v3, p2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p2, v2

    .line 436
    .local v0, "keyword":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    .end local v0    # "keyword":Ljava/lang/String;
    :goto_1
    return v1

    .line 435
    .restart local v0    # "keyword":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "keyword":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private makeArtistNumbersString(Landroid/content/Context;Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fancyOrigin"    # Landroid/database/Cursor;
    .param p3, "numAlbumIdx"    # I
    .param p4, "numTrackIdx"    # I

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 425
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x7f0c0000

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 426
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 425
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c0004

    .line 427
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 428
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 427
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 430
    :goto_0
    return-object v2

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, ""

    goto :goto_0
.end method

.method private queryInternal(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->grantUriPermission(Landroid/content/Context;Landroid/net/Uri;)V

    .line 513
    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 515
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->revokeUriPermission(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->revokeUriPermission(Landroid/content/Context;Landroid/net/Uri;)V

    throw v0
.end method

.method private revokeUriPermission(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 224
    const-string v0, "Provider"

    const-string v1, "Search: queryInternal revoke granted permission"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 143
    const-string v0, "Provider"

    const-string v1, "Search: not support delete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/albumart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "Provider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search:  getType uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v0, "vnd.android.cursor.dir/audio"

    .line 154
    :goto_0
    return-object v0

    .line 153
    :cond_0
    const-string v0, "Provider"

    const-string v1, "Search: not support getType"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 159
    const-string v0, "Provider"

    const-string v1, "Search: not support insert"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 137
    const-string v0, "SMUSIC-Provider"

    const-string v1, "Search: onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 195
    sget-object v5, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 196
    .local v4, "match":I
    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 197
    const-string v5, "Provider"

    const-string v6, "openFile : only album art uri is valid request."

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v3, 0x0

    .line 212
    :goto_0
    return-object v3

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "albumId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 203
    .local v3, "descriptor":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 204
    .local v2, "context":Landroid/content/Context;
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    .line 205
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 206
    .local v1, "contentUri":Landroid/net/Uri;
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->grantUriPermission(Landroid/content/Context;Landroid/net/Uri;)V

    .line 208
    :try_start_0
    invoke-static {v2, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->openFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 210
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->revokeUriPermission(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->revokeUriPermission(Landroid/content/Context;Landroid/net/Uri;)V

    throw v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 172
    const-string v1, "Provider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 175
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 188
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 177
    :pswitch_1
    aget-object v1, p4, v4

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getGlobalSearchCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 179
    :pswitch_2
    if-nez p4, :cond_0

    .line 180
    const-string v1, ""

    const-string v2, "limit"

    .line 181
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getFancyCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 183
    :cond_0
    aget-object v1, p4, v4

    const-string v2, "limit"

    .line 184
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getFancyCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, "Provider"

    const-string v1, "Search: not support update"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    return v0
.end method
