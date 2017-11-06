.class Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$1;
.super Landroid/database/ContentObserver;
.source "MusicEdgePanelProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 183
    const-string v2, "EdgePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPlaylistsRemoveObserver onChange() selfChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 188
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-static {v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$000(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    .line 189
    invoke-static {v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$000(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 197
    .end local v0    # "currentTime":J
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local v0    # "currentTime":J
    :cond_1
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v2

    const-string v3, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    const/4 v4, 0x0

    .line 195
    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
