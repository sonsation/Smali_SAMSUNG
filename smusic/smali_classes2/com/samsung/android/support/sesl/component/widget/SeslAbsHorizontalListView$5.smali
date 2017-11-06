.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 6850
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6853
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 6854
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCachingActive:Z

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCachingStarted:Z

    .line 6855
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Z)V

    .line 6856
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 6857
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Z)V

    .line 6859
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6860
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 6863
    :cond_1
    return-void
.end method
