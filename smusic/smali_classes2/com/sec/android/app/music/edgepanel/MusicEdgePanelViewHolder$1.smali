.class Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$1;
.super Ljava/lang/Object;
.source "MusicEdgePanelViewHolder.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isValidArtwork(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->access$000(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->getLoadedUri(Landroid/os/Message;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 144
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$1;->onArtworkDecoded(Landroid/os/Message;)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method onArtworkDecoded(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$1;->isValidArtwork(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 132
    .local v0, "artwork":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    invoke-static {v1, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->access$102(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateEdgePanel(Z)V

    goto :goto_0
.end method
