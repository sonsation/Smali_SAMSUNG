.class Lcom/samsung/android/edgelighting/view/MorphView$2;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/MorphView;->changeNotiText(FJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/MorphView;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/MorphView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/MorphView;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iput p2, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 388
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 380
    iget v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->val$value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$100(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 393
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 376
    return-void
.end method
