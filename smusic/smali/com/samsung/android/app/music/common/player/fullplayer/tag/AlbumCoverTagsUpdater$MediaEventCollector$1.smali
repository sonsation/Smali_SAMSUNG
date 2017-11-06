.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$1;
.super Ljava/lang/Object;
.source "AlbumCoverTagsUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;->endCollect()V

    .line 474
    return-void
.end method
