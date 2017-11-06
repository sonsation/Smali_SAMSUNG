.class Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$6;
.super Ljava/lang/Object;
.source "MilkUIWorker.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

.field final synthetic val$station:Lcom/samsung/android/app/music/common/model/Station;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$6;->this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$6;->val$station:Lcom/samsung/android/app/music/common/model/Station;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canExecutable()Z
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$6;->this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    .line 551
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->access$000(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$6;->val$station:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

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
