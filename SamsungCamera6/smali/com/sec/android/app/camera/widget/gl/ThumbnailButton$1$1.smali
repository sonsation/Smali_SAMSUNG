.class Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1$1;
.super Ljava/lang/Object;
.source "ThumbnailButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1$1;->this$1:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1$1;->this$1:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->access$100(Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1$1;->this$1:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->access$100(Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLView;->setShaderParameter(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1$1;->this$1:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void
.end method
