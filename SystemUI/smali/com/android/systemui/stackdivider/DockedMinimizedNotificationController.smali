.class Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;
.super Ljava/lang/Object;
.source "DockedMinimizedNotificationController.java"


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mDockedStackDismissPendingIntent:Landroid/app/PendingIntent;

.field private final mLaunchDockModePendingIntent:Landroid/app/PendingIntent;

.field private final mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private final mPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mRegisteredComponent:Landroid/content/ComponentName;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x8000000

    const/4 v4, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    .line 48
    iput-object v6, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredComponent:Landroid/content/ComponentName;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    .line 53
    new-instance v2, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPm:Landroid/content/pm/PackageManager;

    .line 55
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mConfiguration:Landroid/content/res/Configuration;

    .line 58
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.multiwindow.action.DISMISS_MINIMIZED_DOCKED_STACK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {p1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mDockedStackDismissPendingIntent:Landroid/app/PendingIntent;

    .line 60
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.multiwindow.action.LAUNCH_DOCK_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {p1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mLaunchDockModePendingIntent:Landroid/app/PendingIntent;

    .line 63
    new-instance v1, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;-><init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)V

    .line 83
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.samsung.android.multiwindow.action.DISMISS_MINIMIZED_DOCKED_STACK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v2, "com.samsung.android.multiwindow.action.LAUNCH_DOCK_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v2, v1, v0, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method private registerDockMinimizedNotification(Landroid/content/ComponentName;)V
    .locals 19
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    .line 103
    .local v12, "context":Landroid/content/Context;
    const-string/jumbo v10, ""

    .line 104
    .local v10, "appName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 106
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    .line 107
    .local v16, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 113
    .end local v16    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f020329

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v15

    .line 114
    .local v15, "icon":Landroid/graphics/drawable/Icon;
    const v2, 0x7f0b000c

    invoke-virtual {v12, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 116
    new-instance v11, Landroid/app/Notification$Builder;

    invoke-direct {v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v11, "builder":Landroid/app/Notification$Builder;
    const v2, 0x7f02032a

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 119
    const/4 v3, 0x1

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 120
    const/4 v3, 0x1

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 121
    const-string/jumbo v3, "docked_minimized_notification_group"

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 123
    const v3, 0x7f0b000c

    invoke-virtual {v12, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 124
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const v4, 0x7f0f0008

    invoke-virtual {v12, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 125
    const v3, 0x7f0f000a

    invoke-virtual {v12, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mLaunchDockModePendingIntent:Landroid/app/PendingIntent;

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 127
    const/4 v3, -0x1

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 128
    const/4 v3, 0x2

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 130
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v17

    .line 131
    .local v17, "remoteViews":Landroid/widget/RemoteViews;
    const v2, 0x7f0f0007

    invoke-virtual {v12, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1020437

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mDockedStackDismissPendingIntent:Landroid/app/PendingIntent;

    const v3, 0x1020044

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 133
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 135
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 138
    .local v7, "notification":Landroid/app/Notification;
    const/4 v2, 0x1

    :try_start_1
    new-array v8, v2, [I

    .line 139
    .local v8, "outId":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "DividerNotification"

    .line 140
    const v6, 0x7f0f0007

    .line 141
    const/4 v9, -0x1

    .line 139
    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .end local v8    # "outId":[I
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    .line 147
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredComponent:Landroid/content/ComponentName;

    .line 149
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const v3, 0x7f0f0008

    invoke-virtual {v12, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 150
    .local v18, "t":Landroid/widget/Toast;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 151
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 100
    return-void

    .line 108
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v11    # "builder":Landroid/app/Notification$Builder;
    .end local v15    # "icon":Landroid/graphics/drawable/Icon;
    .end local v17    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v18    # "t":Landroid/widget/Toast;
    :catch_0
    move-exception v13

    .line 109
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 142
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "notification":Landroid/app/Notification;
    .restart local v11    # "builder":Landroid/app/Notification$Builder;
    .restart local v15    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v17    # "remoteViews":Landroid/widget/RemoteViews;
    :catch_1
    move-exception v14

    .line 143
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DividerNotification"

    .line 144
    const-string/jumbo v3, "Error showing notification for minimized docked app"

    .line 143
    invoke-static {v2, v3, v14}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private unregisterDockMinimizedNotification()V
    .locals 6

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "DividerNotification"

    .line 157
    const v4, 0x7f0f0007

    const/4 v5, -0x1

    .line 156
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredComponent:Landroid/content/ComponentName;

    .line 154
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DividerNotification"

    .line 160
    const-string/jumbo v2, "Error canceling notification for service"

    .line 159
    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 167
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 168
    .local v0, "changes":I
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    if-eqz v2, :cond_0

    .line 169
    and-int/lit16 v2, v0, 0x2004

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v1

    .line 171
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->unregisterDockMinimizedNotification()V

    .line 172
    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->registerDockMinimizedNotification(Landroid/content/ComponentName;)V

    .line 166
    :cond_0
    return-void

    .line 170
    :cond_1
    const/4 v1, 0x0

    .local v1, "cn":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public setDockedStackMinimized(ZZLandroid/content/ComponentName;)V
    .locals 3
    .param p1, "minimized"    # Z
    .param p2, "dockHasActivity"    # Z
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 90
    const-string/jumbo v0, "DividerNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockedStackMinimized, minimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz p1, :cond_1

    .line 92
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MINIMIZED_DOCK_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 93
    invoke-direct {p0, p3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->registerDockMinimizedNotification(Landroid/content/ComponentName;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->unregisterDockMinimizedNotification()V

    goto :goto_0
.end method
