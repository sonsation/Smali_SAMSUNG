.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$4;
.super Ljava/lang/Object;
.source "DownloadQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 460
    const-string v0, "DownloadQueueFragment"

    const-string v1, "onFeatureChanged in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->access$600(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .line 463
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->access$700(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->removeFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V

    .line 464
    return-void
.end method
