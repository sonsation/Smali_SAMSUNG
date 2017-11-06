.class Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$1;
.super Ljava/lang/Object;
.source "MilkUIWorker.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canExecutable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->access$000(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
