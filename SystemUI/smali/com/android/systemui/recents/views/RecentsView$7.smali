.class Lcom/android/systemui/recents/views/RecentsView$7;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->showStackActionButton(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$duration:I

.field final synthetic val$translate:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p2, "val$translate"    # Z
    .param p3, "val$duration"    # I

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$7;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$translate:Z

    iput p3, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 970
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$translate:Z

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get6(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 972
    const/4 v1, 0x0

    .line 971
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get6(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 975
    const/high16 v1, 0x3f800000    # 1.0f

    .line 974
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 976
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$duration:I

    int-to-long v2, v1

    .line 974
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 977
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 974
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 969
    return-void
.end method
