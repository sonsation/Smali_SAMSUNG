.class Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView$1;
.super Ljava/lang/Object;
.source "EdgeAppLightEffectView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setRepeatColorAnimation(IIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setMainColor(I)V

    .line 145
    return-void
.end method
