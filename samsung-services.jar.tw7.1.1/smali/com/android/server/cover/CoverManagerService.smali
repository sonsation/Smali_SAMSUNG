.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/android/server/SystemService;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerService$1;
    }
.end annotation


# instance fields
.field private final mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

.field private final mLocalService:Lcom/android/server/cover/CoverManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/CoverManagerServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcom/android/server/cover/CoverManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$1;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLocalService:Lcom/android/server/cover/CoverManagerInternal;

    .line 42
    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    .line 40
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 53
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->systemRunning()V

    .line 52
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "cover"

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    const-class v0, Lcom/android/server/cover/CoverManagerInternal;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mLocalService:Lcom/android/server/cover/CoverManagerInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverManagerServiceImpl;->onUserStopped(I)V

    .line 65
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 70
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverManagerServiceImpl;->onUserUnlocked(I)V

    .line 60
    return-void
.end method
