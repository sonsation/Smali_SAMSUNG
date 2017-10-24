.class final Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 2770
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-void
.end method

.method private shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v3, 0x0

    .line 3006
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->flags:I

    .line 3007
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 3008
    return v3

    .line 3010
    :cond_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 3011
    return v3

    .line 3013
    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2772
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    .line 2773
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NotificationClicker called on a view that is not a notification row."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    return-void

    .line 2777
    :cond_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_1

    .line 2778
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldBlockStatusBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2779
    return-void

    :cond_1
    move-object v6, p1

    .line 2788
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2789
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 2790
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    if-nez v7, :cond_2

    .line 2791
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NotificationClicker called on an unclickable notification,"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    return-void

    .line 2796
    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSettingsRow()Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSettingsRow()Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2797
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateTranslateNotification(F)V

    .line 2798
    return-void

    .line 2801
    :cond_3
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_4

    .line 2802
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2803
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNotiClickedOnShadeLocked(Z)V

    .line 2806
    :cond_4
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    .line 2807
    .local v11, "notification":Landroid/app/Notification;
    iget-object v0, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    .line 2808
    iget-object v4, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2810
    .local v4, "intent":Landroid/app/PendingIntent;
    :goto_0
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 2813
    .local v5, "notificationKey":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setJustClicked(Z)V

    .line 2814
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 2821
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v8

    .line 2822
    .local v8, "keyguardShowing":Z
    invoke-virtual {v4}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2823
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2824
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v12, v12, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 2823
    invoke-static {v0, v1, v12}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v9

    .line 2827
    :goto_1
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2828
    .local v3, "userId":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KnoxStateMonitor;->knoxContainerInLockMode(I)Z

    move-result v2

    .line 2830
    .local v2, "isLockedForKnoxContainer":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "DelFlag"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v0, v1, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 2831
    .local v10, "deleteSecureFolderFlag":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_7

    const/16 v0, 0x96

    if-lt v3, v0, :cond_7

    const/16 v0, 0xa0

    if-gt v3, v0, :cond_7

    .line 2833
    return-void

    .line 2809
    .end local v2    # "isLockedForKnoxContainer":Z
    .end local v3    # "userId":I
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v5    # "notificationKey":Ljava/lang/String;
    .end local v8    # "keyguardShowing":Z
    .end local v10    # "deleteSecureFolderFlag":I
    :cond_5
    iget-object v4, v11, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .restart local v4    # "intent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 2822
    .restart local v5    # "notificationKey":Ljava/lang/String;
    .restart local v8    # "keyguardShowing":Z
    :cond_6
    const/4 v9, 0x0

    .local v9, "afterKeyguardGone":Z
    goto :goto_1

    .line 2836
    .end local v9    # "afterKeyguardGone":Z
    .restart local v2    # "isLockedForKnoxContainer":Z
    .restart local v3    # "userId":I
    .restart local v10    # "deleteSecureFolderFlag":I
    :cond_7
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationIconsOnlyOn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2837
    if-eqz v6, :cond_8

    .line 2838
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mClickedNotificationPreview:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2842
    :cond_8
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;ZILandroid/app/PendingIntent;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;ZZ)V

    .line 3001
    const/4 v1, 0x0

    .line 3002
    const/4 v13, 0x1

    .line 2842
    invoke-virtual {v12, v0, v1, v9, v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZ)V

    .line 2771
    return-void
.end method

.method public register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x0

    .line 3017
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3018
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 3019
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3016
    :goto_0
    return-void

    .line 3021
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
