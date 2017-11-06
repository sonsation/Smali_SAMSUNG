.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$1;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    .prologue
    .line 9218
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9220
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->start(I)V

    .line 9221
    return-void
.end method
