.class public final Lcom/samsung/android/app/music/common/player/fullplayer/MilkShareableImpl;
.super Ljava/lang/Object;
.source "MilkShareableImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSourceIdGetter:Lcom/samsung/android/app/music/common/player/SourceIdGetter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/SourceIdGetter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceIdGetter"    # Lcom/samsung/android/app/music/common/player/SourceIdGetter;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MilkShareableImpl;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MilkShareableImpl;->mSourceIdGetter:Lcom/samsung/android/app/music/common/player/SourceIdGetter;

    .line 23
    return-void
.end method

.method private getSimpleTrack(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 40
    .line 41
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MilkTrack;->getContentUriForSimpleTrack()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "source_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p1

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 43
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->createSimpleTrackFromTrackCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 46
    if-eqz v6, :cond_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v2, v0

    .line 47
    :cond_1
    :goto_1
    return-object v2

    .line 46
    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_1

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 40
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v2, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public setBixbyCrossSharePackages(Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public share()V
    .locals 3

    .prologue
    .line 31
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MilkShareableImpl;->mSourceIdGetter:Lcom/samsung/android/app/music/common/player/SourceIdGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/player/SourceIdGetter;->getSourceId()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "trackId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MilkShareableImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MilkShareableImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/MilkShareableImpl;->getSimpleTrack(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->shareTrack(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    goto :goto_0
.end method
