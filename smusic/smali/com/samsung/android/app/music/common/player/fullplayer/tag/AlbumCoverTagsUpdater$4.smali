.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$4;
.super Ljava/lang/Object;
.source "AlbumCoverTagsUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->registerUhqaSettingChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$4;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeUhqUpscaler(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "needToUpdate"    # Z

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$4;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$4;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$800(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$900(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Landroid/content/Context;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$4;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V

    .line 370
    return-void
.end method
