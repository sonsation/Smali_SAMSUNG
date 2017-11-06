.class Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;
.super Ljava/lang/Object;
.source "BlurBackgroundController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleBlurRequest(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;Landroid/graphics/Bitmap;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Z
    .locals 4
    .param p1, "client"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;
    .param p2, "loadedBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "req"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .prologue
    .line 270
    invoke-static {}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBlurRequest() called with: loadedBitmap = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], req = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    invoke-virtual {v1, p3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->getCachedBitmap(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    .local v0, "blurredBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 277
    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->sendToUiThread(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V

    .line 278
    const/4 v1, 0x1

    .line 287
    :goto_0
    return v1

    .line 280
    :cond_1
    if-nez p2, :cond_2

    .line 282
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->access$900(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 284
    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;->blurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    invoke-static {v1, p3, v0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->access$1000(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V

    .line 286
    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->sendToUiThread(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V

    .line 287
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendToUiThread(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "client"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;
    .param p2, "req"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    .param p3, "blurredBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 292
    iget-object v0, p1, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;->uiHandler:Landroid/os/Handler;

    .line 293
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-static {}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendToUiThread() called with: req = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], blurredBitmap = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    const/4 v2, 0x0

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 299
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    return-void
.end method

.method private setDefaultBitmap(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "User"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .line 260
    .local v2, "req":Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->access$700(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    .line 261
    .local v1, "currentClient":Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;
    if-eqz v1, :cond_0

    .line 262
    iget-object v3, v1, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;->blurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 263
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->access$900(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 262
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    .local v0, "blurredBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->sendToUiThread(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V

    .line 266
    .end local v0    # "blurredBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 255
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 235
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->setDefaultBitmap(Landroid/os/Message;)V

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "User"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .line 241
    .local v3, "req":Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 242
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->access$700(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    .line 243
    .local v2, "currentClient":Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;
    if-eqz v2, :cond_0

    .line 244
    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->handleBlurRequest(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;Landroid/graphics/Bitmap;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Z

    goto :goto_0

    .line 248
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "currentClient":Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;
    .end local v3    # "req":Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    .line 249
    .local v1, "client":Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;
    invoke-static {}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "release client"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v4, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->access$700(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;->access$800(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;)V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
