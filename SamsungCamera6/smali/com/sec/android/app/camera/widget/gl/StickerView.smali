.class public Lcom/sec/android/app/camera/widget/gl/StickerView;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "StickerView.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;,
        Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;
    }
.end annotation


# static fields
.field private static final LEFT_SCALE_BUTTON:I = 0x0

.field private static final MENU_TIMER_INTERVAL_0:J = 0x0L

.field private static final MENU_TIMER_INTERVAL_1:J = 0x1f4L

.field private static final MENU_TIMER_INTERVAL_2:J = 0x258L

.field private static final MENU_TIMER_INTERVAL_3:J = 0x384L

.field private static final MENU_TIMER_INTERVAL_4:J = 0x3e8L

.field private static final MENU_TIMER_INTERVAL_5:J = 0x514L

.field private static final MIN_DISTANCE:F = 10.0f

.field private static final MSG_TIME_OUT_0:I = 0x0

.field private static final MSG_TIME_OUT_1:I = 0x1

.field private static final MSG_TIME_OUT_2:I = 0x2

.field private static final MSG_TIME_OUT_3:I = 0x3

.field private static final MSG_TIME_OUT_4:I = 0x4

.field private static final MSG_TIME_OUT_5:I = 0x5

.field private static final MSG_TIME_UPDATE_MINUTE:I = 0x6

.field private static final RIGHT_SCALE_BUTTON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StickerView"

.field private static final TIME_FOR_UPDATE_MINUTE:J = 0xea60L


# instance fields
.field private final BOUND_RECT_THICKNESS:I

.field private final HANDLE_SIZE:F

.field private final NORMAL_RATIO_PREVIEW_LEFT:I

.field private final NORMAL_RATIO_PREVIEW_WIDTH:I

.field private final OUTER_BOUND_RECT_THICKNESS:I

.field private final RESIZE_HANDLE_SIZE:F

.field private mAspectRatio:F

.field private mBoundRect:Landroid/graphics/Rect;

.field private mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

.field private mCurrentEditTextViewIsVertical:Z

.field private mDefaultRect:Landroid/graphics/RectF;

.field private mDeleteButton:Lcom/samsung/android/glview/GLButton;

.field private mDragPoint:Landroid/graphics/PointF;

.field public mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;

.field private mId:I

.field private mLResizeButton:Lcom/samsung/android/glview/GLButton;

.field private mOrientation:I

.field private mRResizeButton:Lcom/samsung/android/glview/GLButton;

.field private mRealRect:Landroid/graphics/RectF;

.field private mRect:Landroid/graphics/RectF;

.field private mRotateButton:Lcom/samsung/android/glview/GLButton;

.field private mScale:F

.field private mStartPoint:Landroid/graphics/PointF;

.field private mStickImage:Lcom/samsung/android/glview/GLImage;

