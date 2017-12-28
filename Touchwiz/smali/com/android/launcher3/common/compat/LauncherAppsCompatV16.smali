.class public Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;
.super Lcom/android/launcher3/common/compat/LauncherAppsCompat;
.source "LauncherAppsCompatV16.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/compat/LauncherAppsCompatV16$PackageMonitor;
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageMonitor:Lcom/android/launcher3/common/compat/LauncherAppsCompatV16$PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16$PackageMonitor;-><init>(Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;)V

    iput-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/android/launcher3/common/compat/LauncherAppsCompatV16$PackageMonitor;

    .line 56
    return-void
.end method

.method private registerForPackageIntents()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/android/launcher3/common/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/android/launcher3/common/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method private unregisterForPackageIntents()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/android/launcher3/common/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method


# virtual methods
.method public declared-synchronized addOnAppsChangedCallback(Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .prologue
    .line 100
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->registerForPackageIntents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v4, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 67
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatV16;

    iget-object v6, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatV16;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2
.end method

.method declared-synchronized getCallbacks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v2, 0x0

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 122
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->isEnabled()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 124
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeOnAppsChangedCallback(Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->unregisterForPackageIntents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 74
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatV16;

    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatV16;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 77
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    .line 93
    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const v2, 0x10808000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public startActivityForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 86
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 88
    return-void
.end method
