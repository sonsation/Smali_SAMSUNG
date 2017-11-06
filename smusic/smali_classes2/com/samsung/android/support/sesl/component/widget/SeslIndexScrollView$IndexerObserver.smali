.class Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;
.super Landroid/database/DataSetObserver;
.source "SeslIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexerObserver"
.end annotation


# instance fields
.field private final INDEX_UPDATE_DELAY:J

.field mDataInvalid:Z

.field mUpdateIndex:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 646
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->INDEX_UPDATE_DELAY:J

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 671
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    return-void
.end method

.method private notifyDataSetChange()V
    .locals 4

    .prologue
    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 667
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 668
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 669
    return-void
.end method


# virtual methods
.method public hasIndexerDataValid()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->mDataInvalid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChanged()V
    .locals 0

    .prologue
    .line 651
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 652
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    .line 653
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 657
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 658
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    .line 659
    return-void
.end method
