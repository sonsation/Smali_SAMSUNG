.class Lcom/samsung/android/edgelighting/view/EdgeToastView$5;
.super Ljava/lang/Object;
.source "EdgeToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic val$toWidth:I


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeToastView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeToastView;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$5;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    iput p2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$5;->val$toWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 347
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 338
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$5;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$5;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    iget-object v2, v2, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mCompute:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V

    .line 339
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$5;->val$toWidth:I

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$5;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    iget v1, v1, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMinWidth:I

    if-le v0, v1, :cond_0

    .line 340
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$5;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$5;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    iget-object v2, v2, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mCompute:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V

    .line 342
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 352
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 334
    return-void
.end method
