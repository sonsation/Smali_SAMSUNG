.class Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source "LauncherAppsCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/compat/LauncherAppsCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 126
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 134
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 138
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 130
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 142
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesSuspended([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 152
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 148
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnsuspended([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 156
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportDeepShortcut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v1, "shortcutInfoCompats":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 164
    .local v0, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    new-instance v3, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-direct {v3, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v0    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-interface {v2, p1, v1, v3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 168
    .end local v1    # "shortcutInfoCompats":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    :cond_1
    return-void
.end method
