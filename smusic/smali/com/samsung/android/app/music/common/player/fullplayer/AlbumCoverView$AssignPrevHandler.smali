.class Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignPrevHandler;
.super Landroid/os/Handler;
.source "AlbumCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssignPrevHandler"
.end annotation


# instance fields
.field private final mBlurImageViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V
    .locals 1
    .param p1, "blurImageView"    # Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .prologue
    .line 1197
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignPrevHandler;->mBlurImageViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 1199
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1203
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignPrevHandler;->mBlurImageViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .line 1204
    .local v0, "v":Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;
    if-nez v0, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1207
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1209
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setPrevImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1212
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setPrevImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1207
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
