.class Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;
.super Ljava/lang/Object;
.source "ModPlayTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->this$0:Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const-string v0, "ModPlayTask"

    const-string/jumbo v1, "onWorkerFinished : is called."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->STAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->this$0:Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->access$000(Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, "ModPlayTask"

    const-string/jumbo v1, "onWorkerFinished : Start full player"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->this$0:Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivityWithoutAnimation(Landroid/app/Activity;)V

    .line 50
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 55
    return-void
.end method
