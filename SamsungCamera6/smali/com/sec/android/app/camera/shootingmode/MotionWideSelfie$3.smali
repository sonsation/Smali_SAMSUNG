.class Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;
.super Ljava/lang/Object;
.source "MotionWideSelfie.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideArrow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$902(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;I)I

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    move-result v2

    if-eq v2, v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$910(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1200(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1300(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;I)V

    return-void

    :cond_2
    const/4 v0, 0x7

    const/16 v1, 0xd

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$908(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1102(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;Z)Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    move-result v2

    if-eq v2, v1, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$908(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$910(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1102(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;Z)Z

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
