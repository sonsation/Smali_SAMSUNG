.class Lcom/android/launcher3/common/drag/DragView$4;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/drag/DragView;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/drag/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragView$4;->this$0:Lcom/android/launcher3/common/drag/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView$4;->this$0:Lcom/android/launcher3/common/drag/DragView;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 330
    return-void
.end method
