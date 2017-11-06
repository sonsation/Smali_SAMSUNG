.class public Lcom/samsung/android/app/music/milk/radio/SmartStationController;
.super Ljava/lang/Object;
.source "SmartStationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;,
        Lcom/samsung/android/app/music/milk/radio/SmartStationController$RequestResult;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmartStationController"

.field private static sBannerChecked:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

.field private mBannerTipsSubscription:Lrx/Subscription;

.field private mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mIsCreatingStation:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingStation:Lrx/Subscription;

.field private mSmartStationCoverUrl:Ljava/lang/String;

.field private mSmartStationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->sBannerChecked:Z

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bannerRoot"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mEnable:Z

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mListeners:Ljava/util/List;

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mActivity:Landroid/app/Activity;

    .line 102
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mContext:Landroid/content/Context;

    .line 103
    if-eqz p2, :cond_0

    .line 104
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    .line 107
    :cond_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->addSmartStationListener(Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mSmartStationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mSmartStationId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->hasSmartStation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->createSmartStationIfAvailable()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mSmartStationCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mSmartStationCoverUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->invokeSmartStationCreatedCallbacks(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->createSmartStationInternal()V

    return-void
.end method

.method static synthetic access$802(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mIsCreatingStation:Z

    return p1
.end method

.method private checkBannerTipsObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$3;-><init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private createSmartStationIfAvailable()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 330
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    const-string v3, "9016"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    const-string v0, "SmartStationController"

    const-string v1, "createSmartStationIfAvailable. but no network."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, -0x1

    .line 394
    :goto_0
    return v0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.date_of_click_banner_for_smart_station"

    .line 338
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v3

    .line 337
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 341
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/SmartStationController$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$7;-><init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    .line 351
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v1

    invoke-virtual {v1}, Lrx/observables/BlockingObservable;->first()Ljava/lang/Object;

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->isLoginUser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    const-string v0, "SmartStationController"

    const-string v1, "createSmartStationIfAvailable. user not signed in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v0, -0x2

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->hasAvailableSeedList()Z

    move-result v1

    if-nez v1, :cond_2

    .line 360
    const-string v0, "SmartStationController"

    const-string v1, "createSmartStationIfAvailable. not available seed list"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v0, -0x4

    goto :goto_0

    .line 364
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mLoadingStation:Lrx/Subscription;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mLoadingStation:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 365
    const-string v1, "SmartStationController"

    const-string v2, "createSmartStationIfAvailable. loading start"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->loadTodaySmartStation()Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 370
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;-><init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    .line 371
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mLoadingStation:Lrx/Subscription;

    goto :goto_0
.end method

.method private createSmartStationInternal()V
    .locals 4

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mIsCreatingStation:Z

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;-><init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mActivity:Landroid/app/Activity;

    .line 453
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 421
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createSmartStation(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Z)V

    goto :goto_0
.end method

.method private hasSmartStation()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mSmartStationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokeSmartStationCreatedCallbacks(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "coverUrl"    # Ljava/lang/String;
    .param p3, "created"    # Z

    .prologue
    .line 457
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mListeners:Ljava/util/List;

    .line 458
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;

    .line 459
    .local v0, "listener":Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 460
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;->onSmartStationCreated(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 463
    .end local v0    # "listener":Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;
    :cond_1
    return-void
.end method

.method private loadTodaySmartStation()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;-><init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;)Lcom/samsung/android/app/music/milk/radio/SmartStationController;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;

    .prologue
    .line 111
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;)V

    .line 112
    .local v0, "controller":Lcom/samsung/android/app/music/milk/radio/SmartStationController;
    return-object v0
.end method

.method private startGlowAnimationIfPossible()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 226
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v1

    .line 227
    .local v1, "today":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.date_of_click_banner_for_smart_station"

    .line 228
    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 230
    .local v0, "lastClickDay":I
    const-string v2, "SmartStationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startGlowAnimationIfPossible : Banner clicked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", today : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-lt v0, v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v5

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->startGlowAnimation()V

    goto :goto_0
.end method

.method private stopAnimations()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->stopGlowAnimation()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->stopProgressAnimation()V

    goto :goto_0
.end method


# virtual methods
.method public addSmartStationListener(Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createSmartStation()V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->createSmartStationObservable()Lrx/Observable;

    move-result-object v0

    .line 318
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 319
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/SmartStationController$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$6;-><init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    .line 320
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 326
    return-void
.end method

.method public createSmartStationObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$5;-><init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/SmartStationController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$4;-><init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    .line 300
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public enable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mEnable:Z

    .line 187
    if-nez p1, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->stopAnimations()V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->showBanner(Z)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->showTipsBanner(Z)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->enableIfAvailable()Z

    goto :goto_0
.end method

.method enableIfAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    const-string v0, "SmartStationController"

    const-string v1, "enableIfAvailable. not enabled."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBanner:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->showBanner(Z)V

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->startGlowAnimationIfPossible()Z

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBannerTipsSubscription:Lrx/Subscription;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->sBannerChecked:Z

    if-nez v1, :cond_0

    .line 165
    sput-boolean v0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->sBannerChecked:Z

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->checkBannerTipsObservable()Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 167
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/SmartStationController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$1;-><init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    .line 168
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mBannerTipsSubscription:Lrx/Subscription;

    goto :goto_0
.end method

.method public getCondition()I
    .locals 2

    .prologue
    .line 399
    const/4 v0, -0x1

    .line 400
    .local v0, "state":I
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mIsCreatingStation:Z

    if-eqz v1, :cond_1

    .line 401
    const/4 v0, 0x0

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mSmartStationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasAvailableSeedList()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->hasSmartStationSeed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mEnable:Z

    return v0
.end method

.method public isLoginUser()Z
    .locals 2

    .prologue
    .line 412
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 413
    .local v0, "user":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchLoginDialog()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 247
    const-string v0, "SmartStationController"

    const-string v1, "launchLoginDialog. activity is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mActivity:Landroid/app/Activity;

    .line 251
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoginForSmartStationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public launchSeedWarningDialog()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 256
    const-string v0, "SmartStationController"

    const-string v1, "launchSeedWarningDialog. activity is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mActivity:Landroid/app/Activity;

    .line 260
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "NotEnoughSmartStationSeedDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->createSmartStation()V

    .line 290
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->stopAnimations()V

    .line 132
    return-void
.end method

.method public removeSmartStationListener(Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->enableIfAvailable()Z

    .line 128
    return-void
.end method
