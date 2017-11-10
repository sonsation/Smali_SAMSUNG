.class public Lcom/sec/android/app/camera/widget/gl/RectHandler;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "RectHandler.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;
.implements Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;,
        Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;,
        Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
    }
.end annotation


# static fields
.field public static final HANDLER_4POINT:I = 0x4

.field public static final HANDLER_8POINT:I = 0x8

.field public static final LEFT_LOCK:I = 0x1

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_RIGHT:I = 0x2

.field private static final MOVE_TOP:I = 0x4

.field private static final MOVE_WHOLERECT:I = 0x10

.field public static final NONE_LOCK:I = 0x0

.field public static final RIGHT_LOCK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RectHandler"

.field protected static final TRACKING_START:I = 0x1

.field public static final TRACKING_START_TIMEOUT:I = 0x3e8


# instance fields
.field private final BOUND_RECT_THICKNESS:I

.field private final HANDLER_AREA_PADDING:I

.field private HANDLE_SIZE:F

.field private final OUTER_BOUND_RECT_THICKNESS:I

.field private final RESIZE_HANDLE_OFFSET:I

.field private final RESIZE_HANDLE_SIZE:I

.field private mAspectRatio:F

.field private mBackGround:Lcom/samsung/android/glview/GLImage;

.field private mBoundRect:Landroid/graphics/RectF;

.field private mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

.field private mDisable:Z

.field private mDragStartPoint:Landroid/graphics/PointF;

.field private mDraggable:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowBoundary:Z

.field private mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

.field private mHandlerType:I

.field private mHandler_area_bottom_boundary:I

.field private mHandler_area_left_boundary:I

.field private mHandler_area_right_boundary:I

.field private mHandler_area_top_boundary:I

.field private mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

.field private mIsAspectRatioLocked:Z

.field private mMaxRect:Landroid/graphics/RectF;

.field private mMinRect:Landroid/graphics/RectF;

.field private mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

.field private mRect:Landroid/graphics/RectF;

.field private mRectBeforeDragged:Landroid/graphics/RectF;

.field private mRectBeforeInvisible:Landroid/graphics/RectF;

.field private mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

