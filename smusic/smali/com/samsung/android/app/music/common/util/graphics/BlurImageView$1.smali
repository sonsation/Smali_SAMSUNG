.class Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;
.super Ljava/lang/Object;
.source "BlurImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 65
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setFraction(F)V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->invalidate()V

    .line 67
    return-void
.end method
