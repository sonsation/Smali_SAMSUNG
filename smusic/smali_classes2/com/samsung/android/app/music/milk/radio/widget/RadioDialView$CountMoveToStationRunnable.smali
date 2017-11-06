.class Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;
.super Ljava/lang/Object;
.source "RadioDialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountMoveToStationRunnable"
.end annotation


# instance fields
.field private mCount:I

.field private mStationID:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/String;)V
    .locals 1
    .param p2, "stationId"    # Ljava/lang/String;

    .prologue
    .line 2702
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2703
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->mCount:I

    .line 2704
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->mStationID:Ljava/lang/String;

    .line 2705
    return-void
.end method

.method private isRadioPlaying()Z
    .locals 6

    .prologue
    .line 2709
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    .line 2710
    .local v2, "status":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    if-eqz v2, :cond_2

    .line 2711
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    .line 2712
    .local v0, "radioStatus":I
    const-string v3, "RadioDialView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CountMoveToStationRunnable [isRadioPlaying] >>> RadioPlayState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 2718
    .end local v0    # "radioStatus":I
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 2714
    .end local v1    # "ret":Z
    .restart local v0    # "radioStatus":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2716
    .end local v0    # "radioStatus":I
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->isPlaying()Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2723
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v0

    .line 2724
    .local v0, "stationId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->isRadioPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2725
    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->mCount:I

    if-lez v1, :cond_0

    .line 2726
    const-string v1, "RadioDialView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CountMoveToStationRunnable [run] >>> Station empty But it is trying to play station .... wait ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->mCount:I

    .line 2730
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$3300(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2731
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1, v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$3402(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2745
    :goto_0
    return-void

    .line 2734
    :cond_0
    const-string v1, "RadioDialView"

    const-string v2, "CountMoveToStationRunnable [run] >>> Station empty Wait Count is finished. Just Go to first Genre"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->mStationID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v4, -0x1

    .line 2737
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$3500(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;I)I

    move-result v3

    .line 2736
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$3600(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/String;I)V

    .line 2744
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1, v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$3402(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    .line 2740
    :cond_1
    const-string v1, "RadioDialView"

    const-string v2, "CountMoveToStationRunnable >>> Station is not empty Move To Station"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$3700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/String;)V

    goto :goto_1
.end method
