.class Lcom/android/server/InputMethodManagerService$KeyboardDetect;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardDetect"
.end annotation


# instance fields
.field final BACKGROUND:I

.field final FOREGROUND:I

.field final INACTIVE:I

.field private enKeyOpt:Z

.field private keyboardParams:[I

.field private keyboardState:I

.field private mPerf:Landroid/util/BoostFramework;

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    const/4 v1, 0x0

    .line 702
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Landroid/util/BoostFramework;

    .line 704
    iput v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardState:I

    .line 705
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->enKeyOpt:Z

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardParams:[I

    .line 708
    iput v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->INACTIVE:I

    .line 709
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->FOREGROUND:I

    .line 710
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->BACKGROUND:I

    .line 702
    return-void
.end method


# virtual methods
.method declared-synchronized getKeyboardState()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 761
    :try_start_0
    iget v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized keyboardPerflockAcquire()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Landroid/util/BoostFramework;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 729
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardParams:[I

    if-nez v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardParams(Landroid/content/Context;)V

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardParams:[I

    if-eqz v1, :cond_1

    .line 732
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Landroid/util/BoostFramework;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardParams:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 726
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Exception caught at perflock acquire"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 737
    return-void

    .line 740
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Perflock object null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 741
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized keyboardPerflockRelease()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->enKeyOpt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 748
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 745
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Exception caught at perflock release"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 752
    return-void

    .line 755
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Perflock object null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 756
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized setKeyboardParams(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    monitor-exit p0

    .line 723
    return-void
.end method

.method declared-synchronized setKeyboardState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    monitor-enter p0

    .line 765
    :try_start_0
    iput p1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 764
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
