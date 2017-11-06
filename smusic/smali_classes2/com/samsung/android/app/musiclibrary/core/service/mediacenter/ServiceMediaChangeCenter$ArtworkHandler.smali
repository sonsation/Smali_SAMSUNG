.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;
.super Landroid/os/Handler;
.source "ServiceMediaChangeCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtworkHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;
    }
.end annotation


# static fields
.field private static final ARTWORK_BLUR_DECODED:I = 0xcb

.field private static final ARTWORK_DECODE_COMPLETE:I = 0xc8

.field private static final ARTWORK_DECODE_FAILED:I = 0xc9

.field private static final ARTWORK_LOADER_URI_KEY:Ljava/lang/String; = "Uri"

.field private static final ARTWORK_REQUESTED:I = 0xca


# instance fields
.field private mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

.field private final mArtworkBaseUri:Landroid/net/Uri;

.field private final mBitmapSizeResId:I

.field private final mBlurSize:I

.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsRequesting:Z

.field private mLastRequestedAlbumId:J

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;IILandroid/net/Uri;)V
    .locals 1
    .param p1, "l"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;
    .param p4, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .param p5, "bitmapSizeResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p6, "blurSize"    # I
    .param p7, "artworkBaseUri"    # Landroid/net/Uri;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mIsRequesting:Z

    .line 368
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mContext:Landroid/content/Context;

    .line 369
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mCallback:Ljava/lang/ref/WeakReference;

    .line 370
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 371
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mBitmapSizeResId:I

    .line 372
    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mArtworkBaseUri:Landroid/net/Uri;

    .line 373
    iput p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mBlurSize:I

    .line 374
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->release()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;Landroid/content/Context;IJI)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # I

    .prologue
    .line 329
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->parseAlbumArt(Landroid/content/Context;IJI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getArtworkUri(Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 499
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0
.end method

.method private isFinishedRequestMsg(I)Z
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 482
    const/16 v0, 0xcb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLatestRequest(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 486
    const-string v2, "Uri"

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->getArtworkUri(Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 487
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 489
    const/4 v2, 0x1

    .line 492
    :goto_0
    return v2

    .line 491
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "id":Ljava/lang/String;
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mLastRequestedAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private parseAlbumArt(Landroid/content/Context;IJI)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cpAttrs"    # I
    .param p3, "albumId"    # J
    .param p5, "size"    # I

    .prologue
    .line 389
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mLastRequestedAlbumId:J

    .line 400
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mIsRequesting:Z

    .line 401
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mArtworkBaseUri:Landroid/net/Uri;

    invoke-static {v3, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$500(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 403
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v3

    .line 404
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-virtual {v3, p1, v2, p5, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 418
    .end local v2    # "uri":Landroid/net/Uri;
    .local v1, "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 406
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->removeRequests()V

    .line 408
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-interface {v3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedArtworkUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 409
    .local v0, "artworkUri":Landroid/net/Uri;
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mBitmapSizeResId:I

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    .line 410
    invoke-virtual {v3, v0, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->getArtwork()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 411
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 413
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mIsRequesting:Z

    .line 414
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mBitmapSizeResId:I

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    .line 415
    invoke-virtual {v3, v0, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private parseBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 504
    const/4 v0, 0x0

    .line 509
    :goto_0
    return-object v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    if-nez v0, :cond_1

    .line 507
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mBlurSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private release()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->release()V

    .line 520
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 521
    return-void
.end method

.method private removeRequests()V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 514
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 431
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 432
    .local v3, "data":Landroid/os/Bundle;
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->isLatestRequest(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 433
    const-string v5, "SMUSIC-SV-MediaCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ArtworkHandler ignore this result this is not same last requested artwork id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mLastRequestedAlbumId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;

    .line 439
    .local v2, "c":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;
    if-nez v2, :cond_2

    .line 440
    const-string v5, "SMUSIC-SV-MediaCenter"

    const-string v6, "Call back is null! something is wrong. "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iput-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mIsRequesting:Z

    goto :goto_0

    .line 444
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 476
    :goto_1
    :pswitch_0
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->isFinishedRequestMsg(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 477
    iput-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mIsRequesting:Z

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 447
    .local v0, "artwork":Landroid/graphics/Bitmap;
    const-string v5, "Uri"

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->getArtworkUri(Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 448
    .local v4, "uri":Landroid/net/Uri;
    invoke-interface {v2, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;->onArtworkDecoded(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 449
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->parseAsyncBlurArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 452
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    .end local v4    # "uri":Landroid/net/Uri;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 457
    .restart local v0    # "artwork":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->parseBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 462
    .local v1, "blur":Landroid/graphics/Bitmap;
    const-string v5, "artwork_uri"

    .line 463
    invoke-direct {p0, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->getArtworkUri(Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 462
    invoke-interface {v2, v5, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;->onBlurArtworkDecoded(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 466
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    .end local v1    # "blur":Landroid/graphics/Bitmap;
    :pswitch_3
    const-string v5, "Uri"

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->getArtworkUri(Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 467
    .restart local v4    # "uri":Landroid/net/Uri;
    invoke-interface {v2, v4, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;->onArtworkDecoded(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 468
    invoke-interface {v2, v4, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;->onBlurArtworkDecoded(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method hasAsyncRequest()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->mIsRequesting:Z

    return v0
.end method

.method parseAsyncBlurArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "artworkUri"    # Landroid/net/Uri;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 422
    const/16 v2, 0xcb

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 423
    .local v1, "m":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "artwork_uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 425
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 426
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    return-void
.end method
