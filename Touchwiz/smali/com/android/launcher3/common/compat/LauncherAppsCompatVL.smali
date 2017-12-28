.class public Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;
.super Lcom/android/launcher3/common/compat/LauncherAppsCompat;
.source "LauncherAppsCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;",
            "Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    .line 53
    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 54
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mUm:Landroid/os/UserManager;

    .line 55
    return-void
.end method


# virtual methods
.method public addOnAppsChangedCallback(Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .prologue
    .line 95
    new-instance v0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;-><init>(Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 96
    .local v0, "wrappedCallback":Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;
    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v1, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 5
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
    .line 59
    iget-object v3, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 60
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 59
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 61
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 69
    :cond_0
    return-object v0

    .line 64
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v0, "compatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 67
    .local v1, "info":Landroid/content/pm/LauncherActivityInfo;
    new-instance v4, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;

    invoke-direct {v4, v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public removeOnAppsChangedCallback(Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "wrappedCallback":Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;
    iget-object v3, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    monitor-enter v3

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;

    move-object v1, v0

    .line 107
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v1, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v1}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 111
    :cond_0
    return-void

    .line 107
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    .line 75
    .local v0, "activity":Landroid/content/pm/LauncherActivityInfo;
    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;

    invoke-direct {v1, v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    .line 82
    .end local v0    # "activity":Landroid/content/pm/LauncherActivityInfo;
    :cond_0
    return-object v1
.end method

.method public showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public startActivityForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 88
    return-void
.end method
