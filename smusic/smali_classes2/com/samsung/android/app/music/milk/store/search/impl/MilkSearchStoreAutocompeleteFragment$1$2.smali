.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$2;
.super Ljava/lang/Object;
.source "MilkSearchStoreAutocompeleteFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;->onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

.field final synthetic val$lateExecution:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$2;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$2;->val$lateExecution:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 150
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$2;->val$lateExecution:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendEmptyMessage(I)Z

    .line 155
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
