.class Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$1;
.super Ljava/lang/Object;
.source "SmartStationLightGlowAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$1;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$1;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->access$000(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;F)V

    .line 74
    return-void
.end method
