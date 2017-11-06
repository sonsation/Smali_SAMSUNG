.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;
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

.field final synthetic val$personalStationIDs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->val$personalStationIDs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 345
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
    const v4, 0x7f0a03f7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 350
    const/16 v0, 0xcd

    if-ne p2, v0, :cond_2

    .line 351
    if-nez p3, :cond_1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->val$personalStationIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->removePersonalStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$1000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;Z)V

    .line 355
    const-string v0, "MilkWorkerRemoveFromMyStation"

    const-string v1, "onApiHandled : Remove Favorite Station is fail"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$1100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

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

    invoke-static {v0, v5, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$1200(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_2
    const/16 v0, 0xd5

    if-ne p2, v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$1300(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;Z)V

    .line 364
    if-nez p3, :cond_3

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$1400(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0385

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$600(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V

    .line 368
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0, v2, v3, v3, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$1500(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_3
    const-string v0, "MilkWorkerRemoveFromMyStation"

    const-string v1, "onApiHandled : Remove Personal Station is fail"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$1600(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

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

    invoke-static {v0, v5, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$1700(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
