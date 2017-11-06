.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 530
    const-string v1, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "com.sec.android.app.music.intent.extra.RECENTLY_PLAYED_UPDATED"

    const/4 v2, 0x0

    .line 531
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    .line 533
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 535
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$300(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    .line 541
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    :goto_0
    return-void

    .line 538
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$400(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->forceLoad()V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 517
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 521
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method
