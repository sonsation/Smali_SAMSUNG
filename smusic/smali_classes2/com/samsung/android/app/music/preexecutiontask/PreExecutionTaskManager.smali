.class public Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "PreExecutionTaskManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;,
        Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;,
        Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;
    }
.end annotation


# static fields
.field private static final KEY_INDEX:Ljava/lang/String; = "key_index"

.field private static final TAG:Ljava/lang/String; = "PreExecutionTaskManager"

.field private static final TASK_INTERVAL:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mIndex:I

.field private mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

.field private final mTaskHandler:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

.field private final mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mActivity:Landroid/app/Activity;

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/WindowFocusObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/WindowFocusObservable;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;-><init>(Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTaskHandler:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    .line 42
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/preexecutiontask/MobileDataUsageNoticeTask;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/preexecutiontask/MobileDataUsageNoticeTask;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/preexecutiontask/LegalInformationTask;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/preexecutiontask/LegalInformationTask;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;)Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;
    .param p1, "x1"    # Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    return-object p1
.end method


# virtual methods
.method public isAllTasksFinished()Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    if-eqz p2, :cond_0

    .line 62
    const-string v0, "key_index"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    .line 64
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "PreExecutionTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform pending task() from onResume() | task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTaskHandler:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTaskHandler:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    .line 74
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const-string v0, "key_index"

    iget v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x0

    .line 105
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "PreExecutionTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform pending task() from onWindowFocusChanged() | task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTaskHandler:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTaskHandler:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    .line 112
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public performNextTask()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    iget v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    .line 86
    iget v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    iget-object v3, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 87
    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    .line 88
    .local v1, "task":Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;
    const-string v2, "PreExecutionTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performNextTask() | index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | task count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTaskHandler:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    invoke-virtual {v2, v5, v5, v5, v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTaskHandler:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "task":Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v1    # "task":Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mPendingTask:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 77
    iget v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mTasks:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    .line 79
    .local v0, "task":Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;
    const-string v1, "PreExecutionTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start() | task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;->performTask()V

    .line 82
    .end local v0    # "task":Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;
    :cond_0
    return-void
.end method
