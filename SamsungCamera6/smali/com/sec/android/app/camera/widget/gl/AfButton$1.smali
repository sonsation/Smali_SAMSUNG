.class Lcom/sec/android/app/camera/widget/gl/AfButton$1;
.super Ljava/lang/Object;
.source "AfButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/AfButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 8

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$100()I

    move-result v0

    int-to-long v2, v0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$200(Lcom/sec/android/app/camera/widget/gl/AfButton;)F

    move-result v5

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/SineInOut80;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/SineInOut80;-><init>()V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$300(Lcom/sec/android/app/camera/widget/gl/AfButton;JFFLandroid/view/animation/Interpolator;Z)V

    return-void

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method
