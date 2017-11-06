.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$3;
.super Ljava/lang/Object;
.source "MilkSearchStorePresetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

.field final synthetic val$lateExecution:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$3;->val$lateExecution:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 541
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$3;->val$lateExecution:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendEmptyMessage(I)Z

    .line 546
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
