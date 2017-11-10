.class Lcom/sec/android/app/camera/widget/gl/AfAeButton$2;
.super Ljava/lang/Object;
.source "AfAeButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/AfAeButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->access$000(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)Lcom/samsung/android/glview/GLText;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->access$100(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)Lcom/samsung/android/glview/GLText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "AfAeButton"

    const-string v1, "AE PORTRAIT ANIMATION"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
