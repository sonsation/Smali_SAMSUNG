.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->startWithOffset(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;

.field final synthetic val$duration:I

.field final synthetic val$position:I

.field final synthetic val$postOffset:I


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;III)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;

    .prologue
    .line 10283
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;

    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;->val$position:I

    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;->val$postOffset:I

    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 10285
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;->val$position:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;->val$postOffset:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;->val$duration:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->startWithOffset(III)V

    .line 10286
    return-void
.end method
