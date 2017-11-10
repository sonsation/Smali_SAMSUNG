.class public Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;
.super Lcom/sec/android/app/camera/util/CameraGestureListener;
.source "RectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/RectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/gl/RectHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-direct {p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/samsung/android/glview/GLRectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/util/CameraGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$100(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$200(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$100(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;->onLongPressed()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/samsung/android/glview/GLRectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/util/CameraGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;->onRectHandlerClick()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
