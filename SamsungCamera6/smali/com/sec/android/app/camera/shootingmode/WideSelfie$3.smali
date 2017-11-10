.class Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;
.super Ljava/lang/Object;
.source "WideSelfie.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$902(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$902(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$902(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$902(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
