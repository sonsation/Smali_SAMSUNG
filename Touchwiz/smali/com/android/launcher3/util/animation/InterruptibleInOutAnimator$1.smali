.class Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InterruptibleInOutAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator$1;->this$0:Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator$1;->this$0:Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->access$002(Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;I)I

    .line 58
    return-void
.end method
