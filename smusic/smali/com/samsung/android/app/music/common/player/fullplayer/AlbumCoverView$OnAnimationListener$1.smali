.class Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$1;
.super Ljava/lang/Object;
.source "AlbumCoverView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$1;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 869
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 870
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$1;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$700(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    :goto_0
    return v3

    .line 873
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 875
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$1;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 878
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$1;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v1

    const v2, 0x7f020198

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setImageResource(I)V

    goto :goto_0

    .line 873
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
