.class final Lcom/samsung/android/app/music/cover/CoverQueueFragment$AlbumArtUpdateHandler;
.super Landroid/os/Handler;
.source "CoverQueueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlbumArtUpdateHandler"
.end annotation


# instance fields
.field private final mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/cover/CoverQueueFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V
    .locals 1
    .param p1, "fg"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 267
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 268
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$AlbumArtUpdateHandler;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    .line 273
    iget-object v2, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$AlbumArtUpdateHandler;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .line 274
    .local v1, "fg":Lcom/samsung/android/app/music/cover/CoverQueueFragment;
    if-nez v1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 277
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 279
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 280
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$200(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 281
    invoke-static {v1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$300(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    invoke-static {v1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$400(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 285
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-static {v1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$200(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    invoke-static {v1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$300(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    invoke-static {v1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$400(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