.field private mTextInputFlag:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;I)V
    .locals 13

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const v0, 0x7f0b013c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->NORMAL_RATIO_PREVIEW_LEFT:I

    const v0, 0x7f0b0038

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->NORMAL_RATIO_PREVIEW_WIDTH:I

    const v0, 0x7f0b0382

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->BOUND_RECT_THICKNESS:I

    const v0, 0x7f0b037f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->OUTER_BOUND_RECT_THICKNESS:I

    const v0, 0x7f0b0381

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    const v0, 0x7f0b0380

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/StickerView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$1;-><init>(Lcom/sec/android/app/camera/widget/gl/StickerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextViewIsVertical:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStartPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mTextInputFlag:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDragPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDefaultRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mId:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->NORMAL_RATIO_PREVIEW_LEFT:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->NORMAL_RATIO_PREVIEW_LEFT:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->NORMAL_RATIO_PREVIEW_WIDTH:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->findEntryById(I)Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    move-result-object v9

    if-nez v9, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0e0046

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->BOUND_RECT_THICKNESS:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->getImageResourceId()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    const v6, 0x7f020232

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    const v6, 0x7f020233

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    const v6, 0x7f020231

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    const v6, 0x7f020231

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v9}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->getExtraMsg()[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    array-length v0, v0

    if-ge v11, v0, :cond_4

    aget-object v0, v10, v11

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    aget-object v3, v10, v11

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;-><init>(Lcom/sec/android/app/camera/widget/gl/StickerView;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;F)V

    aput-object v1, v0, v11

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLText()Lcom/samsung/android/glview/GLText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLText()Lcom/samsung/android/glview/GLText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v0, v0, v11

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$200(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLTextEditBG()Lcom/samsung/android/glview/GLRectangle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLText()Lcom/samsung/android/glview/GLText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->addView(Lcom/samsung/android/glview/GLView;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    const/4 v1, 0x0

    aput-object v1, v0, v11

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->getDefaultPositionType()Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getDefaultPosition(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;FF)Landroid/graphics/PointF;

    move-result-object v12

    iget v0, v12, Landroid/graphics/PointF;->x:F

    iget v1, v12, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setDefaultPosition(FFFF)V

    iget v0, v12, Landroid/graphics/PointF;->x:F

    iget v1, v12, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setPosition(FFFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->startTimer()V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/StickerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/widget/gl/StickerView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/widget/gl/StickerView;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;)Landroid/graphics/Typeface;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getTextFont(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/widget/gl/StickerView;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method private calcBoundary(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 11

    const/4 v10, 0x0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDefaultOrientation:I

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x5a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getRotateDegree()I

    move-result v7

    add-int v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_0

    iput v10, v1, Landroid/graphics/PointF;->x:F

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v2, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1

    iput v10, v1, Landroid/graphics/PointF;->x:F

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_2

    iput v10, v1, Landroid/graphics/PointF;->x:F

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_3

    iput v10, v1, Landroid/graphics/PointF;->x:F

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_4

    iput v10, v1, Landroid/graphics/PointF;->y:F

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v2, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_5

    iput v10, v1, Landroid/graphics/PointF;->y:F

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_6

    iput v10, v1, Landroid/graphics/PointF;->y:F

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_7

    iput v10, v1, Landroid/graphics/PointF;->y:F

    :cond_7
    return-object v1
.end method

.method private checkBoundary(I)Z
    .locals 10

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDefaultOrientation:I

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x5a

    add-int v0, v6, p1

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v2, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v1, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v2, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private checkBoundary(Landroid/graphics/RectF;)Z
    .locals 10

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDefaultOrientation:I

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x5a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getRotateDegree()I

    move-result v7

    add-int v0, v6, v7

    iget v6, p1, Landroid/graphics/RectF;->left:F

    iget v7, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v2

    iget v6, p1, Landroid/graphics/RectF;->left:F

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v6, p1, Landroid/graphics/RectF;->right:F

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v3

    iget v6, p1, Landroid/graphics/RectF;->right:F

    iget v7, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6, v7, v0, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v2, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v1, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private getDefaultPosition(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;FF)Landroid/graphics/PointF;
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v5, Lcom/sec/android/app/camera/widget/gl/StickerView$2;->$SwitchMap$com$sec$android$app$camera$plugin$WatermarkTemplateLoader$DefaultPosition:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-object v2

    :pswitch_0
    int-to-float v5, v1

    iput v5, v2, Landroid/graphics/PointF;->x:F

    int-to-float v5, v3

    int-to-float v6, v0

    sub-float/2addr v6, p3

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_1
    int-to-float v5, v1

    iput v5, v2, Landroid/graphics/PointF;->x:F

    int-to-float v5, v3

    iput v5, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_2
    int-to-float v5, v1

    int-to-float v6, v4

    sub-float/2addr v6, p2

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/PointF;->x:F

    int-to-float v5, v3

    int-to-float v6, v0

    sub-float/2addr v6, p3

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_3
    int-to-float v5, v1

    int-to-float v6, v4

    sub-float/2addr v6, p2

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/PointF;->x:F

    int-to-float v5, v3

    int-to-float v6, v0

    sub-float/2addr v6, p3

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_4
    int-to-float v5, v1

    int-to-float v6, v4

    sub-float/2addr v6, p2

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/PointF;->x:F

    int-to-float v5, v3

    iput v5, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getRotationAngle(FF)I
    .locals 14

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    sub-float v4, p1, v10

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    sub-float v5, p2, v10

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    sub-float v8, v10, v11

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    sub-float v9, v10, v11

    float-to-double v10, v9

    float-to-double v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    float-to-double v10, v5

    float-to-double v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double v10, v0, v6

    const-wide v12, 0x4076800000000000L    # 360.0

    add-double/2addr v10, v12

    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v2, v10, v12

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    packed-switch v10, :pswitch_data_0

    :goto_0
    :pswitch_0
    double-to-int v10, v2

    return v10

    :pswitch_1
    const-wide v10, 0x4066800000000000L    # 180.0

    add-double/2addr v10, v2

    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v2, v10, v12

    goto :goto_0

    :pswitch_2
    const-wide v10, 0x4070e00000000000L    # 270.0

    add-double/2addr v10, v2

    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v2, v10, v12

    goto :goto_0

    :pswitch_3
    const-wide v10, 0x4056800000000000L    # 90.0

    add-double/2addr v10, v2

    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v2, v10, v12

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getTextFont(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;)Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/widget/gl/StickerView$2;->$SwitchMap$com$sec$android$app$camera$plugin$WatermarkTemplateLoader$TextFont:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoBlack()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getHansRegular()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getShaonvTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getKaitiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getMiaoTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private growBy(Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDragPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDefaultOrientation:I

    add-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x4

    neg-int v5, v5

    mul-int/lit8 v5, v5, 0x5a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getRotateDegree()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v2

    if-ne p2, v8, :cond_2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :goto_0
    if-ne p2, v8, :cond_0

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    :cond_0
    if-nez p2, :cond_4

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    div-float v4, v0, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    :goto_1
    return-object p1

    :cond_2
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0

    :cond_3
    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_4
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_5
    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method private isEditableText(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLText()Lcom/samsung/android/glview/GLText;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$200(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private move(Landroid/graphics/PointF;)V
    .locals 6

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->calcBoundary(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setPosition(FFFF)V

    return-void
.end method

.method private resize(I)V
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->growBy(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->checkBoundary(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setPosition(FFFF)V

    goto :goto_0
.end method

.method private setRealRect(FF)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    div-float v3, v0, v6

    sub-float v3, p1, v3

    div-float v4, v1, v6

    sub-float v4, p2, v4

    div-float v5, v0, v6

    add-float/2addr v5, p1

    div-float v6, v1, v6

    add-float/2addr v6, p2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getCurrentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getCurrentTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getCurrentBottom()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private stopTimer()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$200(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->stopTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    :cond_4
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method public getPosition()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getScale()F
    .locals 4

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mScale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public hideBoundaryRect()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 11

    const/high16 v10, 0x41200000    # 10.0f

    const-string v5, "StickerView"

    const-string v6, "onOrientationChanged"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setRealRect(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    add-float v0, v5, v6

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    add-float v3, v5, v6

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    add-float v1, v5, v6

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRealRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->RESIZE_HANDLE_SIZE:F

    add-float v2, v5, v6

    :cond_3
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v1

    sub-float/2addr v5, v2

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v3

    sub-float/2addr v6, v0

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v1

    sub-float/2addr v7, v2

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v3

    sub-float/2addr v8, v0

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/widget/gl/StickerView;->checkBoundary(Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v10

    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    div-float v7, v10, v7

    add-float/2addr v6, v7

    iget v7, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v10

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mAspectRatio:F

    div-float v9, v10, v9

    sub-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_4
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setPosition(FFFF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;->onMoveEnd(I)V

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_1
    move v9, v6

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->isEditableText(Lcom/samsung/android/glview/GLView;)Z

    move-result v9

    if-eqz v9, :cond_3

    check-cast p1, Lcom/samsung/android/glview/GLText;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mTextInputFlag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->showBoundaryRect()V

    const/4 v6, 0x1

    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    if-ne p1, v9, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->showBoundaryRect()V

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-ne p1, v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;

    invoke-interface {v9}, Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;->onDelete()V

    const/4 v6, 0x1

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->isEditableText(Lcom/samsung/android/glview/GLView;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mTextInputFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStartPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float v2, v7, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStartPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float v3, v8, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    cmpl-float v9, v9, v10

    if-gez v9, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_6

    :cond_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mTextInputFlag:Z

    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    if-ne p1, v9, :cond_8

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getRotationAngle(FF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->checkBoundary(I)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->rotateDegree(I)V

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;

    invoke-interface {v9, v0}, Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;->onRotate(I)V

    :cond_7
    :goto_3
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    if-ne p1, v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->stopTimer()V

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setTextBackgroundVisibility(I)V

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/widget/gl/StickerView;->resize(I)V

    goto :goto_3

    :cond_9
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    if-ne p1, v9, :cond_a

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->stopTimer()V

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setTextBackgroundVisibility(I)V

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/widget/gl/StickerView;->resize(I)V

    goto :goto_3

    :cond_a
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDragPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float v9, v7, v9

    iput v9, v1, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDragPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float v9, v8, v9

    iput v9, v1, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->move(Landroid/graphics/PointF;)V

    goto :goto_3

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->isEditableText(Lcom/samsung/android/glview/GLView;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setTextBackgroundVisibility(I)V

    iget-boolean v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mTextInputFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.sec.android.app.camera"

    const-string v10, "com.sec.android.app.camera.WatermarkTextInputActivity"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "OriString"

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v10, 0x7d3

    invoke-virtual {v9, v4, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    if-eq p1, v9, :cond_c

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    if-eq p1, v9, :cond_c

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    if-ne p1, v9, :cond_d

    :cond_c
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;

    invoke-interface {v9}, Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;->onResize()V

    goto/16 :goto_1

    :cond_d
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eq p1, v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mOrientation:I

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;->onMoveEnd(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDefaultPosition(FFFF)V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDefaultRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setPosition(FFFF)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    add-float v2, p1, p3

    add-float v3, p2, p4

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, p3, p4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mStickImage:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    add-float/2addr v1, p3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    add-float/2addr v2, p4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setSize(FF)V

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    div-float/2addr v1, v6

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    sub-float v2, p2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/StickerView;->moveLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->OUTER_BOUND_RECT_THICKNESS:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p3, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->OUTER_BOUND_RECT_THICKNESS:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, p4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v7, v7}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, p3, v7}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, p3, p4}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v7, p4}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDefaultRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDefaultRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mScale:F

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$200(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLText()Lcom/samsung/android/glview/GLText;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$300(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mScale:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLText()Lcom/samsung/android/glview/GLText;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$400(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mScale:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$500(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mScale:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLText()Lcom/samsung/android/glview/GLText;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$600(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$700(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setRealRect(FF)V

    return-void
.end method

.method public setTextBackgroundVisibility(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$200(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLTextEditBG()Lcom/samsung/android/glview/GLRectangle;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWatermarkText(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextViewIsVertical:Z

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLText()Lcom/samsung/android/glview/GLText;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$800(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getFontSize()F

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$900(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mCurrentEditTextView:Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$900(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_1

    :cond_3
    return v3
.end method

.method public setonHandlerMoveListener(Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;

    return-void
.end method

.method public showBoundaryRect()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method public startTimer()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$200(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x384

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v4, 0x514

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
