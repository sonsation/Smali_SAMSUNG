.class public Lcom/android/launcher3/home/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    }
.end annotation


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final APP_SHORTCUT_TYPE_KEY:Ljava/lang/String; = "isAppShortcut"

.field private static final DBG:Z = false

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final ICON_KEY:Ljava/lang/String; = "icon"

.field private static final ICON_RESOURCE_NAME_KEY:Ljava/lang/String; = "iconResource"

.field private static final ICON_RESOURCE_PACKAGE_NAME_KEY:Ljava/lang/String; = "iconResourcePackage"

.field private static final LAUNCH_INTENT_KEY:Ljava/lang/String; = "intent.launch"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x55

.field private static final TAG:Ljava/lang/String; = "InstallShortcutReceiver"

.field private static final THEME_STORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.themestore"

.field private static final USER_HANDLE_KEY:Ljava/lang/String; = "userHandle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Class;

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/InstallShortcutReceiver;->updateContactShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/ComponentName;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/InstallShortcutReceiver;->hasActivityForComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/launcher3/home/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/InstallShortcutReceiver;->uninstallShortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static convertKnoxLiveIconIntent(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 5
    .param p0, "launchIntent"    # Landroid/content/Intent;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 507
    invoke-static {p0}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    const-string v2, "userid"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 509
    .local v1, "userId":I
    const-string v2, "liveicon_cmpname"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "pkgName":Ljava/lang/String;
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    const-string v2, "userid"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const-string v2, "liveicon_cmpname"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string v2, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertKnoxLiveIconIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v2, 0x1

    .line 517
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "userId":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static convertToLauncherActivityIfPossible(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 12
    .param p0, "original"    # Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    const/4 v5, 0x0

    .line 764
    invoke-virtual {p0}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLuncherActivity()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 802
    .end local p0    # "original":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .local v1, "isDualImApp":Z
    .local v6, "userSerialNumber":J
    :cond_0
    :goto_0
    return-object p0

    .line 770
    .end local v1    # "isDualImApp":Z
    .end local v6    # "userSerialNumber":J
    .restart local p0    # "original":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 771
    invoke-virtual {v8}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v1, 0x1

    .line 772
    .restart local v1    # "isDualImApp":Z
    :goto_1
    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    .line 773
    .restart local v6    # "userSerialNumber":J
    const-string v8, "com.samsung.android.da.daagent"

    invoke-virtual {p0}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    if-nez v1, :cond_2

    const-wide/16 v8, 0x64

    cmp-long v8, v6, v8

    if-gez v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 774
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 775
    :cond_2
    const-string v5, "InstallShortcutReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This is other user\'s app shortcut "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isDualImApp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v5, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    .line 777
    .local v2, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    iget-object v5, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v5, v8}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v3

    .line 778
    .local v3, "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-eqz v3, :cond_4

    .line 779
    new-instance v5, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->requestTime:J

    invoke-direct {v5, v3, v8, v10, v11}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;J)V

    move-object p0, v5

    goto/16 :goto_0

    .end local v1    # "isDualImApp":Z
    .end local v2    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .end local v3    # "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v6    # "userSerialNumber":J
    :cond_3
    move v1, v5

    .line 771
    goto :goto_1

    .line 781
    .restart local v1    # "isDualImApp":Z
    .restart local v2    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .restart local v3    # "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .restart local v6    # "userSerialNumber":J
    :cond_4
    const-string v5, "InstallShortcutReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This is other user\'s app shortcut. But launcherInfo is null!! isDualImApp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 786
    .end local v2    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .end local v3    # "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_5
    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 792
    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 793
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v4, v8, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 795
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 800
    iget-object v5, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 801
    invoke-static {v0, v5}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->fromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v3

    .line 802
    .restart local v3    # "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    new-instance v5, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->requestTime:J

    invoke-direct {v5, v3, v8, v10, v11}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;J)V

    move-object p0, v5

    goto/16 :goto_0
.end method

