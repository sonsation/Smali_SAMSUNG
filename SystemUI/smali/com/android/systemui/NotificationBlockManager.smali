.class public Lcom/android/systemui/NotificationBlockManager;
.super Ljava/lang/Object;
.source "NotificationBlockManager.java"


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHideAppNotificationList:[Ljava/lang/String;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private mPackageBlockableArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    sput-object v0, Lcom/android/systemui/NotificationBlockManager;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/NotificationBlockManager;->mContext:Landroid/content/Context;

    .line 60
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/NotificationBlockManager;->mNotificationManager:Landroid/app/INotificationManager;

    .line 57
    return-void
.end method

.method private static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    sget-object v1, Lcom/android/systemui/NotificationBlockManager;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    .line 163
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method


# virtual methods
.method public canBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 4
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "isNotificationConfigAcitivity":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 150
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/NotificationBlockManager;->updateBlockable(Ljava/lang/String;Z)Z

    move-result v3

    return v3
.end method

.method public doBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 157
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/NotificationBlockManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/INotificationManager;->setImportance(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateBlockable(Ljava/lang/String;Z)Z
    .locals 18
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    if-eqz p2, :cond_2

    .line 67
    :cond_0
    const/4 v7, 0x0

    .line 68
    .local v7, "isNotificationConfigAcitivity":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 70
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 71
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    .line 73
    .local v2, "canBlock":Z
    const/16 v14, 0x80

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 74
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v14, :cond_1

    .line 75
    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v15, "com.samsung.android.notification.blockable"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 80
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "canBlock":Z
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v14, 0x1

    return v14

    .line 65
    .end local v7    # "isNotificationConfigAcitivity":Z
    .end local v9    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    return v14

    .line 77
    .restart local v2    # "canBlock":Z
    .restart local v7    # "isNotificationConfigAcitivity":Z
    .restart local v9    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v2    # "canBlock":Z
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v14, :cond_4

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "launcherapps"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/LauncherApps;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 90
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 91
    new-instance v15, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    .line 90
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    .line 93
    .local v8, "launcherActivityInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-static {v9}, Lcom/android/systemui/NotificationBlockManager;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v12

    .line 94
    .local v12, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 95
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 96
    const/4 v7, 0x1

    goto :goto_1

    .line 101
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_7

    if-eqz v7, :cond_9

    .line 108
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    const-string/jumbo v15, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "hideAppNotificationList":Ljava/lang/String;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 123
    :cond_8
    const/4 v13, 0x0

    .line 126
    .local v13, "systemApp":Z
    const/16 v14, 0x40

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 127
    .local v6, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v9, v6}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 131
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "systemApp":Z
    :goto_2
    if-eqz v13, :cond_c

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v14, 0x0

    return v14

    .line 102
    .end local v4    # "hideAppNotificationList":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v14, 0x0

    return v14

    .line 110
    .restart local v4    # "hideAppNotificationList":Ljava/lang/String;
    :cond_a
    const-string/jumbo v14, ","

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mHideAppNotificationList:[Ljava/lang/String;

    .line 111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mHideAppNotificationList:[Ljava/lang/String;

    if-eqz v14, :cond_8

    .line 112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/NotificationBlockManager;->mHideAppNotificationList:[Ljava/lang/String;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    aget-object v5, v15, v14

    .line 113
    .local v5, "hidePackageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/4 v14, 0x0

    return v14

    .line 112
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 135
    .end local v5    # "hidePackageName":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v14, 0x1

    return v14

    .line 128
    .restart local v13    # "systemApp":Z
    :catch_1
    move-exception v3

    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method public updateBlockableCaches()V
    .locals 3

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/NotificationBlockManager;->updateBlockable(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 140
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    return-void
.end method
