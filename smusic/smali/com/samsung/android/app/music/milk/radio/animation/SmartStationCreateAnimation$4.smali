.class Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$4;
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

.field final synthetic val$loadingDone:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$4;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$4;->val$loadingDone:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 127
    const-string v2, "SmartStationCreateAnimation"

    const-string v3, "onAnimationEnd. loading"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$4;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$4;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->access$200(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;

    .line 132
    .local v0, "condition":Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;
    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;->getCondition()I

    move-result v1

    .line 134
    .local v1, "state":I
    const-string v2, "SmartStationCreateAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationEnd. state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    packed-switch v1, :pswitch_data_0

    .line 145
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$4;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->reset()V

    goto :goto_0

    .line 138
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$4;->val$loadingDone:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 150
    .end local v1    # "state":I
    :cond_1
    const-string v2, "SmartStationCreateAnimation"

    const-string v3, "onAnimationEnd. condition reference is null."

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$4;->this$0:Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->reset()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