.method static decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 22
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 705
    :try_start_0
    new-instance v18, Lorg/json/JSONTokener;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 706
    .local v14, "object":Lorg/json/JSONObject;
    const-string v18, "intent.launch"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    .line 708
    .local v13, "launcherIntent":Landroid/content/Intent;
    const-string v18, "time"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 710
    .local v16, "requestTime":J
    const-string v18, "isAppShortcut"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 712
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v18

    const-string v19, "userHandle"

    .line 713
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v15

    .line 714
    .local v15, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-nez v15, :cond_0

    .line 715
    const/16 v18, 0x0

    .line 753
    .end local v13    # "launcherIntent":Landroid/content/Intent;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v16    # "requestTime":J
    :goto_0
    return-object v18

    .line 718
    .restart local v13    # "launcherIntent":Landroid/content/Intent;
    .restart local v14    # "object":Lorg/json/JSONObject;
    .restart local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v16    # "requestTime":J
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v18

    .line 719
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v15}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v12

    .line 720
    .local v12, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-nez v12, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    new-instance v18, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 748
    .end local v12    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v13    # "launcherIntent":Landroid/content/Intent;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v16    # "requestTime":J
    :catch_0
    move-exception v6

    .line 749
    .local v6, "e":Lorg/json/JSONException;
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception reading shortcut to add: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    const/16 v18, 0x0

    goto :goto_0

    .line 723
    .restart local v13    # "launcherIntent":Landroid/content/Intent;
    .restart local v14    # "object":Lorg/json/JSONObject;
    .restart local v16    # "requestTime":J
    :cond_2
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 724
    .local v5, "data":Landroid/content/Intent;
    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 725
    const-string v18, "android.intent.extra.shortcut.NAME"

    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string v18, "icon"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 728
    .local v8, "iconBase64":Ljava/lang/String;
    const-string v18, "iconResource"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 729
    .local v10, "iconResourceName":Ljava/lang/String;
    const-string v18, "iconResourcePackage"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 730
    .local v11, "iconResourcePackageName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v18

    const-string v19, "userHandle"

    .line 731
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v15

    .line 732
    .restart local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_3

    if-eqz v15, :cond_3

    .line 733
    const-string v18, "android.intent.extra.USER"

    invoke-virtual {v15}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 735
    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 736
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v8, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 737
    .local v7, "iconArray":[B
    const/16 v18, 0x0

    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 738
    .local v4, "b":Landroid/graphics/Bitmap;
    const-string v18, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 747
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v7    # "iconArray":[B
    :cond_4
    :goto_2
    new-instance v18, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 750
    .end local v5    # "data":Landroid/content/Intent;
    .end local v8    # "iconBase64":Ljava/lang/String;
    .end local v10    # "iconResourceName":Ljava/lang/String;
    .end local v11    # "iconResourcePackageName":Ljava/lang/String;
    .end local v13    # "launcherIntent":Landroid/content/Intent;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v16    # "requestTime":J
    :catch_1
    move-exception v6

    .line 751
    .local v6, "e":Ljava/net/URISyntaxException;
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception reading shortcut to add: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 739
    .end local v6    # "e":Ljava/net/URISyntaxException;
    .restart local v5    # "data":Landroid/content/Intent;
    .restart local v8    # "iconBase64":Ljava/lang/String;
    .restart local v10    # "iconResourceName":Ljava/lang/String;
    .restart local v11    # "iconResourcePackageName":Ljava/lang/String;
    .restart local v13    # "launcherIntent":Landroid/content/Intent;
    .restart local v14    # "object":Lorg/json/JSONObject;
    .restart local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v16    # "requestTime":J
    :cond_5
    if-eqz v10, :cond_4

    :try_start_2
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_4

    .line 740
    new-instance v9, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v9}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 742
    .local v9, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    iput-object v10, v9, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 743
    iput-object v11, v9, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 744
    const-string v18, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method static ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 494
    if-nez p2, :cond_0

    .line 496
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 497
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 498
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move-object v3, p2

    .line 503
    :goto_0
    return-object v3

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    goto :goto_0
.end method

