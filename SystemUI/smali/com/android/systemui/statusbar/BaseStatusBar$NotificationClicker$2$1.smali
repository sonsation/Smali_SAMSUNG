.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;
.super Ljava/lang/Thread;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;ZZLandroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z
    .param p4, "val$intent"    # Landroid/app/PendingIntent;
    .param p5, "val$notificationKey"    # Ljava/lang/String;
    .param p6, "val$parentToCancelFinal"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2874
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private sendGsimLog(Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    .line 2959
    const-string/jumbo v0, ""

    .line 2960
    .local v0, "extra":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2961
    const-string/jumbo v2, "com.android.systemui.statusbar.policy.quicksetting"

    .line 2962
    const-string/jumbo v3, "QP08"

    .line 2963
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    .line 2960
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2964
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2965
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2966
    const-string/jumbo v2, "com.android.systemui.statusbar.policy.notification.lockscreen"

    .line 2967
    const-string/jumbo v3, "NO04"

    .line 2968
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    .line 2965
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2969
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotiDoubleTapped:Z

    if-eqz v1, :cond_3

    .line 2970
    const-string/jumbo v0, "DT"

    .line 2981
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2982
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "AL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2985
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2986
    const-string/jumbo v2, "com.android.systemui.statusbar.policy.notification.lockscreen"

    .line 2987
    const-string/jumbo v3, "NO03"

    .line 2985
    invoke-static {v1, v2, v3, v0, v5}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2958
    :cond_2
    return-void

    .line 2972
    :cond_3
    const-string/jumbo v0, "TS"

    goto :goto_0

    .line 2974
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isShadeLockedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2975
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsLockShadeByExpandNoti:Z

    if-eqz v1, :cond_5

    .line 2976
    const-string/jumbo v0, "ET"

    goto :goto_0

    .line 2978
    :cond_5
    const-string/jumbo v0, "QT"

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2878
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$keyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_1

    .line 2887
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2890
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    .line 2894
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2895
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 2897
    .local v11, "userId":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2898
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    .line 2897
    if-eqz v0, :cond_2

    .line 2899
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 2900
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    .line 2899
    invoke-virtual {v0, v11, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2903
    return-void

    .line 2879
    .end local v11    # "userId":I
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2888
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 2908
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    .line 2909
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getActivityOptions()Landroid/os/Bundle;

    move-result-object v7

    .line 2908
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2910
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_3

    .line 2911
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->sendGsimLog(Landroid/app/PendingIntent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2920
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2921
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 2922
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$keyguardShowing:Z

    if-eqz v0, :cond_7

    .line 2923
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_6

    move v0, v12

    .line 2922
    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 2929
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->stripDex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2933
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_5

    .line 2935
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 2876
    :cond_5
    return-void

    .line 2913
    :catch_1
    move-exception v8

    .line 2916
    .local v8, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending contentIntent failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2923
    .end local v8    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v12

    .line 2922
    goto :goto_3

    .line 2930
    :catch_2
    move-exception v10

    .local v10, "ex":Landroid/os/RemoteException;
    goto :goto_4
.end method
