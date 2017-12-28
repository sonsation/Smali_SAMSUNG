.class Lcom/android/launcher3/common/view/DragLayer$1;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/DragLayer;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$onFinishAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer$1;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/common/view/DragLayer$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/common/view/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 559
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer$1;->val$child:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer$1;->val$child:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer$1;->val$child:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getCountBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 566
    .local v0, "countBadge":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer$1;->val$child:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZZ)V

    .line 569
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer$1;->val$child:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    .line 571
    .end local v0    # "countBadge":Landroid/widget/TextView;
    :cond_2
    return-void
.end method
