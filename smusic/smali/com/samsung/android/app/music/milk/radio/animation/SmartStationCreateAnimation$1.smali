.class Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$1;
.super Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;
.source "SmartStationCreateAnimation.java"


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
    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$1;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$1;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->access$102(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Z)Z

    .line 72
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 67
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$1;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->access$002(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 61
    const-string v0, "SmartStationCreateAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStart. current animator - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$1;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->access$000(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
