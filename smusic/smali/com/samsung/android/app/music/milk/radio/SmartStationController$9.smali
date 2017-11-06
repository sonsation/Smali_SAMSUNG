.class Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;
.super Ljava/lang/Object;
.source "SmartStationController.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/SmartStationController;->createSmartStationInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 424
    const-string v1, "SmartStationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWorkerFinished : Request succeeded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$802(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Z)Z

    .line 428
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    const-string v1, "ResType"

    .line 430
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 429
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$202(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    const-string v1, "ResCode"

    .line 432
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 431
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$502(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    const-string v1, "SmartStationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWorkerFinished : Smart station id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$200(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v1, "SmartStationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWorkerFinished : Smart station url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .line 435
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$500(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$202(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    if-eqz p2, :cond_0

    .line 439
    const-string v1, "ResCode"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "code":Ljava/lang/String;
    const/16 v1, 0x1005

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$000(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$000(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->stopProgressAnimation()V

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$9;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->launchSeedWarningDialog()V

    goto :goto_0
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 452
    return-void
.end method
