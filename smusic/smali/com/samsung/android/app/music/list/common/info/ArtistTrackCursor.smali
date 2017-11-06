.class public Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;
.super Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;
.source "ArtistTrackCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;,
        Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ColumnType;,
        Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$Column;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->splitCursor(Landroid/database/Cursor;)[Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 28
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static splitCursor(Landroid/database/Cursor;)[Landroid/database/Cursor;
    .locals 18
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 33
    .local v12, "startTime":J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v11, "splitCursorLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    if-eqz p0, :cond_2

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 36
    const-string v14, "album_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 37
    .local v2, "albumIdColumnIndex":I
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 38
    .local v6, "lastAlbumId":J
    const/4 v3, 0x0

    .line 39
    .local v3, "lastIndex":I
    const/4 v9, 0x0

    .line 41
    .local v9, "position":I
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 42
    .local v4, "currAlbumId":J
    cmp-long v14, v6, v4

    if-eqz v14, :cond_1

    .line 43
    new-instance v8, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;

    add-int/lit8 v14, v9, -0x1

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3, v14}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;-><init>(Landroid/database/Cursor;II)V

    .local v8, "myCursor":Landroid/database/Cursor;
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v14, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "splitCursor() -> cursor("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v9, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 47
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 45
    invoke-static {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    move-wide v6, v4

    .line 49
    move v3, v9

    .line 51
    .end local v8    # "myCursor":Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 52
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 53
    new-instance v8, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;

    add-int/lit8 v14, v9, -0x1

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3, v14}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;-><init>(Landroid/database/Cursor;II)V

    .line 54
    .restart local v8    # "myCursor":Landroid/database/Cursor;
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v14, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "splitCursor() -> cursor("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v9, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 56
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 55
    invoke-static {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v2    # "albumIdColumnIndex":I
    .end local v3    # "lastIndex":I
    .end local v4    # "currAlbumId":J
    .end local v6    # "lastAlbumId":J
    .end local v8    # "myCursor":Landroid/database/Cursor;
    .end local v9    # "position":I
    :cond_2
    sget-object v14, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "splitCursor() size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", process time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 58
    invoke-static {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 62
    .local v10, "size":I
    if-nez v10, :cond_3

    .line 63
    const/4 v14, 0x1

    new-array v14, v14, [Landroid/database/Cursor;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    .line 65
    :goto_0
    return-object v14

    :cond_3
    new-array v14, v10, [Landroid/database/Cursor;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/database/Cursor;

    goto :goto_0
.end method
