.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;
.super Ljava/lang/Object;
.source "MilkWorkerBanSong.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 62
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9131"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$200(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-static {v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$002(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$300(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$400(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;ZLcom/samsung/android/app/music/common/model/Track;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$500(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$600(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;Z)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    .line 78
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->access$700(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0279

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_2
    const-string v0, "MilkWorkerBanSong"

    const-string v1, "onClick : mCallback is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
