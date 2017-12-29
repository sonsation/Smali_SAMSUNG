.class abstract Lcom/android/settings/SaveChosenLockWorkerBase;
.super Landroid/app/Fragment;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SaveChosenLockWorkerBase$Listener;,
        Lcom/android/settings/SaveChosenLockWorkerBase$Task;
    }
.end annotation


# instance fields
.field private mBlocking:Z

.field protected mChallenge:J

.field protected mChallengeFace:J

.field protected mChallengeIris:J

.field private mFinished:Z

.field protected mHasChallenge:Z

.field private mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

.field private mResultData:Landroid/content/Intent;

.field protected mUserId:I

.field protected mUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mWasSecureBefore:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3
    .param p1, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mFinished:Z

    .line 102
    iput-object p1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    iget-boolean v1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object v2, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/android/settings/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SaveChosenLockWorkerBase;->setRetainInstance(Z)V

    .line 49
    return-void
.end method

.method protected prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V
    .locals 4
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "credentialRequired"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 67
    iput-object p1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 68
    iput p6, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mUserId:I

    .line 70
    iput-boolean p3, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mHasChallenge:Z

    .line 71
    iput-wide p4, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mChallenge:J

    .line 73
    iget-object v1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 82
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mFinished:Z

    .line 83
    iput-object v3, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 66
    return-void
.end method

.method protected abstract saveAndVerifyInBackground()Landroid/content/Intent;
.end method

.method public setBlocking(Z)V
    .locals 0
    .param p1, "blocking"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mBlocking:Z

    .line 108
    return-void
.end method

.method public setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    if-ne v0, p1, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    .line 60
    iget-boolean v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    iget-boolean v1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object v2, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/android/settings/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    .line 54
    :cond_1
    return-void
.end method

.method protected start()V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mBlocking:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;->saveAndVerifyInBackground()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    .line 86
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/android/settings/SaveChosenLockWorkerBase$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/settings/SaveChosenLockWorkerBase;Lcom/android/settings/SaveChosenLockWorkerBase$Task;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/SaveChosenLockWorkerBase$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
