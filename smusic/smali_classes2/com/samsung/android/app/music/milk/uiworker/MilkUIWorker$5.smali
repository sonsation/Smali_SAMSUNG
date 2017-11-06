.class Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$5;
.super Ljava/lang/Object;
.source "MilkUIWorker.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

.field final synthetic val$stationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$5;->this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$5;->val$stationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canExecutable()Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$5;->this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    .line 508
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->access$000(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$5;->val$stationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
