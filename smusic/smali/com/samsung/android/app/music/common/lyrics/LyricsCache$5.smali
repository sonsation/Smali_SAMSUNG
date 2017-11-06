.class Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;
.super Ljava/lang/Object;
.source "LyricsCache.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DataColumnIdx:I = 0x1

.field private static final IdColumnIdx:I


# instance fields
.field private final mProjection:[Ljava/lang/String;

.field private sortOrder:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

.field private where:Ljava/lang/String;

.field private final whereArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V
    .locals 5
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 311
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->mProjection:[Ljava/lang/String;

    .line 321
    iput-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->where:Ljava/lang/String;

    .line 323
    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->whereArgs:[Ljava/lang/String;

    .line 325
    iput-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->sortOrder:Ljava/lang/String;

    return-void
.end method

.method private getAudioId(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getFilename(IJ)Ljava/lang/String;
    .locals 8
    .param p1, "cpAttrs"    # I
    .param p2, "audioId"    # J

    .prologue
    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 400
    .local v2, "now":J
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1200(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .line 401
    invoke-static {v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1402(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;Z)Z

    .line 403
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->getFilenameCursor(IJ)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1402(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;Z)Z

    .line 405
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1500(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$400(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V

    .line 408
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 415
    .end local v0    # "filename":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 411
    .restart local v0    # "filename":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$302(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;J)J

    .line 415
    .end local v0    # "filename":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->getFilenameDirect(IJ)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v1

    throw v1
.end method

.method getFilenameCursor(IJ)Ljava/lang/String;
    .locals 24
    .param p1, "cpAttrs"    # I
    .param p2, "audioId"    # J

    .prologue
    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1800(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)I

    move-result v2

    move/from16 v0, p1

    if-eq v2, v0, :cond_4

    .line 477
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->sortOrder:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 478
    const-string v2, "%s ASC"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->sortOrder:Ljava/lang/String;

    .line 480
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1600(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 481
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .line 482
    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1700(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->mProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->sortOrder:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 481
    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1302(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 484
    :cond_2
    const/4 v2, 0x0

    .line 563
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 486
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1802(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;I)I

    .line 488
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v20

    .line 489
    .local v20, "pos":I
    if-gez v20, :cond_6

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 494
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->getAudioId(Landroid/database/Cursor;)J

    move-result-wide v4

    sub-long v10, p2, v4

    .line 495
    .local v10, "delta":J
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 497
    .local v8, "absDelta":J
    const-wide/16 v4, 0x400

    cmp-long v2, v8, v4

    if-lez v2, :cond_9

    .line 498
    const/16 v21, 0x0

    .line 504
    .local v21, "testsCount":I
    const-wide/16 v4, 0x0

    cmp-long v2, v10, v4

    if-lez v2, :cond_7

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v16

    .line 506
    .local v16, "lo":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .line 512
    .local v12, "hi":I
    :goto_2
    move/from16 v0, v16

    if-gt v0, v12, :cond_d

    .line 513
    add-int v2, v16, v12

    ushr-int/lit8 v17, v2, 0x1

    .line 514
    .local v17, "mid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->getAudioId(Landroid/database/Cursor;)J

    move-result-wide v18

    .line 516
    .local v18, "midVal":J
    add-int/lit8 v21, v21, 0x1

    .line 518
    cmp-long v2, v18, p2

    if-gez v2, :cond_8

    .line 519
    add-int/lit8 v16, v17, 0x1

    goto :goto_2

    .line 491
    .end local v8    # "absDelta":J
    .end local v10    # "delta":J
    .end local v12    # "hi":I
    .end local v16    # "lo":I
    .end local v17    # "mid":I
    .end local v18    # "midVal":J
    .end local v21    # "testsCount":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_5

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    goto/16 :goto_1

    .line 508
    .restart local v8    # "absDelta":J
    .restart local v10    # "delta":J
    .restart local v21    # "testsCount":I
    :cond_7
    const/16 v16, 0x0

    .line 509
    .restart local v16    # "lo":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .restart local v12    # "hi":I
    goto :goto_2

    .line 520
    .restart local v17    # "mid":I
    .restart local v18    # "midVal":J
    :cond_8
    cmp-long v2, v18, p2

    if-lez v2, :cond_d

    .line 521
    add-int/lit8 v12, v17, -0x1

    goto :goto_2

    .line 533
    .end local v12    # "hi":I
    .end local v16    # "lo":I
    .end local v17    # "mid":I
    .end local v18    # "midVal":J
    .end local v21    # "testsCount":I
    :cond_9
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    int-to-long v4, v13

    cmp-long v2, v4, v8

    if-gez v2, :cond_d

    .line 534
    const-wide/16 v4, 0x0

    cmp-long v2, v10, v4

    if-lez v2, :cond_b

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 539
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 540
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 537
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_4

    .line 542
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->getAudioId(Landroid/database/Cursor;)J

    move-result-wide v4

    cmp-long v2, v4, p2

    if-nez v2, :cond_e

    .line 558
    .end local v13    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->getAudioId(Landroid/database/Cursor;)J

    move-result-wide v14

    .line 559
    .local v14, "id":J
    cmp-long v2, v14, p2

    if-eqz v2, :cond_f

    .line 560
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect audioId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expected audioId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 533
    .end local v14    # "id":J
    .restart local v13    # "i":I
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 563
    .end local v13    # "i":I
    .restart local v14    # "id":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->getPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method getFilenameDirect(IJ)Ljava/lang/String;
    .locals 8
    .param p1, "contentType"    # I
    .param p2, "audioId"    # J

    .prologue
    const/4 v4, 0x0

    .line 436
    const/4 v7, 0x0

    .line 437
    .local v7, "filename":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->where:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 438
    const-string v0, "%s == ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "_id"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->where:Ljava/lang/String;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->whereArgs:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1600(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 444
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .line 445
    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1700(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->where:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->whereArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 447
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->getPath(Landroid/database/Cursor;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 451
    :cond_1
    if-eqz v6, :cond_2

    .line 452
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_2
    return-object v7

    .line 451
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 452
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 329
    const-wide/16 v12, 0x0

    .line 333
    .local v12, "start":J
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    .line 334
    .local v10, "holder":Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;
    iget-wide v8, v10, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->audioId:J

    .line 335
    .local v8, "audioId":J
    invoke-static {v10}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->access$700(Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;)I

    move-result v7

    .line 336
    .local v7, "cpAttrs":I
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$800(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$900(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/util/LruCache;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    iput-object v0, v10, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 338
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v0, v10, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-ne v0, v1, :cond_1

    .line 340
    :cond_0
    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->getFilename(IJ)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "filename":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    iput-object v0, v10, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1100(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

    move-result-object v0

    invoke-static {v10}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->access$700(Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;)I

    move-result v1

    iget-wide v2, v10, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->audioId:J

    new-instance v5, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;

    invoke-direct {v5, p0, v10, v8, v9}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;-><init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;J)V

    .line 370
    invoke-static {v10}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->access$600(Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;)Ljava/lang/Object;

    move-result-object v6

    .line 355
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->requestLyric(IJLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;Ljava/lang/Object;)V

    .line 376
    .end local v4    # "filename":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 338
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1000(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 373
    .local v11, "res":Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
