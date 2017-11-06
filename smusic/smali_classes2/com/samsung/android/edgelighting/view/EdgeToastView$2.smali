.class Lcom/samsung/android/edgelighting/view/EdgeToastView$2;
.super Ljava/lang/Object;
.source "EdgeToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeToastView;->changeNotiText(FJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeToastView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeToastView;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$2;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    iput p2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$2;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 247
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 239
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$2;->val$value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$2;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->access$000(Lcom/samsung/android/edgelighting/view/EdgeToastView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 252
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 235
    return-void
.end method
