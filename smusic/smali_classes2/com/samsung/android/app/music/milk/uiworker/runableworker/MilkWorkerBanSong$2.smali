.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$2;
.super Ljava/lang/Object;
.source "MilkWorkerBanSong.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Landroid/view/View;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Station;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$2;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$2;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$002(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$2;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$400(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;ZLcom/samsung/android/app/music/common/model/Track;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$2;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$800(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)V

    .line 93
    return-void
.end method