.field private mResizeHandle:[Lcom/samsung/android/glview/GLImage;

.field private mResizeHandleType:[I

.field private mSideLock:I

.field private mWidthOffsetForHandle:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;I)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const v0, 0x7f0b00b2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    const v0, 0x7f0b00b3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    const v0, 0x7f0b00b5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_SIZE:I

    const v0, 0x7f0b00b4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_OFFSET:I

    const v0, 0x7f0b004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    iput v12, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    iput-boolean v10, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    new-array v0, v12, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    iput-boolean v11, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDraggable:Z

    iput-boolean v11, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGrowBoundary:Z

    iput-boolean v10, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    iput v10, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    const v1, -0x3a63c000    # -5000.0f

    const v3, -0x3a63c000    # -5000.0f

    const v4, 0x459c4000    # 5000.0f

    const v5, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x43160000    # 150.0f

    const/high16 v3, 0x43160000    # 150.0f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x43fa0000    # 500.0f

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mWidthOffsetForHandle:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_left_boundary:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_right_boundary:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_top_boundary:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_bottom_boundary:I

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;-><init>(Lcom/sec/android/app/camera/widget/gl/RectHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v3, 0x7f0e0001

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v3, 0x7f0e0002

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v3, 0x7f0e0002

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLImage;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLImage;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mWidthOffsetForHandle:I

    const/4 v8, 0x0

    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v8, v0, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_SIZE:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_SIZE:I

    int-to-float v5, v3

    const v7, 0x7f020088

    move v3, v2

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    aput-object v0, v9, v8

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_OFFSET:I

    int-to-float v1, v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_OFFSET:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLImage;->setImageOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLImage;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLImage;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    const/4 v1, 0x5

    aput v1, v0, v10

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    const/4 v1, 0x6

    aput v1, v0, v11

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    const/4 v1, 0x2

    const/16 v2, 0xa

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    const/4 v1, 0x3

    const/16 v2, 0x9

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    const/16 v1, 0x10

    aput v1, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/samsung/android/glview/GLRectangle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    return-object v0
.end method

.method private applyMovement(Landroid/graphics/PointF;I)V
    .locals 8

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    new-instance v7, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v6, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDraggable:Z

    if-eqz v0, :cond_1

    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v7, v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v7

    :goto_0
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;->onMove(Lcom/samsung/android/glview/GLView;FFFF)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGrowBoundary:Z

    if-eqz v0, :cond_0

    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v7, v0, v1, p2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->growBy(Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;

    move-result-object v7

    goto :goto_0
.end method

.method private filterMovement(Landroid/graphics/PointF;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    :cond_1
    return-void
.end method

.method private getHandleIndex(Lcom/samsung/android/glview/GLView;)I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private growBy(Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    if-eqz v3, :cond_3d

    packed-switch p4, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    :cond_1
    packed-switch p4, :pswitch_data_1

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    :cond_3
    packed-switch p4, :pswitch_data_2

    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    packed-switch p4, :pswitch_data_3

    :cond_5
    :goto_3
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    :cond_6
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    packed-switch p4, :pswitch_data_4

    :cond_7
    :goto_4
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    :cond_8
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    packed-switch p4, :pswitch_data_5

    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    :cond_a
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    packed-switch p4, :pswitch_data_6

    :cond_b
    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :cond_c
    :goto_7
    return-object v2

    :pswitch_2
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v7, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_e

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :cond_d
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :cond_e
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :cond_f
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    :pswitch_3
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v8, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_11

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :cond_10
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    :cond_11
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :cond_12
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :pswitch_4
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v8, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_14

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :cond_13
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    :cond_14
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :cond_15
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :pswitch_5
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v7, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_17

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :cond_16
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :cond_17
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_18

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :cond_18
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :pswitch_6
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_19

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :cond_19
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_1a

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :cond_1a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_0

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :pswitch_7
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v8, :cond_0

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    :pswitch_8
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_1b

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :cond_1b
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_1c

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :cond_1c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_0

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :pswitch_9
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v7, :cond_0

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :pswitch_a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_1d

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    :cond_1d
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_2

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :pswitch_b
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_1e

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    :cond_1e
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_2

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :pswitch_c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_1f

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :cond_1f
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_2

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :pswitch_d
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_20

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :cond_20
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_2

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :pswitch_e
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_21

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    :cond_21
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_22

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    :cond_22
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_2

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    :pswitch_f
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    :pswitch_10
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_23

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :cond_23
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_24

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    :cond_24
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_2

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    :pswitch_11
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    :pswitch_12
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_25

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    :cond_25
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_4

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :pswitch_13
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_26

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    :cond_26
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_4

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :pswitch_14
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_27

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :cond_27
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_4

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :pswitch_15
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_28

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :cond_28
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_4

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :pswitch_16
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_29

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    :cond_29
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_2a

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    :cond_2a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_4

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    :pswitch_17
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    :pswitch_18
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :pswitch_19
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    :pswitch_1a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_2b

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    :cond_2b
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_5

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    :pswitch_1b
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_2c

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    :cond_2c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_5

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    :pswitch_1c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_2d

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    :cond_2d
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_5

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    :pswitch_1d
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_2e

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    :cond_2e
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_5

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    :pswitch_1e
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    :pswitch_1f
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_2f

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_4

    :cond_2f
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_7

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :pswitch_20
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_30

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :cond_30
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_7

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :pswitch_21
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_31

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    :cond_31
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_7

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :pswitch_22
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :pswitch_23
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_32

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    :cond_32
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_7

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :pswitch_24
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_33

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_5

    :cond_33
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_9

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    :pswitch_25
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_34

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    :cond_34
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_9

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    :pswitch_26
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_9

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    :pswitch_27
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_9

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    :pswitch_28
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_35

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    :cond_35
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_36

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    :cond_36
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_9

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    :pswitch_29
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    :pswitch_2a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_37

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    :cond_37
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_9

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    :pswitch_2b
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_5

    :pswitch_2c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_b

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :pswitch_2d
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_b

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :pswitch_2e
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_38

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    :cond_38
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_b

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :pswitch_2f
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_39

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_6

    :cond_39
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_b

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :pswitch_30
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_3a

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :cond_3a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_b

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :pswitch_31
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    :pswitch_32
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_3b

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    :cond_3b
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_3c

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :cond_3c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_b

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :pswitch_33
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_6

    :cond_3d
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3e

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    :cond_3e
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3f

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :cond_3f
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_40

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    :cond_40
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_41

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    :cond_41
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_43

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    :cond_42
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_43

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    :cond_43
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_45

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_44

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    :cond_44
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_45

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :cond_45
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_47

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_46

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    :cond_46
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_47

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    :cond_47
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_49

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_48

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    :cond_48
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_49

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :cond_49
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4a

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    :cond_4a
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4b

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    :cond_4b
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4c

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    :cond_4c
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
        :pswitch_1
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public applyInvisible()V
    .locals 7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget v1, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;->onMove(Lcom/samsung/android/glview/GLView;FFFF)V

    :cond_0
    return-void
.end method

.method public calcBoundary(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    :cond_1
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-object v0
.end method

.method public calcRotatePosition(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;
    .locals 24

    const-wide/16 v14, 0x0

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    packed-switch p2, :pswitch_data_0

    const-wide/16 v14, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    add-float v11, v11, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v11, v11, v18

    float-to-double v2, v11

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    add-float v11, v11, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v11, v11, v18

    float-to-double v4, v11

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v11

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v11

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    add-double v8, v18, v2

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v11

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v11

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v16, v18, v4

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v11

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v11

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    add-double v12, v18, v2

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v11

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v11

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v6, v18, v4

    cmpg-double v11, v8, v12

    if-gez v11, :cond_3

    move-wide/from16 v18, v8

    :goto_1
    move-wide/from16 v0, v18

    double-to-float v11, v0

    iput v11, v10, Landroid/graphics/RectF;->left:F

    cmpg-double v11, v16, v6

    if-gez v11, :cond_4

    move-wide/from16 v18, v16

    :goto_2
    move-wide/from16 v0, v18

    double-to-float v11, v0

    iput v11, v10, Landroid/graphics/RectF;->top:F

    cmpl-double v11, v8, v12

    if-lez v11, :cond_5

    :goto_3
    double-to-float v11, v8

    iput v11, v10, Landroid/graphics/RectF;->right:F

    cmpl-double v11, v16, v6

    if-lez v11, :cond_6

    :goto_4
    move-wide/from16 v0, v16

    double-to-float v11, v0

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    iget v11, v10, Landroid/graphics/RectF;->left:F

    const/16 v18, 0x0

    cmpg-float v11, v11, v18

    if-gez v11, :cond_0

    iget v11, v10, Landroid/graphics/RectF;->right:F

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v11, v11, v18

    iput v11, v10, Landroid/graphics/RectF;->right:F

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/RectF;->left:F

    :cond_0
    iget v11, v10, Landroid/graphics/RectF;->top:F

    const/16 v18, 0x0

    cmpg-float v11, v11, v18

    if-gez v11, :cond_1

    iget v11, v10, Landroid/graphics/RectF;->bottom:F

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    sub-float v11, v11, v18

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/RectF;->top:F

    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->calcBoundary(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    :cond_2
    return-object v10

    :pswitch_0
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    :pswitch_1
    const-wide v14, 0x4012d97c7f3321d2L    # 4.71238898038469

    goto/16 :goto_0

    :pswitch_2
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    goto/16 :goto_0

    :pswitch_3
    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v18, v12

    goto :goto_1

    :cond_4
    move-wide/from16 v18, v6

    goto :goto_2

    :cond_5
    move-wide v8, v12

    goto :goto_3

    :cond_6
    move-wide/from16 v16, v6

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_2

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_4

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_5

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_7

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    :cond_7
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    :cond_8
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method public getDisable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    return v0
.end method

.method public getDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDraggable:Z

    return v0
.end method

.method public getDualHandlerOffset()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_RESOLUTION_1280X720_PREVIEW_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_RESOLUTION_640X480_PREVIEW_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getGrowable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGrowBoundary:Z

    return v0
.end method

.method public getPosition()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPositionForVisible()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRectBeforeDragged()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getSideLock()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    return v0
.end method

.method public getonHandlerMoveListener()Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    return-object v0
.end method

.method public hideBoundaryRect()V
    .locals 3

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    return-object v0
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleIndex(Lcom/samsung/android/glview/GLView;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->filterMovement(Landroid/graphics/PointF;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleIndex(Lcom/samsung/android/glview/GLView;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->applyMovement(Landroid/graphics/PointF;I)V

    goto :goto_0
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 2

    const-string v0, "RectHandler"

    const-string v1, "onDragEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 2

    const-string v0, "RectHandler"

    const-string v1, "onDragStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxBound()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    return-void
.end method

.method public onFlingDirection(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    invoke-interface {v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;->onRectHandlerClick()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onScrollDirection(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resetHandler()V
    .locals 3

    const/high16 v2, 0x43fa0000    # 500.0f

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setAspectRatioLocked(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMinSize(FF)V

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxSize(FF)V

    return-void
.end method

.method public setAspectRatioLocked(Z)V
    .locals 4

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public setBackGroundInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method public setBackGroundVisible()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method public setDisable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDraggable:Z

    return-void
.end method

.method public setGrowable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGrowBoundary:Z

    return-void
.end method

.method public setHandlerAreaBottomBoundary(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_bottom_boundary:I

    return-void
.end method

.method public setHandlerAreaTopBoundary(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_top_boundary:I

    return-void
.end method

.method public setHandlerTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxBound()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getDualHandlerOffset()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mWidthOffsetForHandle:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mWidthOffsetForHandle:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_left_boundary:I

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_right_boundary:I

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_top_boundary:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mWidthOffsetForHandle:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_left_boundary:I

    goto :goto_1
.end method

.method public setMaxBoundRect(Landroid/graphics/RectF;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setMaxSize(FF)V
    .locals 4

    const/4 v3, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :cond_0
    return-void
.end method

.method public setMinSize(FF)V
    .locals 4

    const/4 v3, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :cond_0
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p1, p3

    add-float v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, p3, p4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    add-float/2addr v2, v7

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    add-float/2addr v1, p3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    add-float/2addr v2, p4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setSize(FF)V

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v1, v6

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    sub-float v2, p2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->moveLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p3, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, p4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    add-float/2addr v2, v7

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    sub-float v4, p3, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    sub-float v5, p4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7, v7}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, v7}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7, p4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setRectHandlerClickListener(Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    return-void
.end method

.method public setSideLock(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setAspectRatioLocked(Z)V

    :cond_0
    return-void
.end method

.method public setonHandlerMoveListener(Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    return-void
.end method

.method public showBoundaryRect()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateRectBeforeDragged()V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    return-void
.end method
