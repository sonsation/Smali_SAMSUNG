.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$6;
.super Ljava/lang/Object;
.source "ConfirmLockDirection.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializeAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 606
    .local v1, "value":F
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    neg-float v1, v1

    .line 608
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$6;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 609
    .local v0, "mGreyListIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 610
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 604
    :cond_1
    return-void
.end method