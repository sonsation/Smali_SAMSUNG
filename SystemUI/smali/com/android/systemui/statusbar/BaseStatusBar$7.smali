.class Lcom/android/systemui/statusbar/BaseStatusBar$7;
.super Landroid/content/BroadcastReceiver;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 693
    .local v7, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 695
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap2(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 696
    const-string/jumbo v1, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is in the house"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap3(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->userSwitched(I)V

    .line 701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIconsOnlyState()V

    .line 702
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlockManager:Lcom/android/systemui/NotificationBlockManager;

    if-eqz v1, :cond_0

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlockManager:Lcom/android/systemui/NotificationBlockManager;

    invoke-virtual {v1}, Lcom/android/systemui/NotificationBlockManager;->updateBlockableCaches()V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 706
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap2(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    goto :goto_0

    .line 707
    :cond_2
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 708
    const/4 v14, 0x0

    .line 710
    .local v14, "recentTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 710
    const/4 v4, 0x1

    .line 711
    const/4 v5, 0x5

    .line 710
    invoke-interface {v1, v4, v5, v3}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v14

    .line 717
    .end local v14    # "recentTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_1
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 718
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get2(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/UserManager;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v17

    .line 720
    .local v17, "user":Landroid/content/pm/UserInfo;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 724
    const v3, 0x7f0f04e7

    .line 725
    const/4 v4, 0x0

    .line 723
    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    .line 726
    .local v16, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    .line 727
    const v3, 0x102000b

    .line 726
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 729
    .local v15, "text":Landroid/widget/TextView;
    const v1, 0x7f0205d8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 728
    invoke-virtual {v15, v1, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 730
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 731
    const v3, 0x7f0d0313

    .line 730
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 732
    .local v12, "paddingPx":I
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 733
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 736
    .end local v12    # "paddingPx":I
    .end local v15    # "text":Landroid/widget/TextView;
    .end local v16    # "toast":Landroid/widget/Toast;
    .end local v17    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    const-string/jumbo v1, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 738
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 737
    check-cast v10, Landroid/app/NotificationManager;

    .line 739
    .local v10, "noMan":Landroid/app/NotificationManager;
    const v1, 0x7f13003b

    invoke-virtual {v10, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 741
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 742
    const-string/jumbo v3, "show_note_about_notification_hiding"

    const/4 v4, 0x0

    .line 741
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 743
    const-string/jumbo v1, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v3, 0x2

    .line 745
    const/4 v4, 0x1

    .line 744
    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 747
    const/high16 v4, 0x10000000

    .line 746
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 751
    .end local v10    # "noMan":Landroid/app/NotificationManager;
    :cond_5
    const-string/jumbo v1, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 752
    const-string/jumbo v1, "android.intent.extra.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    .line 753
    .local v2, "intentSender":Landroid/content/IntentSender;
    const-string/jumbo v1, "android.intent.extra.INDEX"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 754
    .local v11, "notificationKey":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 756
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 761
    :cond_6
    :goto_2
    if-eqz v11, :cond_7

    .line 763
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, v11}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 768
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onWorkChallengeUnlocked()V

    goto/16 :goto_0

    .line 769
    .end local v2    # "intentSender":Landroid/content/IntentSender;
    .end local v11    # "notificationKey":Ljava/lang/String;
    :cond_8
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 770
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 769
    if-eqz v1, :cond_0

    .line 771
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 772
    .local v13, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlockManager:Lcom/android/systemui/NotificationBlockManager;

    if-eqz v1, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlockManager:Lcom/android/systemui/NotificationBlockManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v13, v3}, Lcom/android/systemui/NotificationBlockManager;->updateBlockable(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 764
    .end local v13    # "pkgName":Ljava/lang/String;
    .restart local v2    # "intentSender":Landroid/content/IntentSender;
    .restart local v11    # "notificationKey":Ljava/lang/String;
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 757
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    goto :goto_2

    .line 714
    .end local v2    # "intentSender":Landroid/content/IntentSender;
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v11    # "notificationKey":Ljava/lang/String;
    .restart local v14    # "recentTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_2
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method
