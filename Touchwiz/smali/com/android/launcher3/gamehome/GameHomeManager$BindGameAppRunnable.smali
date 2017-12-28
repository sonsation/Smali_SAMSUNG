.class Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;
.super Ljava/lang/Object;
.source "GameHomeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/gamehome/GameHomeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindGameAppRunnable"
.end annotation


# instance fields
.field private mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/launcher3/gamehome/GameHomeManager;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/gamehome/GameHomeManager;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->this$0:Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/gamehome/GameHomeManager;Lcom/android/launcher3/gamehome/GameHomeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/gamehome/GameHomeManager;
    .param p2, "x1"    # Lcom/android/launcher3/gamehome/GameHomeManager$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    const/4 v0, 0x0

    .line 74
    .local v0, "runnable":Ljava/lang/Runnable;
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 78
    :cond_0
    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->this$0:Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-virtual {v1}, Lcom/android/launcher3/gamehome/GameHomeManager;->bindGameAppsVisibility()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->mRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
