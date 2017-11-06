.class public Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;
.super Ljava/lang/Object;
.source "AppUpdateTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mObservable:Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 14
    check-cast v0, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable;

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;->mObservable:Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable;

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;->mActivity:Landroid/app/Activity;

    .line 16
    return-void
.end method


# virtual methods
.method public performTask()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;->mObservable:Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable;->setAppUpdateStatus(I)V

    .line 21
    return-void
.end method
