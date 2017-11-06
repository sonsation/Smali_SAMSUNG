.class Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "SeslModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 492
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 493
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 498
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;

    .line 499
    .local v0, "result":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 508
    :goto_0
    return-void

    .line 502
    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->finish(Ljava/lang/Object;)V

    goto :goto_0

    .line 505
    :pswitch_1
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
