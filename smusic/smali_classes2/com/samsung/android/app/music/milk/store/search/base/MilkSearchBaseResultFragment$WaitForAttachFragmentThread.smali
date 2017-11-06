.class Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;
.super Ljava/lang/Thread;
.source "MilkSearchBaseResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitForAttachFragmentThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handle"    # Landroid/os/Handler;

    .prologue
    .line 496
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>.WaitForAttachFragmentThread;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 497
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->mHandler:Landroid/os/Handler;

    .line 498
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>.WaitForAttachFragmentThread;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 501
    const/16 v0, 0xa

    .line 503
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 505
    :cond_0
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    add-int/lit8 v0, v0, -0x1

    .line 510
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$700(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WaitForInitializeTabThread : Count("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") Fragment isAdded ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .line 512
    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isAdded()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") Activity("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") View("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .line 513
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-static {v5, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    move v2, v4

    .line 512
    goto :goto_2

    :cond_2
    move v2, v4

    .line 513
    goto :goto_3

    .line 517
    :cond_3
    if-lez v0, :cond_4

    .line 518
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$800(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WaitForInitializeTabThread >>> All condition is ok ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 524
    :goto_4
    return-void

    .line 521
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$900(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "WaitForInitializeTabThread >>> All condition is not ok"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method
