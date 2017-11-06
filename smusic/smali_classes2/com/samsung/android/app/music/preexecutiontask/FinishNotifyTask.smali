.class final Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;
.super Ljava/lang/Object;
.source "FinishNotifyTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;


# instance fields
.field private final mCompleteListener:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

.field private final mFinishListener:Lcom/samsung/android/app/music/common/activity/OnPreExecutionTaskFinishListener;

.field private final mPreconditionNlg:Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 19
    check-cast v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->mCompleteListener:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    move-object v0, p1

    .line 20
    check-cast v0, Lcom/samsung/android/app/music/common/activity/OnPreExecutionTaskFinishListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->mFinishListener:Lcom/samsung/android/app/music/common/activity/OnPreExecutionTaskFinishListener;

    .line 21
    check-cast p1, Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->mPreconditionNlg:Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

    .line 22
    return-void
.end method


# virtual methods
.method public performTask()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->mCompleteListener:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->mFinishListener:Lcom/samsung/android/app/music/common/activity/OnPreExecutionTaskFinishListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/OnPreExecutionTaskFinishListener;->onPreExecutionTaskFinished()V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->mPreconditionNlg:Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

    invoke-interface {v0}, Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;->onVerifyPreconditionFinished()V

    .line 29
    return-void
.end method
