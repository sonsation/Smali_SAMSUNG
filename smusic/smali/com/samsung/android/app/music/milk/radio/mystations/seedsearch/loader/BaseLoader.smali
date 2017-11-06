.class public abstract Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;
.super Landroid/content/AsyncTaskLoader;
.source "BaseLoader.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<TT;>;",
        "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;",
        "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;"
    }
.end annotation


# instance fields
.field protected mCountDown:Ljava/util/concurrent/CountDownLatch;

.field protected mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mDataMonitor:Ljava/lang/Object;

.field protected volatile mIsLoadingInBackground:Z

.field protected mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field protected mRequestId:I

.field protected volatile mRspErrCode:I

.field protected volatile mRspType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "milkServiceHelper"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .prologue
    .line 37
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mDataMonitor:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 39
    return-void
.end method


# virtual methods
.method protected abstract assertResult(IILjava/lang/Object;)Z
.end method

.method public cancelLoadInBackground()V
    .locals 3

    .prologue
    .line 154
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mIsLoadingInBackground:Z

    if-eqz v1, :cond_0

    .line 155
    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRequestId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->cancelRequest()V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected cancelRequest()V
    .locals 0

    .prologue
    .line 232
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    return-void
.end method

.method protected abstract clear(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method public getRequestMsgId()I
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRequestId:I

    return v0
.end method

.method protected abstract getResponseData(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public getRspCode()I
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRspErrCode:I

    return v0
.end method

.method public getRspType()I
    .locals 1

    .prologue
    .line 241
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRspType:I

    return v0
.end method

.method public loadInBackground()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    const/4 v2, 0x1

    .line 110
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mIsLoadingInBackground:Z

    .line 112
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->request()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRequestId:I

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mIsLoadingInBackground:Z

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mData:Ljava/lang/Object;

    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mDataMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mData:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;Ljava/lang/InterruptedException;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadInBackground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " worker background thread interrupted while waiting for all search network request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 138
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRequestId:I

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 170
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled : Send Request("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 175
    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->assertResult(IILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : this is not our request. type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iput p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRspType:I

    .line 181
    packed-switch p3, :pswitch_data_0

    .line 223
    :goto_1
    iput v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRequestId:I

    .line 224
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 183
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : Success Completed MsgID => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getResponseData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "response":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 189
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mDataMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mData:Ljava/lang/Object;

    .line 191
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRequestId:I

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 193
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 197
    .end local v0    # "response":Ljava/lang/Object;, "TT;"
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApiHandled : response Fail"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    aget-object v1, p5, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRspErrCode:I

    goto :goto_1

    .line 201
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApiHandled : response Cancel"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    aget-object v1, p5, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRspErrCode:I

    goto :goto_1

    .line 205
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApiHandled : response timeout while communicating with server."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    aget-object v1, p5, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRspErrCode:I

    goto :goto_1

    .line 210
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApiHandled : request data error before communicating with server: "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    aget-object v1, p5, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRspErrCode:I

    goto/16 :goto_1

    .line 215
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApiHandled : response data error after communicating with server: "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    aget-object v1, p5, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRspErrCode:I

    goto/16 :goto_1

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->cancelLoadInBackground()V

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->clear(Ljava/lang/Object;)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mRequestId:I

    .line 72
    return-void
.end method

.method protected onForceLoad()V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onForceLoad()V

    .line 58
    return-void
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .line 83
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->onStopLoading()V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mDataMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->clear(Ljava/lang/Object;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mData:Ljava/lang/Object;

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mDataMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->deliverResult(Ljava/lang/Object;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->mData:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->forceLoad()V

    .line 52
    :cond_2
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 105
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->cancelLoad()Z

    .line 106
    return-void
.end method

.method protected abstract request()I
.end method
