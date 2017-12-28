.class public Lcom/android/server/policy/InfinityPhoneWindowManager;
.super Ljava/lang/Object;
.source "InfinityPhoneWindowManager.java"


# static fields
.field private static final KEY_ACTION_APP_SWITCH:I = 0x0

.field private static final KEY_ACTION_NOTHING:I = 0x14


# instance fields
.field private mAppSwitchLongPressed:Z

.field private mBixbyConsumed:Z

.field private mBixbyDoubleTapPending:Z

.field private final mBixbyDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHomeConsumed:Z

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mIsBackLongPressed:Z

.field private mIsDefalutPressed:Z

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mIsBackLongPressed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mIsDefalutPressed:Z

    new-instance v0, Lcom/android/server/policy/InfinityPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/InfinityPhoneWindowManager$1;-><init>(Lcom/android/server/policy/InfinityPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/InfinityPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/InfinityPhoneWindowManager$2;-><init>(Lcom/android/server/policy/InfinityPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/android/server/policy/InfinityPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$1(Lcom/android/server/policy/InfinityPhoneWindowManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeDoubleTapPending:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/server/policy/InfinityPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/server/policy/InfinityPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$4(Lcom/android/server/policy/InfinityPhoneWindowManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyDoubleTapPending:Z

    return-void
.end method

.method static synthetic access$5(Lcom/android/server/policy/InfinityPhoneWindowManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mIsDefalutPressed:Z

    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)J
    .locals 12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v7, v2, 0x80

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    :goto_1
    const/4 v7, 0x3

    if-ne v3, v7, :cond_e

    if-nez v1, :cond_7

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->db_home_action:I

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handlecancelPreloadRecentApps()V

    :cond_0
    iget-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeConsumed:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeConsumed:Z

    const-wide/16 v8, -0x1

    :goto_2
    return-wide v8

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const-wide/16 v8, -0x1

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_5

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->db_home_action:I

    const/16 v8, 0x14

    if-eq v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeDoubleTapPending:Z

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v8, -0x1

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    const-wide/16 v8, -0x1

    goto :goto_2

    :cond_7
    if-nez v5, :cond_b

    iget-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeDoubleTapPending:Z

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeDoublePress()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeConsumed:Z

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->ls_db_home_action:I

    const/16 v8, 0x14

    if-ne v7, v8, :cond_a

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->db_home_action:I

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->lp_home_action:I

    if-nez v7, :cond_a

    :cond_9
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handlepreloadRecentApps()V

    :cond_a
    :goto_3
    const-wide/16 v8, -0x1

    goto/16 :goto_2

    :cond_b
    if-eqz v4, :cond_a

    iget-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeConsumed:Z

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->lp_home_action:I

    const/16 v8, 0x14

    if-eq v7, v8, :cond_d

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->lp_home_action:I

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handlecancelPreloadRecentApps()V

    :cond_c
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeLongPress()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHomeConsumed:Z

    goto :goto_3

    :cond_d
    const-wide/16 v8, 0x0

    goto/16 :goto_2

    :cond_e
    const/16 v7, 0x43a

    if-ne v3, v7, :cond_1d

    if-nez v1, :cond_15

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->db_bixby_action:I

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handlecancelPreloadRecentApps()V

    :cond_f
    iget-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyConsumed:Z

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyConsumed:Z

    const-wide/16 v8, -0x1

    goto/16 :goto_2

    :cond_10
    if-eqz v0, :cond_11

    const-wide/16 v8, -0x1

    goto/16 :goto_2

    :cond_11
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->db_bixby_action:I

    const/16 v8, 0x14

    if-eq v7, v8, :cond_13

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyDoubleTapPending:Z

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mIsDefalutPressed:Z

    if-eqz v7, :cond_12

    const-wide/16 v8, 0x0

    goto/16 :goto_2

    :cond_12
    const-wide/16 v8, -0x1

    goto/16 :goto_2

    :cond_13
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->sp_bixby_action:I

    const/16 v8, 0x14

    if-eq v7, v8, :cond_14

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handleBixbyShortPress()V

    const-wide/16 v8, -0x1

    goto/16 :goto_2

    :cond_14
    const-wide/16 v8, 0x0

    goto/16 :goto_2

    :cond_15
    if-nez v4, :cond_16

    iget-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyDoubleTapPending:Z

    if-nez v7, :cond_16

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->sp_bixby_action:I

    const/16 v8, 0x14

    if-ne v7, v8, :cond_16

    const-wide/16 v8, 0x0

    goto/16 :goto_2

    :cond_16
    if-nez v5, :cond_1a

    iget-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyDoubleTapPending:Z

    if-eqz v7, :cond_18

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyDoubleTapPending:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mIsDefalutPressed:Z

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handleBixbyDoublePress()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyConsumed:Z

    :cond_17
    :goto_4
    const-wide/16 v8, -0x1

    goto/16 :goto_2

    :cond_18
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->db_bixby_action:I

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->lp_bixby_action:I

    if-nez v7, :cond_17

    :cond_19
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handlepreloadRecentApps()V

    goto :goto_4

    :cond_1a
    if-eqz v4, :cond_17

    iget-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyConsumed:Z

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->lp_bixby_action:I

    const/16 v8, 0x14

    if-eq v7, v8, :cond_1c

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->lp_bixby_action:I

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handlecancelPreloadRecentApps()V

    :cond_1b
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handleBixbyLongPress()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mBixbyConsumed:Z

    goto :goto_4

    :cond_1c
    const-wide/16 v8, 0x0

    goto/16 :goto_2

    :cond_1d
    const/4 v7, 0x4

    if-ne v3, v7, :cond_22

    if-nez v1, :cond_20

    iget-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mIsBackLongPressed:Z

    if-eqz v7, :cond_1f

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mIsBackLongPressed:Z

    :cond_1e
    :goto_5
    const-wide/16 v8, -0x1

    goto/16 :goto_2

    :cond_1f
    const-wide/16 v8, 0x0

    goto/16 :goto_2

    :cond_20
    if-nez v5, :cond_21

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mIsBackLongPressed:Z

    const-wide/16 v8, 0x0

    goto/16 :goto_2

    :cond_21
    if-eqz v4, :cond_1e

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mIsBackLongPressed:Z

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handleBackLongPress()V

    goto :goto_5

    :cond_22
    const/16 v7, 0xbb

    if-ne v3, v7, :cond_2b

    if-eqz v1, :cond_28

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->sp_recent_action:I

    if-eqz v7, :cond_23

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->lp_recent_action:I

    if-nez v7, :cond_24

    :cond_23
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handlepreloadRecentApps()V

    :cond_24
    if-nez v5, :cond_26

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mAppSwitchLongPressed:Z

    :cond_25
    :goto_6
    const-wide/16 v8, -0x1

    goto/16 :goto_2

    :cond_26
    if-eqz v4, :cond_25

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->lp_recent_action:I

    const/16 v8, 0x14

    if-eq v7, v8, :cond_25

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->lp_recent_action:I

    if-eqz v7, :cond_27

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handlecancelPreloadRecentApps()V

    :cond_27
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handleRecentLongPress()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_6

    :cond_28
    iget-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mAppSwitchLongPressed:Z

    if-eqz v7, :cond_29

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_6

    :cond_29
    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->sp_recent_action:I

    if-eqz v7, :cond_2a

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handlecancelPreloadRecentApps()V

    :cond_2a
    if-nez v0, :cond_25

    iget-object v7, p0, Lcom/android/server/policy/InfinityPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->handleRecentShortPress()V

    goto :goto_6

    :cond_2b
    const-wide/16 v8, 0x0

    goto/16 :goto_2
.end method
