.class public abstract Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MusicMainActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;
.implements Lcom/samsung/android/app/music/common/activity/OnPreExecutionTaskFinishListener;
.implements Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable;
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;
.implements Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;
.implements Lcom/samsung/android/app/music/milk/event/EventManageable;
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;,
        Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;,
        Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MainTabMode;,
        Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MainTabId;,
        Lcom/samsung/android/app/music/common/activity/MusicMainActivity$TabGroupId;
    }
.end annotation


# static fields
.field private static final KEY_SELECTED_TAB:Ljava/lang/String; = "key_selected_tab"

.field private static final VERIFICATION_LOG_TAG:Ljava/lang/String; = "VerificationLog"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private final mAppUpdateBadgeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mAppUpdateChecker:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

.field private mContainerMilk:Landroid/view/View;

.field private mContainerRadio:Landroid/view/View;

.field private mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

.field private mEventManager:Lcom/samsung/android/app/music/milk/event/EventManager;

.field private mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private mLaunchSearchEnabled:Z

.field private mLoadedPostrollAd:Z

.field mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

.field private mMainTabMode:I

.field private mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private mMyMusicModeTipHelper:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

.field private mMyMusicTabDivider:Landroid/view/View;

.field private mMyMusicTabLayout:Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;

.field private mMyMusicTabManager:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

.field private mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private final mOnLocalTrackCountChangedListener:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

.field private mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private mPreExecutionTaskManager:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

.field private mPreconditionNlgImpl:Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mSamsungAnalyticsReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedTabPosition:I

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

.field private final mTabSelectListener:Landroid/view/View$OnClickListener;

