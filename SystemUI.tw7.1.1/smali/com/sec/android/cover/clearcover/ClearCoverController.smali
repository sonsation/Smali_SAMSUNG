.class public Lcom/sec/android/cover/clearcover/ClearCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "ClearCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverController$1;,
        Lcom/sec/android/cover/clearcover/ClearCoverController$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

.field private mPlaybackStateObserver:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/ClearCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->onDisplayChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverController$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverController$2;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    iput-object p2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mPlaybackStateObserver:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ClearCoverController instance created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDisplayChanged()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->clear_cover_view:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/ClearCoverView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ClearCoverView added at rootview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->start()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->clear_cover_view:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/ClearCoverView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ClearCoverView added at rootview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mPlaybackStateObserver:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->start()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mPlaybackStateObserver:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->stop()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->stop()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onStatusBarStateChanged(I)V

    return-void
.end method
