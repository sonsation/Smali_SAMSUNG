.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation$1;
.super Ljava/lang/Object;
.source "MilkWorkerAddTPOStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;

.field final synthetic val$finalStationID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation$1;->val$finalStationID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.radio.action.jump.indication"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "StationID"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation$1;->val$finalStationID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v2, "ForcePlay"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->access$000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 124
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;

    invoke-static {v2, v5, v4, v4, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->access$100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 117
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
