.class final Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$4;
.super Ljava/lang/Object;
.source "BixbyAnimationHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$end:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 0
    .param p1, "val$view"    # Landroid/view/View;
    .param p2, "val$end"    # F

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$4;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$4;->val$end:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 139
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$4;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$4;->val$end:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 134
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 129
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 124
    return-void
.end method
