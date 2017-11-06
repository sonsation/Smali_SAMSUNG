.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$1;
.super Ljava/lang/Object;
.source "MilkWorkerRemoveFromMyStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onRemoveMyStationsDialogPositiveClick(Ljava/util/List;)V
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
    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "run : Personal Station is contained"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "MilkWorkerRemoveFromMyStation"

    const-string/jumbo v1, "run : Remove All Genre Station"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->access$200(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V

    goto :goto_0
.end method
