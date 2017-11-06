.class Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$1;
.super Ljava/lang/Object;
.source "MiniPlayerAlbumArt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    move-result-object v0

    .line 65
    .local v0, "info":Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$102(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$200(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$300(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->access$400(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$500(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;Z)V

    goto :goto_0
.end method
