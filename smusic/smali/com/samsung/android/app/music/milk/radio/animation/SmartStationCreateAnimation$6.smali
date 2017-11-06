.class Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$6;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$6;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 173
    const-string v0, "SmartStationCreateAnimation"

    const-string v1, "onAnimationEnd. wheelColor"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$6;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->reset()V

    .line 175
    return-void
.end method
