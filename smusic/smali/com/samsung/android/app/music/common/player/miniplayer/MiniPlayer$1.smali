.class Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 412
    invoke-static {}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$600()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 413
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$700(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->startActivity(Landroid/app/Activity;Z)V

    .line 414
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "0013"

    .line 415
    invoke-virtual {v4, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$700(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 423
    .local v3, "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicQueue()Ljava/util/List;

    move-result-object v1

    .line 424
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 426
    .local v2, "listItemCount":I
    invoke-static {}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPlayerLauncherListener() listItemCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsEmptyMedia : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .line 427
    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$900(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 426
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$1000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$900(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 432
    :cond_2
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->VI_TRANSITION_PLAYER_ENABLED:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .line 433
    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$700(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->isActivityTransitionEnabled(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 434
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .line 435
    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$700(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "transition_name_player"

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .line 436
    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$1100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)[Landroid/view/View;

    move-result-object v6

    .line 435
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionBundle(Landroid/app/Activity;Ljava/lang/String;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    .line 437
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$700(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "Mini player in music app"

    invoke-static {v4, v0, v5}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivity(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 443
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$1200(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->hideExtraViews()V

    .line 444
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "0013"

    .line 445
    invoke-virtual {v4, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$700(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "Mini player in music app"

    invoke-static {v4, v7, v5}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivity(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1
.end method
