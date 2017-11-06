.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;
.super Ljava/lang/Object;
.source "MilkWorkerAddToMyStation.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$SpotlightAddedDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->launchSpotlightPopup(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

.field final synthetic val$callback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

.field final synthetic val$forcePlay:Z

.field final synthetic val$station:Lcom/samsung/android/app/music/common/model/Station;

.field final synthetic val$trackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->val$callback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->val$station:Lcom/samsung/android/app/music/common/model/Station;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->val$trackId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->val$forcePlay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogPositiveClick(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;)V
    .locals 5
    .param p1, "dialog"    # Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->val$callback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->val$station:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->val$trackId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;->val$forcePlay:Z

    .line 458
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addFavoriteStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I

    .line 459
    const-string v0, "MilkWorkerAddToMyStation"

    const-string v1, "launchSpotlightPopup : Start SpotLite addFavoriteStation !!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_0
    return-void

    .line 462
    :cond_0
    const-string v0, "MilkWorkerAddToMyStation"

    const-string v1, "launchSpotlightPopup : MilkService is not Initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