.method static fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 480
    new-instance v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    const-wide/16 v2, -0x1

    invoke-direct {v0, p1, p0, v2, v3}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;J)V

    .line 481
    .local v0, "info":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    iget-object v1, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 483
    :cond_0
    const/4 v1, 0x0

    .line 486
    :goto_0
    return-object v1

    .line 485
    :cond_1
    invoke-static {v0}, Lcom/android/launcher3/home/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->getShortcutInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private hasActivityForComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    .line 97
    .local v2, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 100
    .local v1, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const/4 v3, 0x1

    .line 104
    .end local v1    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 809
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 810
    .local v0, "extra":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

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

.method private shortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 381
    invoke-static {p1, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestListByType(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/ExternalRequestInfo;

    .local v0, "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    move-object v1, v0

    .line 383
    check-cast v1, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .line 384
    .local v1, "pendingInfo":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v6, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    .end local v0    # "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    .end local v1    # "pendingInfo":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method static shortcutExistsInDb(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z
    .locals 32
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalIntent"    # Landroid/content/Intent;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "checkShortcutOnly"    # Z

    .prologue
    .line 280
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 282
    .local v20, "intent":Landroid/content/Intent;
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v28

    .line 283
    .local v28, "serialNumber":J
    const-string v5, "profile"

    const-wide/16 v30, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v30

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 284
    .local v16, "extraProfile":J
    const-wide/16 v30, -0x1

    cmp-long v5, v16, v30

    if-nez v5, :cond_0

    .line 285
    const-string v5, "profile"

    move-object/from16 v0, v20

    move-wide/from16 v1, v28

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 288
    :cond_0
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 291
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 292
    .local v25, "packageName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 293
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    .line 294
    .local v21, "intentWithPkg":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    .line 304
    .end local v25    # "packageName":Ljava/lang/String;
    .local v22, "intentWithoutPkg":Ljava/lang/String;
    :goto_0
    const/16 v26, 0x0

    .line 305
    .local v26, "result":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 307
    .local v4, "cr":Landroid/content/ContentResolver;
    const/16 v18, 0x0

    .line 309
    .local v18, "folderIds":Ljava/lang/String;
    const-string v7, "itemType=2 AND (container=-100 OR container=-101)"

    .line 313
    .local v7, "selection":Ljava/lang/String;
    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v27, "_id"

    aput-object v27, v6, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 316
    .local v15, "folderIdCursor":Landroid/database/Cursor;
    if-eqz v15, :cond_4

    .line 317
    new-instance v24, Lcom/android/launcher3/util/StringJoiner;

    const-string v5, ","

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    .line 318
    .local v24, "joiner":Lcom/android/launcher3/util/StringJoiner;
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 319
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-object/from16 v0, v24

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/StringJoiner;->append(J)V

    goto :goto_1

    .line 296
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v15    # "folderIdCursor":Landroid/database/Cursor;
    .end local v18    # "folderIds":Ljava/lang/String;
    .end local v21    # "intentWithPkg":Ljava/lang/String;
    .end local v22    # "intentWithoutPkg":Ljava/lang/String;
    .end local v24    # "joiner":Lcom/android/launcher3/util/StringJoiner;
    .end local v26    # "result":Z
    .restart local v25    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    .line 297
    .restart local v21    # "intentWithPkg":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 300
    .end local v21    # "intentWithPkg":Ljava/lang/String;
    .end local v22    # "intentWithoutPkg":Ljava/lang/String;
    .end local v25    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    .line 301
    .restart local v21    # "intentWithPkg":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 321
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v15    # "folderIdCursor":Landroid/database/Cursor;
    .restart local v18    # "folderIds":Ljava/lang/String;
    .restart local v24    # "joiner":Lcom/android/launcher3/util/StringJoiner;
    .restart local v26    # "result":Z
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 322
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v18

    .line 326
    .end local v24    # "joiner":Lcom/android/launcher3/util/StringJoiner;
    :cond_4
    const-string v7, "profileId=? AND (itemType=1"

    .line 329
    if-nez p3, :cond_5

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR itemType=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 333
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AND (container=-100 OR container=-101"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 336
    if-eqz v18, :cond_c

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR container in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "))"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 342
    :goto_2
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 343
    .local v8, "selectionArg":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 345
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v27, "intent"

    aput-object v27, v6, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 347
    if-eqz v10, :cond_a

    .line 348
    const-string v5, "intent"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 349
    .local v19, "idxIntent":I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 350
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 351
    .local v23, "intent_string":Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .line 352
    .local v11, "dbIntent":Landroid/content/Intent;
    const-string v5, "profile"

    const-wide/16 v30, -0x1

    move-wide/from16 v0, v30

    invoke-virtual {v11, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 353
    .local v12, "dbProfile":J
    const-wide/16 v30, -0x1

    cmp-long v5, v12, v30

    if-nez v5, :cond_7

    .line 354
    const-string v5, "profile"

    move-wide/from16 v0, v28

    invoke-virtual {v11, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 355
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    .line 358
    :cond_7
    invoke-static {v11}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v5

    if-nez v5, :cond_8

    .line 359
    const/high16 v5, 0x10200000

    invoke-virtual {v11, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 360
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    .line 363
    :cond_8
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    .line 364
    :cond_9
    const/16 v26, 0x1

    .line 372
    .end local v11    # "dbIntent":Landroid/content/Intent;
    .end local v12    # "dbProfile":J
    .end local v19    # "idxIntent":I
    .end local v23    # "intent_string":Ljava/lang/String;
    :cond_a
    if-eqz v10, :cond_b

    .line 373
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_b
    :goto_3
    return v26

    .line 339
    .end local v8    # "selectionArg":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 369
    .restart local v8    # "selectionArg":[Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 370
    .local v14, "e":Ljava/net/URISyntaxException;
    :try_start_1
    const-string v5, "InstallShortcutReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shortcutExistsInDb : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    if-eqz v10, :cond_b

    .line 373
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 372
    .end local v14    # "e":Ljava/net/URISyntaxException;
    :catchall_0
    move-exception v5

    if-eqz v10, :cond_d

    .line 373
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v5
.end method

.method private shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 413
    const/4 v15, 0x0

    .line 414
    .local v15, "result":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 415
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 416
    .local v11, "extras":Landroid/os/Bundle;
    if-eqz v11, :cond_1

    .line 417
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 418
    .local v13, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/launcher3/Utilities;->EXTRA_KEY_BLACK_LIST:[Ljava/lang/String;

    .line 419
    .local v9, "extraKeyBlackList":[Ljava/lang/String;
    if-eqz v9, :cond_1

    array-length v3, v9

    if-lez v3, :cond_1

    .line 420
    array-length v4, v9

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v12, v9, v3

    .line 421
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 422
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 420
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v9    # "extraKeyBlackList":[Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "component="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 428
    .local v18, "str":[Ljava/lang/String;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    .line 429
    :cond_2
    const/4 v3, 0x0

    .line 447
    :goto_1
    return v3

    .line 432
    :cond_3
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 433
    .local v14, "profileIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v19

    .line 434
    .local v19, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v16

    .line 435
    .local v16, "serialNumber":J
    const-string v3, "profile"

    move-wide/from16 v0, v16

    invoke-virtual {v14, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 436
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "component="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 439
    .local v10, "extraStr":[Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "intent"

    aput-object v6, v4, v5

    const-string v5, "intent like ? or intent like ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "%component="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v18, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "%component="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v10, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 442
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 443
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    .line 444
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v3, v15

    .line 447
    goto :goto_1
.end method

.method private shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 451
    const/4 v10, 0x0

    .line 452
    .local v10, "result":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 453
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "component="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 455
    .local v9, "detectStr":[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v2, v9

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 456
    :cond_0
    const/4 v2, 0x0

    .line 476
    :goto_0
    return v2

    .line 459
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const-string v3, "\\;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 460
    .local v8, "componentName":[Ljava/lang/String;
    const-string v2, "\u00a0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 463
    :cond_2
    const-string v2, "\u00a0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 466
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 467
    .local v11, "trimTitle":Ljava/lang/String;
    const-string v2, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shortcutExistsOnHomeOnlyMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v2, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "intent"

    aput-object v5, v3, v4

    const-string v4, "(trim(title,\'\u00a0\')=? or trim(title)=?) and intent like ?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    const/4 v6, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%component="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 472
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 473
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v2, v10

    .line 476
    goto/16 :goto_0
.end method

.method private uninstallShortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 392
    invoke-static {p1, v5}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestListByType(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    .local v0, "externalRequestInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 395
    invoke-static {p1, v5, p2}, Lcom/android/launcher3/home/ExternalRequestQueue;->removeFromExternalRequestQueue(Landroid/content/Context;ILandroid/content/Intent;)Z

    move-result v3

    .line 409
    :cond_0
    :goto_0
    return v3

    .line 399
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/ExternalRequestInfo;

    .local v1, "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    move-object v2, v1

    .line 400
    check-cast v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    .line 402
    .local v2, "pendingInfo":Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v6, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 403
    invoke-static {p2}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 404
    invoke-static {p1, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->removeFromExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/home/ExternalRequestInfo;)V

    .line 406
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private updateContactShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "info"    # Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 815
    const-string v28, "SEC_CONTACT_SHORTCUT_RESTORED"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 817
    .local v20, "restored":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 818
    const/16 v28, 0x0

    .line 926
    :goto_0
    return v28

    .line 821
    :cond_0
    const-string v28, ","

    const/16 v29, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v25

    .line 822
    .local v25, "splits":[Ljava/lang/String;
    const-string v28, "InstallShortcutReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "updateContactShortcut, restored : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string v28, "RESTORED"

    const/16 v29, 0x0

    aget-object v29, v25, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 827
    const/16 v28, 0x1

    :try_start_0
    aget-object v28, v25, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 832
    .local v14, "restoreId":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 833
    .local v12, "lookupUri":Landroid/net/Uri;
    const-string v28, "com.android.contacts"

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 834
    const/16 v21, 0x0

    .line 835
    .local v21, "result":Z
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 836
    .local v27, "values":Landroid/content/ContentValues;
    const-string v28, "intent"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    sget-object v26, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 839
    .local v26, "uri":Landroid/net/Uri;
    const-string v23, "_id=? AND intent like ?"

    .line 841
    .local v23, "selection":Ljava/lang/String;
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v28, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v24, v28

    const/16 v28, 0x1

    const-string v29, "%com.android.contacts%"

    aput-object v29, v24, v28

    .line 843
    .local v24, "selectionArgs":[Ljava/lang/String;
    const-string v28, "InstallShortcutReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "id : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " label : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 845
    .local v22, "rows":I
    if-lez v22, :cond_1

    .line 846
    const-string v28, "InstallShortcutReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "updateContactShortcut restoreId : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    .line 848
    .local v6, "app":Lcom/android/launcher3/LauncherAppState;
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 849
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v28

    int-to-long v0, v14

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher3/home/HomeLoader;->updateContactShortcutInfo(JLandroid/content/Intent;)V

    .line 850
    const/16 v21, 0x1

    .line 853
    .end local v6    # "app":Lcom/android/launcher3/LauncherAppState;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v28

    if-eqz v28, :cond_2

    if-nez v21, :cond_2

    .line 854
    const-string v28, "InstallShortcutReceiver"

    const-string v29, "updateContactShortcut check easy mode"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 856
    sget-object v26, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Standard;->CONTENT_URI:Landroid/net/Uri;

    .line 860
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 861
    if-lez v22, :cond_2

    .line 862
    const-string v28, "InstallShortcutReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "updateContactShortcut restoreId : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/16 v21, 0x1

    .line 867
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v28

    if-eqz v28, :cond_3

    if-nez v21, :cond_3

    .line 868
    const-string v28, "InstallShortcutReceiver"

    const-string v29, "updateContactShortcut check home only"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    .line 870
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 872
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v28, "home_only_mode"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 873
    .local v11, "isHomeOnly":Z
    if-eqz v11, :cond_7

    .line 874
    sget-object v26, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    .line 879
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 880
    if-lez v22, :cond_3

    .line 881
    const-string v28, "InstallShortcutReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "updateContactShortcut restoreId : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/16 v21, 0x1

    .line 887
    .end local v11    # "isHomeOnly":Z
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    .line 886
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 888
    .restart local v13    # "prefs":Landroid/content/SharedPreferences;
    const-string v28, "contact_shortcut_ids"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    .line 889
    .local v7, "contactShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v28

    if-lez v28, :cond_4

    .line 890
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 892
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 893
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 894
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v28, "smartswitch_restore_result"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 895
    .local v18, "restore_result":I
    const-string v28, "smartswitch_restore_error_code"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 896
    .local v16, "restore_errCode":I
    const-string v28, "smartswich_save_file_length"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 897
    .local v17, "restore_file_length":I
    const-string v28, "smartswitch_restore_source"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 898
    .local v19, "restore_source":Ljava/lang/String;
    const-string v28, "InstallShortcutReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "All contact shortcuts have been restored. send restore complete broadcast "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v28, "contact_shortcut_ids"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 900
    const-string v28, "smartswitch_restore_result"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 901
    const-string v28, "smartswitch_restore_error_code"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 902
    const-string v28, "smartswich_save_file_length"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 903
    const-string v28, "smartswitch_restore_source"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 904
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 905
    new-instance v15, Landroid/content/Intent;

    const-string v28, "com.sec.android.intent.action.RESPONSE_RESTORE_HOMELAYOUT"

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    .local v15, "restoreResult":Landroid/content/Intent;
    const-string v28, "RESULT"

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    const-string v28, "ERR_CODE"

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    const-string v28, "REQ_SIZE"

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 909
    const-string v28, "SOURCE"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 917
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "restoreResult":Landroid/content/Intent;
    .end local v16    # "restore_errCode":I
    .end local v17    # "restore_file_length":I
    .end local v18    # "restore_result":I
    .end local v19    # "restore_source":Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v21, :cond_5

    .line 918
    const-string v28, "InstallShortcutReceiver"

    const-string v29, "This contacts shortcut info is not match with DB"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v7    # "contactShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    .end local v21    # "result":Z
    .end local v22    # "rows":I
    .end local v23    # "selection":Ljava/lang/String;
    .end local v24    # "selectionArgs":[Ljava/lang/String;
    .end local v26    # "uri":Landroid/net/Uri;
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_5
    :goto_4
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 828
    .end local v12    # "lookupUri":Landroid/net/Uri;
    .end local v14    # "restoreId":I
    :catch_0
    move-exception v8

    .line 829
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 858
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "lookupUri":Landroid/net/Uri;
    .restart local v14    # "restoreId":I
    .restart local v21    # "result":Z
    .restart local v22    # "rows":I
    .restart local v23    # "selection":Ljava/lang/String;
    .restart local v24    # "selectionArgs":[Ljava/lang/String;
    .restart local v26    # "uri":Landroid/net/Uri;
    .restart local v27    # "values":Landroid/content/ContentValues;
    :cond_6
    sget-object v26, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Easy;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_1

    .line 876
    .restart local v11    # "isHomeOnly":Z
    .restart local v13    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    sget-object v26, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_2

    .line 912
    .end local v11    # "isHomeOnly":Z
    .restart local v7    # "contactShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const-string v28, "InstallShortcutReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "remain contact shortcut that will restored : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    const-string v29, "contact_shortcut_ids"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 921
    .end local v7    # "contactShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    .end local v21    # "result":Z
    .end local v22    # "rows":I
    .end local v23    # "selection":Ljava/lang/String;
    .end local v24    # "selectionArgs":[Ljava/lang/String;
    .end local v26    # "uri":Landroid/net/Uri;
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_9
    const-string v28, "InstallShortcutReceiver"

    const-string v29, "updateContactShortcut failed, not have AUTHORITY"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 926
    .end local v12    # "lookupUri":Landroid/net/Uri;
    .end local v14    # "restoreId":I
    :cond_a
    const/16 v28, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "InstallShortcutReceiver"

    const-string v2, "Not support install shortcut on DeX mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 120
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    new-instance v1, Lcom/android/launcher3/home/InstallShortcutReceiver$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/launcher3/home/InstallShortcutReceiver$1;-><init>(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
