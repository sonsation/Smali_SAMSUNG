.class public abstract Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "BaseServiceActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/MiniPlayerViewable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$PhonePermissionChecker;,
        Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;,
        Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$MusicExitReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELAY_USER_INTERACTION:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-Ui"

.field private static final TAG:Ljava/lang/String; = "Ui"


# instance fields
.field private mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter",
            "<",
            "Lcom/samsung/android/app/music/service/PlayerService;",
            ">;"
        }
    .end annotation
.end field

.field protected mDialogReceiver:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

.field private mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

.field private mMusicExitReceiver:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$MusicExitReceiver;

.field private mNavigationBarController:Lcom/samsung/android/app/music/common/view/NavigationBarController;

.field private final mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

.field private mPlayerChangeBufferingUpdater:Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;

.field private final mQuickConnectListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;

.field private mQuickConnectManager:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;

.field private final mScanListener:Landroid/content/BroadcastReceiver;

.field private final mSimpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

.field private mUserInteractionHandler:Landroid/os/Handler;

.field private mUserInteractionThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 122
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mSimpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    .line 253
    new-instance v0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$2;-><init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    .line 435
    new-instance v0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$3;-><init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 446
    new-instance v0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$4;-><init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mQuickConnectListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->finishMusicActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)Lcom/samsung/android/app/music/common/view/NavigationBarController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mNavigationBarController:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    return-object v0
.end method

.method private finishMusicActivity()V
    .locals 5

    .prologue
    .line 138
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 139
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->isInLockTaskMode(Landroid/app/ActivityManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->stopLockTask()V

    .line 145
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->finish()V

    .line 150
    return-void

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "SMUSIC-Ui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishMusicActivity moveTaskToBack is fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSupportOnline()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    return v0
.end method

.method private registerQuickConnectListener()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mQuickConnectManager:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mQuickConnectListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->registerListener(Landroid/app/Activity;Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;)V

    .line 474
    return-void
.end method

.method private registerScanListener()V
    .locals 2

    .prologue
    .line 416
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 417
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    return-void
.end method

.method public static setWindowStatusBarFlag(Landroid/app/Activity;)V
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 628
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    .line 629
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 630
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    sget v1, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 632
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 634
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private unregisterQuickConnectListener()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mQuickConnectManager:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->unregisterListener()V

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mQuickConnectManager:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->terminate()V

    .line 482
    return-void
.end method

.method private unregisterScanReceiver()V
    .locals 1

    .prologue
    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 671
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMusicExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 698
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 680
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    return-object v0
.end method

.method protected initMiniPlayer()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->initMiniPlayer(Landroid/view/View$OnClickListener;)V

    .line 352
    return-void
.end method

.method protected final initMiniPlayer(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "extraClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v2, 0x1

    .line 358
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    if-nez v1, :cond_0

    .line 359
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v0

    .line 360
    .local v0, "uiType":I
    new-instance v3, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;-><init>(Landroid/app/Activity;)V

    if-ne v0, v2, :cond_1

    move v1, v2

    .line 361
    :goto_0
    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->setSeekControllerEnabled(Z)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    move-result-object v1

    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    .line 362
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->setQueueButtonEnabled(Z)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    move-result-object v1

    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    .line 363
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->setCloseButtonEnabled(Z)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    move-result-object v1

    .line 364
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->setExtraClickListener(Landroid/view/View$OnClickListener;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->build()Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .line 365
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->setMiniPlayerEnabled(Z)V

    .line 366
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 371
    .end local v0    # "uiType":I
    :cond_0
    return-void

    .line 360
    .restart local v0    # "uiType":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 303
    packed-switch p1, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 323
    return-void

    .line 305
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 306
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 307
    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "list_items"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 308
    .local v2, "list":[J
    const-string v4, "is_folder"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 309
    .local v1, "isFolder":Z
    const-string/jumbo v4, "path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "path":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4, v1}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->startPrivateModeMoveOperation(Landroid/app/Activity;[JLjava/lang/String;ZZ)V

    goto :goto_0

    .line 314
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "isFolder":Z
    .end local v2    # "list":[J
    .end local v3    # "path":Ljava/lang/String;
    :pswitch_1
    if-ne p2, v4, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->finish()V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x32a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBottomBarMenuCreated()Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->onBottomBarMenuCreated()Z

    move-result v0

    .line 641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBottomBarMenuDestroyed()Z
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->onBottomBarMenuDestroyed()Z

    move-result v0

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mNavigationBarController:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mNavigationBarController:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->onConfigurationChanged()V

    .line 393
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mSimpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 175
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    const-class v1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    .line 177
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 178
    new-instance v0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 179
    new-instance v0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mPlayerChangeBufferingUpdater:Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mPlayerChangeBufferingUpdater:Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mPlayerChangeBufferingUpdater:Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->isSupportOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$PhonePermissionChecker;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$PhonePermissionChecker;-><init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 189
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UserInteraction"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mUserInteractionThread:Landroid/os/HandlerThread;

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mUserInteractionThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 192
    new-instance v0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mUserInteractionThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mUserInteractionHandler:Landroid/os/Handler;

    .line 207
    invoke-static {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->setWindowStatusBarFlag(Landroid/app/Activity;)V

    .line 208
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->setVolumeControlStream(I)V

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->registerScanListener()V

    .line 211
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mQuickConnectManager:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;

    .line 213
    new-instance v0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$MusicExitReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$MusicExitReceiver;-><init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMusicExitReceiver:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$MusicExitReceiver;

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMusicExitReceiver:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$MusicExitReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.app.music.core.state.EXIT_MUSIC"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isSupportNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    new-instance v0, Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/view/NavigationBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mNavigationBarController:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mSimpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mNavigationBarController:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 222
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mDialogReceiver:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mDialogReceiver:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mDialogReceiver:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMusicExitReceiver:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$MusicExitReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->unregisterScanReceiver()V

    .line 289
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mUserInteractionThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/compat/HandlerThreadCompat;->quit(Landroid/os/HandlerThread;)V

    .line 291
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mDialogReceiver:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 722
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 709
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->unregisterQuickConnectListener()V

    .line 274
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onPause()V

    .line 275
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 713
    return-void
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
    .line 718
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onQuickConnectSelected()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method protected onReceiveMediaState(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 490
    const-string v1, "Ui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScanListener intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->clearCache()V

    .line 497
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->registerQuickConnectListener()V

    .line 268
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onResume()V

    .line 269
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStart()V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mNavigationBarController:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;)V

    .line 249
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStop()V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mNavigationBarController:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 330
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 335
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->clearCache()V

    .line 337
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onTrimMemory(I)V

    .line 338
    return-void
.end method

.method public onUserInteraction()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 726
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onUserInteraction()V

    .line 727
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mUserInteractionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mUserInteractionHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 729
    return-void
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 657
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->setContentView(I)V

    .line 241
    return-void
.end method

.method public setFullPlayerEnterEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->setFullPlayerEnterEnabled(Z)V

    .line 385
    :cond_0
    return-void
.end method

.method public setMiniPlayerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mMiniPlayer:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->setMiniPlayerEnabled(Z)V

    .line 378
    :cond_0
    return-void
.end method

.method public final setNavigationBackground()V
    .locals 3

    .prologue
    .line 396
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 406
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    .line 405
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mNavigationBarController:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mNavigationBarController:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->initView()V

    goto :goto_0
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->mActivityMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 664
    :cond_0
    return-void
.end method
