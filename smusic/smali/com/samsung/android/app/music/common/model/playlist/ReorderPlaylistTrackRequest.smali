.class public Lcom/samsung/android/app/music/common/model/playlist/ReorderPlaylistTrackRequest;
.super Ljava/lang/Object;
.source "ReorderPlaylistTrackRequest.java"


# instance fields
.field private trackSeqIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourcePlaylistId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v4, p0, Lcom/samsung/android/app/music/common/model/playlist/ReorderPlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    .line 16
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 17
    .local v0, "playlistId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 18
    invoke-static {p1, v0, v1, v4}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getPlaylistTrackSeqIds(Landroid/content/Context;J[J)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/playlist/ReorderPlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    .line 20
    :cond_0
    return-void
.end method
