.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$expand:Z

.field final synthetic val$isClick:Z

.field final synthetic val$oldMaxExpansionHeight:F

.field final synthetic val$onFinishRunnable:Ljava/lang/Runnable;

.field final synthetic val$velocity:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;ZFFLjava/lang/Runnable;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p2, "val$expand"    # Z
    .param p3, "val$oldMaxExpansionHeight"    # F
    .param p4, "val$velocity"    # F
    .param p5, "val$onFinishRunnable"    # Ljava/lang/Runnable;
    .param p6, "val$isClick"    # Z

    .prologue
    .line 2244
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$expand:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$oldMaxExpansionHeight:F

    iput p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$velocity:F

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$onFinishRunnable:Ljava/lang/Runnable;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$isClick:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2247
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V

    .line 2248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$expand:Z

    .line 2249
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$oldMaxExpansionHeight:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2248
    :goto_0
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$velocity:F

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$expand:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$onFinishRunnable:Ljava/lang/Runnable;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->val$isClick:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;FZLjava/lang/Runnable;Z)V

    .line 2246
    :cond_0
    return-void

    .line 2249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
