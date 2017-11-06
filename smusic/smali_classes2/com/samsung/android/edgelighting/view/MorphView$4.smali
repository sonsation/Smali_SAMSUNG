.class Lcom/samsung/android/edgelighting/view/MorphView$4;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/MorphView;->changeNotificationWidth(JJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/MorphView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/MorphView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/MorphView;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$4;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 472
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 473
    .local v1, "temp":F
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView$4;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/MorphView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 474
    .local v0, "param":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 475
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView$4;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/edgelighting/view/MorphView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView$4;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/MorphView;->invalidate()V

    .line 478
    return-void
.end method
