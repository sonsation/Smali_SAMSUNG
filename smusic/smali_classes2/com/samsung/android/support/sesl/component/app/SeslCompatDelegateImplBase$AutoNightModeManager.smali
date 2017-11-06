.class final Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;
.super Ljava/lang/Object;
.source "SeslCompatDelegateImplBase.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

.field private mIsNight:Z

.field private mTwilightManager:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
    .param p2, "twilightManager"    # Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mTwilightManager:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;

    .line 1443
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mIsNight:Z

    .line 1444
    return-void
.end method


# virtual methods
.method final cleanup()V
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1490
    :cond_0
    return-void
.end method

.method final dispatchTimeChanged()V
    .locals 2

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mTwilightManager:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->isNight()Z

    move-result v0

    .line 1453
    .local v0, "isNight":Z
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mIsNight:Z

    if-eq v0, v1, :cond_0

    .line 1454
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mIsNight:Z

    .line 1455
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->applyDayNight()Z

    .line 1457
    :cond_0
    return-void
.end method

.method final getApplyableNightMode()I
    .locals 1

    .prologue
    .line 1448
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mIsNight:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final setup()V
    .locals 3

    .prologue
    .line 1460
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->cleanup()V

    .line 1465
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1466
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 1477
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    .line 1478
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1483
    return-void
.end method