.field private final mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 228
    iput v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLaunchSearchEnabled:Z

    .line 262
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLoadedPostrollAd:Z

    .line 266
    new-instance v0, Lcom/samsung/android/app/music/common/RadioPlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/RadioPlayerController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMainTabMode:I

    .line 703
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$2;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabSelectListener:Landroid/view/View$OnClickListener;

    .line 922
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$3;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mOnLocalTrackCountChangedListener:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    .line 1007
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$4;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1018
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$5;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateBadgeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1028
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$6;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSamsungAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    .line 1320
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$7;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 1795
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$8;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setTab(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Lcom/samsung/android/app/music/milk/event/EventManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEventManager:Lcom/samsung/android/app/music/milk/event/EventManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->initSamsungAnalytics()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setMainTabMode(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicModeTipHelper:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
    .param p1, "x1"    # [Landroid/view/View;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setShowingAnimation([Landroid/view/View;)V

    return-void
.end method

.method private clearLegacySettingsIfNeed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 978
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "legacy_theme_starting_window_clear"

    .line 979
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 980
    .local v1, "startingWindowCleared":Z
    if-nez v1, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat;->setStartingWindowContentView(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 983
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 984
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "legacy_theme_starting_window_clear"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 986
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->updateTabPreferences(Landroid/content/Context;)V

    .line 987
    return-void
.end method

.method private initSamsungAnalytics()V
    .locals 4

    .prologue
    .line 1052
    const-string v2, "MusicMainActivity-"

    const-string v3, "initSamsungAnalytics"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    .line 1055
    .local v1, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1057
    .local v0, "userId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->initSamsungAnalytics(Landroid/app/Application;Ljava/lang/String;)V

    .line 1058
    return-void

    .line 1055
    .end local v0    # "userId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private launchTrackActivityByIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 990
    const-string v3, "extra_list_type"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 991
    .local v1, "trackListType":I
    const-string v3, "extra_key_word"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, "trackKeyword":Ljava/lang/String;
    const-string v3, "extra_title"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 993
    .local v2, "trackTitle":Ljava/lang/String;
    const-string v3, "args_launch_track_activity"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 999
    if-ne v1, v4, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 1000
    const-string v3, "Ui"

    const-string v4, "Try launching track activity with invalid values."

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :goto_0
    return-void

    .line 1004
    :cond_0
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static makeFragmentTag(I)Ljava/lang/String;
    .locals 2
    .param p0, "position"    # I

    .prologue
    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fragment_tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static obtainMusicMainActivity(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private sendMainTabAnalytics(I)V
    .locals 3
    .param p1, "tabId"    # I

    .prologue
    const/4 v2, 0x0

    .line 798
    packed-switch p1, :pswitch_data_0

    .line 815
    :goto_0
    return-void

    .line 800
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "0061"

    .line 801
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "0062"

    .line 805
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "931"

    const-string v2, "0063"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setMainTabMode(I)V
    .locals 4
    .param p1, "mainTabMode"    # I

    .prologue
    const v3, 0x7f12025e

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 674
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMainTabMode:I

    if-ne p1, v0, :cond_0

    .line 701
    :goto_0
    return-void

    .line 677
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMainTabMode:I

    .line 678
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabLayout:Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->setMainTabMode(I)V

    .line 680
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 682
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerRadio:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerMilk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setTab(IZ)V

    goto :goto_0

    .line 690
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerRadio:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerMilk:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 694
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iget v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabViewSelected(I)V

    .line 697
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setTab(IZ)V

    goto :goto_0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private varargs setShowingAnimation([Landroid/view/View;)V
    .locals 6
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 1244
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 1245
    .local v0, "view":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1246
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setTab(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "animation"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 720
    iput p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    .line 722
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 723
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-static {v7}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->makeFragmentTag(I)Ljava/lang/String;

    move-result-object v5

    .line 724
    .local v5, "radioTag":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 726
    .local v4, "radioFragment":Landroid/app/Fragment;
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->makeFragmentTag(I)Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "milkTag":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 729
    .local v2, "milkFragment":Landroid/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 792
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid position: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 731
    :pswitch_0
    if-eqz v4, :cond_0

    .line 732
    invoke-virtual {v4, v8}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 733
    invoke-virtual {v4, v8}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 735
    :cond_0
    if-eqz v2, :cond_1

    .line 736
    invoke-virtual {v2, v8}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 737
    invoke-virtual {v2, v8}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 740
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabManager:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-virtual {v6, v7, p2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->setVisible(ZZ)V

    .line 741
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerRadio:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerMilk:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 743
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setMiniPlayerEnabled(Z)V

    .line 794
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->sendMainTabAnalytics(I)V

    .line 795
    return-void

    .line 746
    :pswitch_1
    if-nez v4, :cond_3

    .line 747
    new-instance v4, Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .end local v4    # "radioFragment":Landroid/app/Fragment;
    invoke-direct {v4}, Lcom/samsung/android/app/music/milk/radio/DialFragment;-><init>()V

    .line 748
    .restart local v4    # "radioFragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 749
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const v6, 0x7f120261

    invoke-virtual {v1, v6, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 751
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_3
    invoke-virtual {v4, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 752
    invoke-virtual {v4, v7}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 754
    if-eqz v2, :cond_4

    .line 755
    invoke-virtual {v2, v8}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 756
    invoke-virtual {v2, v8}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 759
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabManager:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-virtual {v6, v8, v8}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->setVisible(ZZ)V

    .line 760
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerRadio:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerMilk:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 762
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setMiniPlayerEnabled(Z)V

    .line 764
    if-eqz p2, :cond_2

    .line 765
    new-array v6, v7, [Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerRadio:Landroid/view/View;

    aput-object v7, v6, v8

    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setShowingAnimation([Landroid/view/View;)V

    goto :goto_0

    .line 769
    :pswitch_2
    if-nez v2, :cond_5

    .line 770
    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreFragment;

    .end local v2    # "milkFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/android/app/music/milk/store/StoreFragment;-><init>()V

    .line 771
    .restart local v2    # "milkFragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 772
    .restart local v1    # "ft":Landroid/app/FragmentTransaction;
    const v6, 0x7f120262

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 774
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_5
    invoke-virtual {v2, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 775
    invoke-virtual {v2, v7}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 777
    if-eqz v4, :cond_6

    .line 778
    invoke-virtual {v4, v8}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 779
    invoke-virtual {v4, v8}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 782
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabManager:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-virtual {v6, v8, v8}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->setVisible(ZZ)V

    .line 783
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerRadio:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 784
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerMilk:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 785
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setMiniPlayerEnabled(Z)V

    .line 787
    if-eqz p2, :cond_2

    .line 788
    new-array v6, v7, [Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerMilk:Landroid/view/View;

    aput-object v7, v6, v8

    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setShowingAnimation([Landroid/view/View;)V

    goto/16 :goto_0

    .line 729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static startActivity(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 281
    invoke-static {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->obtainMusicMainActivity(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 282
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "selectRadioTab"    # Z

    .prologue
    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "launchMusicPlayerWithRadio"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->startActivity(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 291
    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 1082
    :cond_0
    return-void
.end method

.method public getAppUpdateStatus()I
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateChecker:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateChecker:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->getAppUpdateStatus()I

    move-result v0

    .line 1267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    const-string v0, "MusicMainActivity"

    return-object v0
.end method

.method public getLocalTracksCount()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->getLocalTracksCount()I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    goto :goto_0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 1110
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    return v0
.end method

.method public isEmptyViewAnimationEnabled()Z
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->isEmptyViewAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLaunchSearchEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getLocalTracksCount()I

    move-result v0

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchEventWeb()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEventManager:Lcom/samsung/android/app/music/milk/event/EventManager;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEventManager:Lcom/samsung/android/app/music/milk/event/EventManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/event/EventManager;->launchEventWeb()V

    .line 1106
    :cond_0
    return-void
.end method

.method public launchSearch()V
    .locals 3

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SECH"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 933
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 934
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 935
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x1

    .line 886
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mActionMode:Landroid/view/ActionMode;

    .line 888
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setTabEnabled(IZ)V

    .line 889
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setTabEnabled(IZ)V

    .line 890
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setFullPlayerEnterEnabled(Z)V

    .line 891
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x0

    .line 877
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 878
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mActionMode:Landroid/view/ActionMode;

    .line 879
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setTabEnabled(IZ)V

    .line 880
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setTabEnabled(IZ)V

    .line 881
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setFullPlayerEnterEnabled(Z)V

    .line 882
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 528
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 529
    packed-switch p1, :pswitch_data_0

    .line 541
    :goto_0
    return-void

    .line 531
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 532
    const-string v0, "extra_permissions"

    .line 533
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_grant_result"

    .line 534
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 532
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->onPermissionResult([Ljava/lang/String;[I)V

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->finish()V

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x2714
        :pswitch_0
    .end packed-switch
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 1279
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 1280
    sparse-switch p2, :sswitch_data_0

    .line 1304
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1282
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateChecker:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    if-eqz v1, :cond_0

    .line 1283
    if-nez p3, :cond_1

    .line 1284
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateChecker:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->start()V

    goto :goto_0

    .line 1286
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateChecker:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->setAppUpdateStatus(I)V

    goto :goto_0

    .line 1291
    :sswitch_1
    if-nez p3, :cond_2

    .line 1292
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1294
    :cond_2
    const/4 v0, -0x1

    .line 1295
    .local v0, "resultCode":I
    instance-of v1, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v1, :cond_3

    .line 1296
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 1298
    :cond_3
    const/16 v1, 0xc1d

    if-eq v0, v1, :cond_0

    .line 1299
    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->show()V

    goto :goto_0

    .line 1280
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 825
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onAttachedToWindow()V

    .line 826
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 828
    .local v0, "decorView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/view/ViewCompat;->twSetDrawDuringWindowsAnimating(Landroid/view/View;Z)V

    .line 829
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 338
    const-string v17, "VerificationLog"

    const-string/jumbo v18, "onCreate"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-nez v17, :cond_0

    .line 340
    const v17, 0x7f0f0268

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setTheme(I)V

    .line 342
    :cond_0
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->ACTIVITY_ALBUM_TRACK_TRANSITION_ENABLED:Z

    if-eqz v17, :cond_1

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->setCallerTransition(Landroid/view/Window;)V

    .line 345
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 348
    .local v5, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v7

    .line 349
    .local v7, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v7, :cond_2

    .line 350
    new-instance v10, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;

    invoke-direct {v10, v7}, Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    .line 352
    .local v10, "launchAppResponseExecutor":Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v17, :cond_a

    move-object/from16 v17, v10

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreconditionNlgImpl:Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

    .line 354
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v17, :cond_b

    const-string v17, "Music"

    :goto_1
    const/16 v18, 0xc

    move/from16 v0, v18

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/MoveMainTabExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v7, v1}, Lcom/samsung/android/app/music/bixby/executor/MoveMainTabExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    aput-object v20, v18, v19

    const/16 v19, 0x2

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    aput-object v20, v18, v19

    const/16 v19, 0x3

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/search/LaunchSearchExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v7, v1}, Lcom/samsung/android/app/music/bixby/executor/search/LaunchSearchExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v20, v18, v19

    const/16 v19, 0x4

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/settings/LaunchSettingsExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v7, v1}, Lcom/samsung/android/app/music/bixby/executor/settings/LaunchSettingsExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v20, v18, v19

    const/16 v19, 0x5

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v7, v1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchEventExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v20, v18, v19

    const/16 v19, 0x6

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchHelpExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v7, v1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchHelpExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v20, v18, v19

    const/16 v19, 0x7

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchContactUsExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v7, v1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchContactUsExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v20, v18, v19

    const/16 v19, 0x8

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/player/LaunchPlayerExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/samsung/android/app/music/bixby/executor/player/LaunchPlayerExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    aput-object v20, v18, v19

    const/16 v19, 0x9

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/player/CheckThisSongExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v7, v1}, Lcom/samsung/android/app/music/bixby/executor/player/CheckThisSongExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v20, v18, v19

    const/16 v19, 0xa

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchSubscriptionExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v7, v1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchSubscriptionExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v20, v18, v19

    const/16 v19, 0xb

    new-instance v20, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v7, v1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 369
    .end local v10    # "launchAppResponseExecutor":Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 370
    .local v4, "bar":Landroid/app/ActionBar;
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-nez v17, :cond_c

    .line 371
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 372
    const v17, 0x7f0401ad

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 378
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v13

    .line 379
    .local v13, "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v17, :cond_d

    .line 380
    new-instance v17, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 382
    const-class v17, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    const/16 v18, 0x1

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "android.permission.READ_PHONE_STATE"

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string v21, "android.permission.GET_ACCOUNTS"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->setPermissions(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 389
    :goto_3
    new-instance v17, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V

    .line 393
    const-string v17, "music_player_pref"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 396
    .local v6, "cr":Landroid/content/ContentResolver;
    const-string v17, "VerificationLog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " easy_mode_switch :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "easy_mode_switch"

    const/16 v20, 0x1

    .line 397
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " easy_mode_music :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "easy_mode_music"

    const/16 v20, 0x1

    .line 398
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 396
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const v17, 0x7f0400c9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setContentView(I)V

    .line 402
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v17, :cond_3

    .line 403
    new-instance v17, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;Landroid/os/Bundle;Lcom/samsung/android/app/music/common/activity/MusicMainActivity$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicModeTipHelper:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    .line 406
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 407
    .local v9, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_e

    .line 408
    const-string v17, "key_selected_tab"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    .line 421
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->initMiniPlayer()V

    .line 423
    const v17, 0x7f120261

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerRadio:Landroid/view/View;

    .line 424
    const v17, 0x7f120262

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mContainerMilk:Landroid/view/View;

    .line 425
    const v17, 0x7f120049

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .line 426
    const v17, 0x7f12025d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabLayout:Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;

    .line 427
    const v17, 0x7f12025f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabDivider:Landroid/view/View;

    .line 429
    new-instance v17, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabManager:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabManager:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 432
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v17, :cond_11

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabMode(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-object/from16 v17, v0

    const v18, 0x7f0d023e

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabTextSize(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-object/from16 v17, v0

    const v18, 0x7f04025c

    const v19, 0x7f0a02f7

    .line 436
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addTab(ILjava/lang/CharSequence;I)Landroid/view/View;

    move-result-object v15

    .line 437
    .local v15, "tabMusic":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabSelectListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-object/from16 v17, v0

    const v18, 0x7f04025c

    const v19, 0x7f0a032d

    .line 440
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addTab(ILjava/lang/CharSequence;I)Landroid/view/View;

    move-result-object v16

    .line 441
    .local v16, "tabRadio":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabSelectListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-object/from16 v17, v0

    const v18, 0x7f04025c

    const v19, 0x7f0a03a5

    .line 444
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addTab(ILjava/lang/CharSequence;I)Landroid/view/View;

    move-result-object v14

    .line 445
    .local v14, "tabMilk":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabSelectListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 448
    new-instance v17, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    .line 456
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setMainTabMode(I)V

    .line 462
    .end local v14    # "tabMilk":Landroid/view/View;
    .end local v15    # "tabMusic":Landroid/view/View;
    .end local v16    # "tabRadio":Landroid/view/View;
    :goto_6
    new-instance v17, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mOnLocalTrackCountChangedListener:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    move-object/from16 v18, v0

    .line 464
    invoke-interface/range {v17 .. v18}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 466
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_USA_GATE_ENABLED:Z

    if-eqz v17, :cond_4

    .line 467
    const-string v17, "MUSICPLAYER_OPENED"

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/musiclibrary/ui/regional/usa/GateMessageUtils;->printMessage(Ljava/lang/String;)V

    .line 470
    :cond_4
    const-string v17, "launch_full_player"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 471
    const-string v17, "launch_full_player"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 472
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivityClearTop(Landroid/app/Activity;)V

    .line 483
    :cond_5
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "com.sec.android.app.music.TAB_SETTING_CHANGED"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    new-instance v8, Landroid/content/IntentFilter;

    const-string v17, "ACTION_INITIALIZE"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 486
    .local v8, "f":Landroid/content/IntentFilter;
    const-string v17, "com.samsung.android.app.music.action.USER_INFO_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSamsungAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 489
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_BARGE_IN:Z

    if-eqz v17, :cond_6

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 490
    new-instance v17, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 493
    :cond_6
    new-instance v17, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreExecutionTaskManager:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreExecutionTaskManager:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 495
    invoke-virtual {v13}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isAllGranted()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreExecutionTaskManager:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->start()V

    .line 497
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v17, :cond_7

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/music/common/gcm/GcmController;->startGcmService(Landroid/content/Context;)V

    .line 506
    :cond_7
    :goto_8
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v17, :cond_8

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->initialize(Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    .line 509
    new-instance v17, Lcom/samsung/android/app/music/milk/event/EventManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/event/EventManager;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEventManager:Lcom/samsung/android/app/music/milk/event/EventManager;

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEventManager:Lcom/samsung/android/app/music/milk/event/EventManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->addOnServiceStateListener(Landroid/content/ServiceConnection;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEventManager:Lcom/samsung/android/app/music/milk/event/EventManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 512
    new-instance v17, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateChecker:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v17

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->registerBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v17

    const v18, 0x7f120030

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v20, v0

    .line 516
    invoke-virtual/range {v17 .. v20}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 519
    :cond_8
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_APP_UPDATE_BADGE:Z

    if-eqz v17, :cond_9

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateBadgeChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "com.sec.android.app.music.action_app_update_badge_changed"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->initGoogleAnalytics()V

    .line 524
    return-void

    .line 352
    .end local v4    # "bar":Landroid/app/ActionBar;
    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "f":Landroid/content/IntentFilter;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    .restart local v10    # "launchAppResponseExecutor":Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 354
    :cond_b
    const-string v17, "GlobalMusic"

    goto/16 :goto_1

    .line 374
    .end local v10    # "launchAppResponseExecutor":Lcom/samsung/android/app/music/bixby/executor/LaunchAppResponseExecutor;
    .restart local v4    # "bar":Landroid/app/ActionBar;
    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 375
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_2

    .line 386
    .restart local v13    # "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->setPermissions(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V

    goto/16 :goto_3

    .line 410
    .restart local v6    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_e
    sget-boolean v17, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v17, :cond_f

    const-string v17, "launchMusicPlayerWithRadio"

    const/16 v18, 0x0

    .line 411
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 413
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    .line 418
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->clearLegacySettingsIfNeed()V

    goto/16 :goto_4

    .line 415
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "main_current_tab"

    const/16 v19, 0x0

    .line 416
    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    goto :goto_9

    .line 456
    .restart local v14    # "tabMilk":Landroid/view/View;
    .restart local v15    # "tabMusic":Landroid/view/View;
    .restart local v16    # "tabRadio":Landroid/view/View;
    :cond_10
    const/16 v17, 0x1

    goto/16 :goto_5

    .line 459
    .end local v14    # "tabMilk":Landroid/view/View;
    .end local v15    # "tabMusic":Landroid/view/View;
    .end local v16    # "tabRadio":Landroid/view/View;
    :cond_11
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setMainTabMode(I)V

    goto/16 :goto_6

    .line 473
    :cond_12
    const-string v17, "args_launch_track_activity"

    const/16 v18, 0x0

    .line 474
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 475
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->launchTrackActivityByIntent(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 477
    :cond_13
    const-string v17, "extra_list_type"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 478
    .local v11, "listType":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_5

    .line 479
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->selectTab(II)V

    goto/16 :goto_7

    .line 501
    .end local v11    # "listType":I
    .restart local v8    # "f":Landroid/content/IntentFilter;
    :cond_14
    new-instance v12, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v17, "NLG_PRECONDITION"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 502
    .local v12, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v17, "SamsungMusic"

    const-string v18, "Permission"

    const-string v19, "notallowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    goto/16 :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 841
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 842
    .local v0, "handled":Z
    new-instance v1, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 843
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 844
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 629
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->release()V

    .line 631
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->release()V

    .line 632
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unregisterBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 633
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f120030

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 634
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEventManager:Lcom/samsung/android/app/music/milk/event/EventManager;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEventManager:Lcom/samsung/android/app/music/milk/event/EventManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/event/EventManager;->release()V

    .line 639
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_APP_UPDATE_BADGE:Z

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateBadgeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 643
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_USA_GATE_ENABLED:Z

    if-eqz v0, :cond_2

    .line 644
    const-string v0, "EXIT_MUSICPLAYER"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/regional/usa/GateMessageUtils;->printMessage(Ljava/lang/String;)V

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 648
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSamsungAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 650
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onDestroy()V

    .line 651
    return-void
.end method

.method public onEmptyViewAnimated()V
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->onEmptyViewAnimated()V

    .line 1063
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1240
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1241
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 1126
    const-string v2, "MusicMainActivity-"

    const-string/jumbo v3, "onKeyDown"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    if-ne p1, v4, :cond_1

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 1133
    .local v0, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_1

    .line 1134
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 1135
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLoadedPostrollAd:Z

    if-nez v2, :cond_1

    .line 1137
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLoadedPostrollAd:Z

    .line 1138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->POSTROLL:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->launch(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 1145
    .end local v0    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 1187
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 1188
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 295
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 298
    const-string v2, "args_launch_track_activity"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    const-string v2, "extra_list_type"

    .line 300
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedLibraryListType(I)I

    move-result v1

    .line 301
    .local v1, "listType":I
    const-string v2, "Ui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onNewIntent() with LAUNCH_TRACK_ACTIVITY - listType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    if-ne v1, v5, :cond_0

    .line 304
    const v1, 0x10004

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->launchTrackActivityByIntent(Landroid/content/Intent;)V

    .line 311
    :goto_0
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_1

    const-string v2, "launchMusicPlayerWithRadio"

    .line 312
    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    iput v7, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    .line 315
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iget v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabViewSelected(I)V

    .line 316
    iget v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setTab(IZ)V

    .line 319
    :cond_1
    if-eq v1, v5, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->makeFragmentTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 322
    .local v0, "fg":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    if-eqz v2, :cond_2

    .line 323
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-interface {v0, v7, v1}, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;->selectTab(II)V

    .line 327
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setIntent(Landroid/content/Intent;)V

    .line 328
    return-void

    .line 308
    .end local v1    # "listType":I
    :cond_3
    const-string v2, "extra_list_type"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "listType":I
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 856
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 857
    .local v0, "handled":Z
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 601
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPause()V

    .line 604
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 606
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "main_current_tab"

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 607
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 608
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->unsubscribe(Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;)V

    .line 610
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 612
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 615
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public onPermissionResult([Ljava/lang/String;[I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 949
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPermissionResult([Ljava/lang/String;[I)V

    .line 950
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isAllGranted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 951
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreExecutionTaskManager:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    if-eqz v1, :cond_0

    .line 952
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreExecutionTaskManager:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->start()V

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/VersionManager;->check(Landroid/content/Context;)V

    .line 957
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->makeFragmentTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 958
    .local v0, "fg":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    if-eqz v1, :cond_1

    .line 959
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;->refresh()V

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabManager:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->refresh()V

    .line 963
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    if-eqz v1, :cond_2

    .line 964
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v1}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->updateLocalTrackCount()V

    .line 966
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->reloadQueue()V

    .line 967
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 969
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_3

    .line 970
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/gcm/GcmController;->startGcmService(Landroid/content/Context;)V

    .line 975
    :cond_3
    :goto_0
    return-void

    .line 973
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->finish()V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 8
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1193
    const-string v3, "MusicMainActivity-"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPlaybackStateChanged : state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.music.KEY_RADIO_PLAY_LIMIT_OVER"

    invoke-static {v3, v4, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1197
    .local v0, "isLimitOver":Z
    if-eqz v0, :cond_1

    .line 1198
    const-string v3, "MusicMainActivity-"

    const-string v4, "isLimitOver = true"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    if-ne v3, v7, :cond_0

    .line 1204
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isClickedToggleButton()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 1205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->setClickedToggleButton(Z)V

    .line 1208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isVideoAdOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1209
    const-string v3, "MusicMainActivity-"

    const-string/jumbo v4, "onPlaybackStateChanged : isVideoAdOn is false"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, "stationId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1212
    const-string v3, "MusicMainActivity-"

    const-string/jumbo v4, "onPlaybackStateChanged : stationId is not null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    .line 1215
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v1, :cond_0

    .line 1216
    const-string v3, "MusicMainActivity-"

    const-string/jumbo v4, "onPlaybackStateChanged : station is not null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->isVideoAdYn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->shouldPlayVideoAd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1220
    const-string v3, "MusicMainActivity-"

    const-string/jumbo v4, "onPlaybackStateChanged : video ad play"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->launch(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 1223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->setVideoAdOn(Z)V

    .line 1229
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v2    # "stationId":Ljava/lang/String;
    :cond_0
    return-void

    .line 1200
    :cond_1
    const-string v3, "MusicMainActivity-"

    const-string v4, "isLimitOver = false"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPopupAdImage()V
    .locals 2

    .prologue
    .line 1157
    const-string v0, "MusicMainActivity-"

    const-string/jumbo v1, "onPopupAdImage"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->launch(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 1159
    return-void
.end method

.method public onPopupClosed(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    .prologue
    .line 1164
    const-string v0, "MusicMainActivity-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPopupClosed : type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$9;->$SwitchMap$com$samsung$android$app$music$milk$advertise$AdPopupDlgFactory$ADPOPUP_TYPE:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1182
    :goto_0
    return-void

    .line 1168
    :pswitch_0
    const-string v0, "MusicMainActivity-"

    const-string/jumbo v1, "onPopupClosed : type = INTERSTITIAL"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->clearStickyAction()V

    goto :goto_0

    .line 1172
    :pswitch_1
    const-string v0, "MusicMainActivity-"

    const-string/jumbo v1, "onPopupClosed : type = POSTROLL"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->clearStickyAction()V

    .line 1174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->finish()V

    goto :goto_0

    .line 1177
    :pswitch_2
    const-string v0, "MusicMainActivity-"

    const-string/jumbo v1, "onPopupClosed : type = VIDEO"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->clearStickyAction()V

    .line 1179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->togglePlay()V

    goto :goto_0

    .line 1166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 546
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mDialogReceiver:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->setPause()V

    .line 549
    :cond_0
    return-void
.end method

.method public onPreExecutionTaskCompleted()V
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreExecutionTaskManager:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreExecutionTaskManager:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->performNextTask()V

    .line 1099
    :cond_0
    return-void
.end method

.method public onPreExecutionTaskFinished()V
    .locals 2

    .prologue
    .line 1252
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mDialogReceiver:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->setResume()V

    .line 1255
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->isResumedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->getInstance()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->handleDeepLink(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mEventManager:Lcom/samsung/android/app/music/milk/event/EventManager;

    iget v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/event/EventManager;->onTabSelected(I)V

    .line 1260
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 849
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 850
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 851
    return v0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1234
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    .line 1235
    return-void
.end method

.method public onQuickConnectSelected()Z
    .locals 3

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->makeFragmentTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 915
    .local v0, "fg":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/QuickConnectable;

    if-eqz v1, :cond_0

    .line 916
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/QuickConnectable;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/QuickConnectable;->performQuickConnect()Z

    move-result v1

    .line 918
    :goto_0
    return v1

    .restart local v0    # "fg":Landroid/app/Fragment;
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onQuickConnectSelected()Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 574
    const-string v0, "VerificationLog"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onResume()V

    .line 578
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_2

    .line 579
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribe(Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;)V

    .line 581
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 583
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 586
    :cond_0
    const-string v0, "MusicMainActivity-"

    const-string/jumbo v1, "onResume - in SUPPORT_MILK"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isDormancyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    const-string v0, "MusicMainActivity-"

    const-string/jumbo v1, "onResume - isDormancyMode is true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->setDormancyMode(Z)Z

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->launch(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreExecutionTaskManager:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->isAllTasksFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->getInstance()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->handleDeepLink(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 597
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 333
    const-string v0, "key_selected_tab"

    iget v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSelectedTabPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 655
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 656
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getStoreData(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 659
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 660
    .local v0, "user":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 661
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 662
    :cond_1
    const-string v1, "Ui"

    const-string v2, "doWork CheckSubscription"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->checkSubscriptionUser()I

    .line 668
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MusicMainActivity - onServiceConnected"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsInitializer;->sendInitReqeust(Landroid/content/Context;Ljava/lang/String;)V

    .line 671
    .end local v0    # "user":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_2
    return-void

    .line 665
    .restart local v0    # "user":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_3
    const-string v1, "Ui"

    const-string v2, "doWork do not call checkSubscription"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 553
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onStart()V

    .line 561
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 562
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_1

    .line 563
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 564
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v3, "my_music_mode"

    .line 565
    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 566
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->invalidateOptionsMenu()V

    .line 567
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setMainTabMode(I)V

    .line 570
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 619
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onStop()V

    .line 621
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 622
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode"

    .line 623
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 625
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1115
    const-string v0, "MusicMainActivity-"

    const-string/jumbo v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isDormancyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    const-string v0, "MusicMainActivity-"

    const-string/jumbo v1, "onUserInteraction - isDormancyMode is true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->setDormancyMode(Z)Z

    .line 1119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->launch(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 1121
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onUserInteraction()V

    .line 1122
    return-void
.end method

.method public onVerifyPreconditionFinished()V
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreconditionNlgImpl:Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreconditionNlgImpl:Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

    invoke-interface {v0}, Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;->onVerifyPreconditionFinished()V

    .line 1318
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 833
    if-eqz p1, :cond_0

    .line 834
    const-string v0, "VerificationLog"

    const-string v1, "Executed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onWindowFocusChanged(Z)V

    .line 837
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 1090
    :cond_0
    return-void
.end method

.method public selectTab(II)V
    .locals 1
    .param p1, "tabGroupId"    # I
    .param p2, "tabId"    # I

    .prologue
    .line 904
    if-nez p1, :cond_1

    .line 905
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabViewSelected(I)V

    .line 906
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->setTab(IZ)V

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabManager:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->selectTab(II)V

    goto :goto_0
.end method

.method public sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V
    .locals 1
    .param p1, "nlg"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreconditionNlgImpl:Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mPreconditionNlgImpl:Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;->sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 1311
    :cond_0
    return-void
.end method

.method public setAppUpdateStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateChecker:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mAppUpdateChecker:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->setAppUpdateStatus(I)V

    .line 1275
    :cond_0
    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 939
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLaunchSearchEnabled:Z

    .line 940
    return-void
.end method

.method public setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 873
    return-void
.end method

.method public setTabEnabled(IZ)V
    .locals 1
    .param p1, "tabGroupId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 895
    if-nez p1, :cond_1

    .line 896
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setEnabled(Z)V

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mMyMusicTabManager:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->setTabEnabled(IZ)V

    goto :goto_0
.end method

.method public updateLocalTrackCount()V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->updateLocalTrackCount()V

    .line 868
    return-void
.end method
