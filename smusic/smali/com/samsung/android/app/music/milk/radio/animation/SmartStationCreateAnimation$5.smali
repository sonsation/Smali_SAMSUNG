.class Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$5;
.super Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;
.source "SmartStationCreateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->createAnimations()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

.field final synthetic val$wheelColor:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$5;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$5;->val$wheelColor:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 159
    const-string v0, "SmartStationCreateAnimation"

    const-string v1, "onAnimationEnd. transition"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$5;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$5;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->access$300(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$5;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->access$300(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$5;->val$wheelColor:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
