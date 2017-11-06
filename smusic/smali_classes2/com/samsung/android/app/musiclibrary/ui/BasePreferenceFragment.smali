.class public abstract Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "BasePreferenceFragment.java"


# instance fields
.field private mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_BIXBY:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 59
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->destroy()V

    .line 35
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 36
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->disable()V

    .line 27
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 28
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->enable()V

    .line 20
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    .line 41
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->enable()V

    .line 47
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->setUserVisibleHint(Z)V

    .line 48
    return-void

    .line 43
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->disable()V

    goto :goto_0
.end method
