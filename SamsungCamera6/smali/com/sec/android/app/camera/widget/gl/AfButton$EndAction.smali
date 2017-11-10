.class Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;
.super Ljava/lang/Object;
.source "AfButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/AfButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/widget/gl/AfButton;Lcom/sec/android/app/camera/widget/gl/AfButton$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;-><init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$700(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$700(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$800(Lcom/sec/android/app/camera/widget/gl/AfButton;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$900()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$400(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$500(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$500(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$800(Lcom/sec/android/app/camera/widget/gl/AfButton;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$1000()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$400(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$500(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$500(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
