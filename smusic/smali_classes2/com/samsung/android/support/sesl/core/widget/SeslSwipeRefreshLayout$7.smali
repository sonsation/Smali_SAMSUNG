.class Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$7;
.super Landroid/view/animation/Animation;
.source "SeslSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$7;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$7;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->moveToStart(F)V

    .line 1158
    return-void
.end method
