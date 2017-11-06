.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2;
.super Ljava/lang/Object;
.source "MilkWorkerAddToMyStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->launchMaximunMyStationReachedPopup(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 416
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->access$200(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;)Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    invoke-static {v1, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->access$300(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;Z)V

    .line 418
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;-><init>()V

    .line 420
    .local v0, "dialog":Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;
    new-instance v1, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2$1;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->setOnDialogClickListener(Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;)V

    .line 431
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->access$400(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;)Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mFragMngr:Landroid/app/FragmentManager;

    const-string v3, "MaximumMyStationsReachedDialog"

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 433
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    const-string v2, "MaximumMyStationsReachedDialog"

    invoke-static {v1, v5, v2, v4, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->access$500(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .end local v0    # "dialog":Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;
    :cond_0
    return-void
.end method
