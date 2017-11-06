.class Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;
.super Landroid/os/Handler;
.source "StoreMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoreMainHandler"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    .prologue
    .line 364
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 365
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 366
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 370
    const-string v2, "StoreMainPresenter"

    const-string v3, "handleMessage : retryLoad"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    .line 372
    .local v1, "presenter":Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$200(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)I

    move-result v2

    const/16 v3, 0x3c

    if-gt v2, v3, :cond_2

    .line 373
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$300(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    move-result-object v0

    .line 374
    .local v0, "errorType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    sget-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->LEGAL_NOT_AGREED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    if-ne v0, v2, :cond_1

    .line 375
    const-string v2, "StoreMainPresenter"

    const-string/jumbo v3, "retryLoad : LEGAL_NOT_AGREED"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->hideProgress()V

    .line 377
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    move-result-object v2

    invoke-interface {v2, v5, v5, v7}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->showError(IILjava/lang/String;)V

    .line 378
    invoke-static {v1, v6}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$202(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;I)I

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    if-eq v0, v2, :cond_0

    .line 380
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->retryLoad()V

    goto :goto_0

    .line 383
    .end local v0    # "errorType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->checkServiceState()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    move-result-object v0

    .line 384
    .restart local v0    # "errorType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    sget-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    if-eq v0, v2, :cond_3

    .line 385
    const-string v2, "StoreMainPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retryLoad : ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->hideProgress()V

    .line 387
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3, v5, v7}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->showError(IILjava/lang/String;)V

    .line 392
    :goto_1
    invoke-static {v1, v6}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$202(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;I)I

    goto :goto_0

    .line 389
    :cond_3
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$300(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    goto :goto_1
.end method
