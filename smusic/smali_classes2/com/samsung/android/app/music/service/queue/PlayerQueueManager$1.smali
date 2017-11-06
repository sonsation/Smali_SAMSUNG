.class Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;
.super Ljava/lang/Object;
.source "PlayerQueueManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;ZII)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isGaplessPlaying"    # Z
    .param p3, "playQueueType"    # I
    .param p4, "activeQueueType"    # I

    .prologue
    .line 71
    if-ne p4, p3, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto :goto_0
.end method


# virtual methods
.method public onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 145
    :cond_0
    return-void
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isGaplessPlaying"    # Z

    .prologue
    .line 60
    iget-object v3, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v3

    if-nez v3, :cond_0

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$100(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)I

    move-result v0

    .line 64
    .local v0, "activeQueueType":I
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 65
    .local v1, "musicMeta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v2

    .line 66
    .local v2, "playQueueType":I
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->notifyMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;ZII)V

    goto :goto_0
.end method

.method public onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 88
    iget-object v5, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$100(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)I

    move-result v0

    .line 90
    .local v0, "activeQueueType":I
    if-nez p2, :cond_2

    .line 91
    if-ne v0, v4, :cond_1

    .line 117
    .end local v0    # "activeQueueType":I
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local v0    # "activeQueueType":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v4

    invoke-interface {v4, v6, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 99
    .local v2, "musicMeta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v3

    .line 100
    .local v3, "playQueueType":I
    if-ne v3, v0, :cond_4

    .line 101
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    iget-object v4, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v4

    invoke-interface {v4, v6, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto :goto_0

    .line 107
    :cond_4
    if-ne v3, v4, :cond_0

    .line 109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v1, "data":Landroid/os/Bundle;
    const-string v5, "has_next_song"

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    iget-object v4, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v4

    const-string v5, "com.samsung.android.app.music.core.state.NEXT_RADIO_CHANGED"

    .line 112
    invoke-interface {v4, v5, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 110
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onQueueChanged([J)V
    .locals 1
    .param p1, "list"    # [J

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueChanged([J)V

    .line 124
    :cond_0
    return-void
.end method

.method public onQueueComplete()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueComplete()V

    .line 138
    :cond_0
    return-void
.end method

.method public onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "extras"    # Landroid/os/Bundle;
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
    .line 128
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V

    .line 131
    :cond_0
    return-void
.end method
