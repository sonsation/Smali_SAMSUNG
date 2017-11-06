.class public Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;
.super Ljava/lang/Object;
.source "StoreMainPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x3c

.field private static final RETRY_INTERVAL_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "StoreMainPresenter"


# instance fields
.field private final STORE_MAIN_LOADING_TIME_OUT:I

.field private final mHandler:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;

.field private mIsAttachedView:Z

.field private mIsViewUpdated:Z

.field private mModel:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;

.field private mRetryCount:I

.field private mSubscriptions:Lrx/subscriptions/CompositeSubscription;

.field private mView:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const v0, 0xafc8

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->STORE_MAIN_LOADING_TIME_OUT:I

    .line 46
    new-instance v0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;-><init>(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mHandler:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;

    .line 61
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mSubscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mIsViewUpdated:Z

    .line 63
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mRetryCount:I

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mView:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mIsViewUpdated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    .prologue
    .line 34
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mRetryCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mRetryCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->loadStoreMainGroupsAfterCheckError()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    move-result-object v0

    return-object v0
.end method

.method private loadLastUpdateTime()Ljava/util/Date;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 334
    const/4 v3, 0x0

    .line 336
    .local v3, "resultDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "store_main_pref"

    const/4 v7, 0x0

    .line 337
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 338
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "store_main_update_time"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "dateStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 349
    .end local v0    # "dateStr":Ljava/lang/String;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return-object v4

    .line 343
    .restart local v0    # "dateStr":Ljava/lang/String;
    .restart local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "dateStr":Ljava/lang/String;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :goto_1
    move-object v4, v3

    .line 349
    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 346
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadStoreMainGroupsAfterCheckError()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->checkServiceState()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    move-result-object v0

    .line 156
    .local v0, "errorType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    if-eq v0, v1, :cond_0

    .line 157
    const-string v1, "StoreMainPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadStoreMainGroupsAfterCheckError : errorType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v0    # "errorType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    :goto_0
    return-object v0

    .line 162
    .restart local v0    # "errorType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    :cond_0
    const-string v1, "StoreMainPresenter"

    const-string v2, "loadStoreMainGroupsAfterCheckError : in"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->requestStoreMainGroups()V

    .line 165
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    goto :goto_0
.end method

.method private registerSubscription(Lrx/Subscription;)V
    .locals 1
    .param p1, "subscribe"    # Lrx/Subscription;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mSubscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 142
    return-void
.end method

.method private requestStoreMainGroups()V
    .locals 3

    .prologue
    .line 169
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mIsViewUpdated:Z

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mView:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->showProgress()V

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mIsViewUpdated:Z

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mModel:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;->requestStoreMainGroups()Lrx/Observable;

    move-result-object v1

    .line 177
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;-><init>(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)V

    .line 178
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 218
    .local v0, "subscription":Lrx/Subscription;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->registerSubscription(Lrx/Subscription;)V

    .line 219
    return-void
.end method

.method private saveLastUpdateTime(Ljava/util/Date;)V
    .locals 6
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 353
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "dateStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "store_main_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 355
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 356
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "store_main_update_time"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 358
    return-void
.end method

.method private unRegisterSubscriptions()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mSubscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 146
    return-void
.end method


# virtual methods
.method public checkServiceState()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    .locals 6

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    .line 223
    .local v0, "isConnectedNetwork":Z
    if-nez v0, :cond_0

    .line 224
    const-string v3, "StoreMainPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkServiceState : network is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_CONNECTION:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 245
    :goto_0
    return-object v3

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    .line 229
    .local v2, "isServiceConnected":Z
    if-nez v2, :cond_1

    .line 230
    const-string v3, "StoreMainPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkServiceState : service is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    goto :goto_0

    .line 238
    :cond_1
    const/4 v1, 0x1

    .line 239
    .local v1, "isLegalAgreed":Z
    if-nez v1, :cond_2

    .line 240
    const-string v3, "StoreMainPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkServiceState : Legal agree is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->LEGAL_NOT_AGREED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    goto :goto_0

    .line 244
    :cond_2
    const-string v3, "StoreMainPresenter"

    const-string v4, "checkServiceState : no error"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mView:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mModel:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mModel:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mModel:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;

    return-object v0
.end method

.method public isAttachedView()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mIsAttachedView:Z

    return v0
.end method

.method public isUpdated(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "storeMainGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    const/4 v5, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.samsung.radio.MUSICCATEGORY_USER_UPDATED"

    invoke-static {v7, v8, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 261
    const-string v7, "StoreMainPresenter"

    const-string v8, "isUpdated : Music category set is updated."

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.samsung.radio.MUSICCATEGORY_USER_UPDATED"

    invoke-static {v7, v8, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 263
    const/4 v5, 0x1

    .line 330
    :cond_0
    :goto_0
    return v5

    .line 266
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 267
    .local v4, "size":I
    if-nez v4, :cond_2

    .line 268
    const-string v7, "StoreMainPresenter"

    const-string v8, "isUpdated : not updated : group size is 0"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_2
    const/4 v3, 0x0

    .line 273
    .local v3, "mostLatestGroupUpdateTime":Ljava/util/Date;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 274
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getUpdateDate()Ljava/util/Date;

    move-result-object v0

    .line 275
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_4

    .line 276
    move-object v3, v0

    .line 281
    .end local v0    # "date":Ljava/util/Date;
    :cond_3
    if-nez v3, :cond_5

    .line 282
    const-string v7, "StoreMainPresenter"

    const-string v8, "isUpdated : not updated : Any group don\'t have updateTime"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .restart local v0    # "date":Ljava/util/Date;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    .end local v0    # "date":Ljava/util/Date;
    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_7

    .line 287
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getUpdateDate()Ljava/util/Date;

    move-result-object v0

    .line 288
    .restart local v0    # "date":Ljava/util/Date;
    if-eqz v0, :cond_6

    invoke-virtual {v3, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v7

    if-gez v7, :cond_6

    .line 289
    move-object v3, v0

    .line 286
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 293
    .end local v0    # "date":Ljava/util/Date;
    :cond_7
    const/4 v5, 0x0

    .line 294
    .local v5, "updated":Z
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->loadLastUpdateTime()Ljava/util/Date;

    move-result-object v2

    .line 295
    .local v2, "lastUpdateTime":Ljava/util/Date;
    move-object v6, v2

    .line 296
    .local v6, "updatedDate":Ljava/util/Date;
    if-nez v2, :cond_a

    .line 297
    const-string v7, "StoreMainPresenter"

    const-string v8, "isUpdated : updated : No any last updated time"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v5, 0x1

    .line 300
    move-object v6, v3

    .line 315
    :goto_3
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mView:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    invoke-interface {v7}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->isViewCached()Z

    move-result v7

    if-nez v7, :cond_8

    .line 316
    const/4 v5, 0x1

    .line 320
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->values()[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_9

    .line 321
    const-string v7, "StoreMainPresenter"

    const-string v8, "isUpdated : updated forcibly : some groups are missed"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v5, 0x1

    .line 326
    :cond_9
    if-eqz v5, :cond_0

    .line 327
    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->saveLastUpdateTime(Ljava/util/Date;)V

    goto :goto_0

    .line 302
    :cond_a
    invoke-virtual {v3, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v7

    if-lez v7, :cond_b

    .line 303
    const-string v7, "StoreMainPresenter"

    const-string v8, "isUpdated : updated : updated time is updated"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 v5, 0x1

    .line 306
    move-object v6, v3

    goto :goto_3

    .line 308
    :cond_b
    const-string v7, "StoreMainPresenter"

    const-string v8, "isUpdated : not updated : updated time is not updated"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public loadStoreMainGroups()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 121
    const-string v1, "StoreMainPresenter"

    const-string v2, "loadStoreMainGroups : in"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mRetryCount:I

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->loadStoreMainGroupsAfterCheckError()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    move-result-object v0

    .line 126
    .local v0, "errorType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    if-ne v0, v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_CONNECTION:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    if-ne v0, v1, :cond_1

    .line 129
    const-string v1, "StoreMainPresenter"

    const-string v2, "loadStoreMainGroups : NO_CONNECTION"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mView:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    invoke-interface {v1, v3, v3, v4}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->LEGAL_NOT_AGREED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    if-ne v0, v1, :cond_2

    .line 132
    const-string v1, "StoreMainPresenter"

    const-string v2, "loadStoreMainGroups : LEGAL_NOT_AGREED"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mView:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    invoke-interface {v1, v3, v3, v4}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v1, "StoreMainPresenter"

    const-string v2, "loadStoreMainGroups : retryLoad"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->retryLoad()V

    goto :goto_0
.end method

.method public onAttachView(Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mView:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->getModel()Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mModel:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mModel:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;->onAttachPresenter(Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mIsAttachedView:Z

    .line 101
    return-void
.end method

.method public onDetachView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mModel:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;->onDetachPresenter(Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mHandler:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;->removeMessages(I)V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->unRegisterSubscriptions()V

    .line 113
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mIsAttachedView:Z

    .line 114
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mIsViewUpdated:Z

    .line 115
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mView:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    .line 116
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mModel:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;

    .line 117
    return-void
.end method

.method public retryLoad()V
    .locals 4

    .prologue
    .line 150
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mRetryCount:I

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->mHandler:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$StoreMainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 152
    return-void
.end method
