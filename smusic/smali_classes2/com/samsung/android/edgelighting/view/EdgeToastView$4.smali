.class Lcom/samsung/android/edgelighting/view/EdgeToastView$4;
.super Ljava/lang/Object;
.source "EdgeToastView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeToastView;->changeNotificationWidth(JJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeToastView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeToastView;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$4;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 323
    .local v1, "temp":F
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$4;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 324
    .local v0, "param":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 325
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$4;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$4;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->invalidate()V

    .line 328
    return-void
.end method
