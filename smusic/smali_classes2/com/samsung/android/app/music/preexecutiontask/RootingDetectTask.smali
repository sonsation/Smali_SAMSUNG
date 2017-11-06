.class public Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;
.super Ljava/lang/Object;
.source "RootingDetectTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;


# instance fields
.field private final mCompleteListener:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 27
    check-cast v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->mCompleteListener:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    .line 28
    check-cast p1, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-interface {p1}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 29
    return-void
.end method


# virtual methods
.method public performTask()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 33
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getMilkAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "token":Ljava/lang/String;
    const-string v1, "RootingDetectTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performTask is called. token -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0389

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/AppNameUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 38
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask$1;-><init>(Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->mCompleteListener:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    goto :goto_0
.end method
