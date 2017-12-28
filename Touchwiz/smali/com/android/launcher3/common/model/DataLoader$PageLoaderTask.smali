.class public abstract Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
.super Landroid/os/AsyncTask;
.source "DataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PageLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected mStopped:Z

.field final synthetic this$0:Lcom/android/launcher3/common/model/DataLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/model/DataLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DataLoader;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->this$0:Lcom/android/launcher3/common/model/DataLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method setStopped(Z)V
    .locals 3
    .param p1, "isStopped"    # Z

    .prologue
    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    const-string v0, "DataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStopped isStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-boolean p1, p0, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->mStopped:Z

    .line 214
    monitor-exit p0

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
