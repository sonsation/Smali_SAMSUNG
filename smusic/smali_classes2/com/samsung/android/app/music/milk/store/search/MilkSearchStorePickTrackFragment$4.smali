.class Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;
.super Ljava/lang/Object;
.source "MilkSearchStorePickTrackFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->searchStoreContents(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

.field final synthetic val$lateExecution:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;->val$lateExecution:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 702
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 703
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isKeyboardShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 711
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "searchStoreContents : Activity("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    .line 712
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    invoke-static {v3, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-wide/16 v4, 0x2bc

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 719
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$4;->val$lateExecution:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendEmptyMessage(I)Z

    .line 720
    return-void

    :cond_2
    move v1, v2

    .line 712
    goto :goto_1

    .line 715
    :catch_1
    move-exception v0

    .line 716
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
