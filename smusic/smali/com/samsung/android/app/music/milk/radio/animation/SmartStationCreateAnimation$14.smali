.class Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$14;
.super Ljava/lang/Object;
.source "SmartStationCreateAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$14;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 504
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$14;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->access$600(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 505
    .local v0, "banner":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 508
    :cond_0
    return-void
.end method