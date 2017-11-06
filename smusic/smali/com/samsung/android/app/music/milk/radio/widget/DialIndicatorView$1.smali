.class Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$1;
.super Ljava/lang/Object;
.source "DialIndicatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->collapseGlowIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 250
    .local v0, "floatVal":Ljava/lang/Float;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setTouchPointAngle(F)V

    .line 251
    return-void
.end method
