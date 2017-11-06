.class public Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor;
.super Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;
.source "DlnaDmsArtistTrackCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor;->splitCursor(Landroid/database/Cursor;)[Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 21
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static splitCursor(Landroid/database/Cursor;)[Landroid/database/Cursor;
    .locals 22
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 26
    .local v16, "startTime":J
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v14, "splitCursorLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    if-eqz p0, :cond_2

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 29
    const-string v15, "album"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 30
    .local v4, "albumColumnIndex":I
    const-string v15, "artist"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 31
    .local v5, "artistColumnIndex":I
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, "lastAlbum":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 33
    .local v9, "lastArtist":Ljava/lang/String;
    const/4 v10, 0x0

    .line 34
    .local v10, "lastIndex":I
    const/4 v12, 0x0

    .line 36
    .local v12, "position":I
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "currAlbum":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "currArtist":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 39
    new-instance v11, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;

    add-int/lit8 v15, v12, -0x1

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10, v15}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;-><init>(Landroid/database/Cursor;II)V

    .local v11, "myCursor":Landroid/database/Cursor;
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v15, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "splitCursor() -> cursor("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v12, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 43
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 41
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    move-object v8, v6

    .line 45
    move-object v9, v7

    .line 46
    move v10, v12

    .line 48
    .end local v11    # "myCursor":Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 49
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 50
    new-instance v11, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;

    add-int/lit8 v15, v12, -0x1

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10, v15}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;-><init>(Landroid/database/Cursor;II)V

    .line 51
    .restart local v11    # "myCursor":Landroid/database/Cursor;
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v15, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "splitCursor() -> cursor("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v12, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 53
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 52
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v4    # "albumColumnIndex":I
    .end local v5    # "artistColumnIndex":I
    .end local v6    # "currAlbum":Ljava/lang/String;
    .end local v7    # "currArtist":Ljava/lang/String;
    .end local v8    # "lastAlbum":Ljava/lang/String;
    .end local v9    # "lastArtist":Ljava/lang/String;
    .end local v10    # "lastIndex":I
    .end local v11    # "myCursor":Landroid/database/Cursor;
    .end local v12    # "position":I
    :cond_2
    sget-object v15, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "splitCursor() size : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", process time : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 55
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 58
    .local v13, "size":I
    if-nez v13, :cond_3

    .line 59
    const/4 v15, 0x1

    new-array v15, v15, [Landroid/database/Cursor;

    const/16 v18, 0x0

    aput-object p0, v15, v18

    .line 61
    :goto_0
    return-object v15

    :cond_3
    new-array v15, v13, [Landroid/database/Cursor;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/database/Cursor;

    goto :goto_0
.end method
