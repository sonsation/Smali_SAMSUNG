.class Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$2;
.super Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;
.source "SmartStationLightGlowAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->start()V
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
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$2;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$2;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->reset()V

    .line 109
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 99
    const-string v0, "SmartStationLightGlowAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd. repeat animation. started - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$2;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->access$100(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$2;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->access$100(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 103
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$2;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->reset()V

    .line 95
    return-void
.end method
