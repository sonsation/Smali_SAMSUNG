.class Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$1;
.super Ljava/lang/Object;
.source "AlbumCoverView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->crossFadeTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->crossFadeTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$100(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->crossFadeTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
