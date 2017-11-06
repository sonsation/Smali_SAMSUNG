.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$2;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->start(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

.field final synthetic val$boundPosition:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    .prologue
    .line 9277
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$2;->val$position:I

    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$2;->val$boundPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9279
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$2;->val$position:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$2;->val$boundPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->start(II)V

    .line 9280
    return-void
.end method
