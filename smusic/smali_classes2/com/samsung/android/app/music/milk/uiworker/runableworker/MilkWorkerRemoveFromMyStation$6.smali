.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;
.super Ljava/lang/Object;
.source "MilkWorkerRemoveFromMyStation.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->removeForceAllStation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$300(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;Z)V

    .line 311
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$400(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;Z)V

    .line 317
    const/16 v0, 0xd5

    if-ne p2, v0, :cond_0

    .line 318
    if-nez p3, :cond_1

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$500(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0385

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$600(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0, v2, v3, v3, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$700(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    const-string v0, "MilkWorkerRemoveFromMyStation"

    const-string v1, "onApiHandled : Remove Favorite Station is fail"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$800(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a03f7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    const-string v1, "MilkWorkerRemoveFromMyStation"

    const-string v2, "ServerErrorType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p5, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v5, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$900(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
