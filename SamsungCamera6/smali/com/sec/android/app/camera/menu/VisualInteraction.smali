.class public Lcom/sec/android/app/camera/menu/VisualInteraction;
.super Ljava/lang/Object;
.source "VisualInteraction.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;


# static fields
.field private static final COMPENSATION_MARGIN:I = 0x1

.field private static final SHUTTER_ANIMATION_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Camera6VI"

.field private static final mBlackOverlayGroupLock:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

.field private mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mBlurImage:Lcom/samsung/android/glview/GLImage;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentPreviewAnimation:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mHideSwitchingAnimationLock:Ljava/lang/Object;

.field private mIsBlurImageAnimating:Z

.field private mIsHideSwitchingAnimationWaiting:Z

.field private mIsPreviewChangingAnimationRunning:Z

.field private mIsSwitchCameraAnimationFinished:Z

.field private mIsSwitchCameraAnimationStarted:Z

.field private mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

.field private mPreviewBottomMargin:Lcom/samsung/android/glview/GLRectangle;

.field private mPreviewImage:Lcom/samsung/android/glview/GLImage;

.field private mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

.field private mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

.field private mPreviewTopMargin:Lcom/samsung/android/glview/GLRectangle;

.field private mResources:Landroid/content/res/Resources;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

.field private mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayGroupLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V
    .locals 9

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mHideSwitchingAnimationLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationStarted:Z

    iput-boolean v8, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z

    iput v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    int-to-float v5, v3

    const v3, 0x7f0e000c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AMOLED_DISPLAY:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    int-to-float v5, v3

    const v3, 0x7f0e003d

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    int-to-float v5, v3

    const v3, 0x7f0e003e

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLRectangle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayGroupLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/VisualInteraction;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/menu/VisualInteraction;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/VisualInteraction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mHideSwitchingAnimationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/VisualInteraction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/VisualInteraction;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideCameraSwitchingAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLViewGroup;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLImage;)Lcom/samsung/android/glview/GLImage;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    return p1
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLImage;)Lcom/samsung/android/glview/GLImage;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method private cancelCameraSwitchingAnimation()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "Camera6VI"

    const-string v1, "cancelCameraSwitchingAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    const-string v0, "Camera6VI"

    const-string v1, "Remove the mPreviewImage"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    const-string v0, "Camera6VI"

    const-string v1, "Remove the mBlurImage"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method private cancelPreviewChangingAnimation()V
    .locals 2

    const-string v0, "Camera6VI"

    const-string v1, "cancelPreviewChangingAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    const-string v0, "Camera6VI"

    const-string v1, "Remove the mPreviewImage"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlay()V

    return-void
.end method

.method private hideCameraSwitchingAnimation()V
    .locals 8

    const v7, 0x7f0c0011

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    if-nez v3, :cond_0

    const-string v3, "Camera6VI"

    const-string v4, "mBlurImage is null. return."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mHideSwitchingAnimationLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->isAnimationFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "Camera6VI"

    const-string v5, "mBlurImage animation is not finished. return."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "Camera6VI"

    const-string v4, "hideCameraSwitchingAnimation"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationStarted:Z

    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v0, 0x0

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MULTI_INSTANCE_CAMERA:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMultiInstanceCameraSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    new-instance v4, Lcom/sec/android/app/camera/menu/VisualInteraction$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction$3;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1
.end method

.method private hideMultiWindowRecordingAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    :cond_0
    const v0, 0x7f0c0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private hidePreviewChangingAnimation()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    if-nez v1, :cond_0

    const-string v1, "Camera6VI"

    const-string v2, "mPreviewImage is null. Return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "Camera6VI"

    const-string v2, "hidePreviewChangingAnimation"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/sec/android/app/camera/menu/VisualInteraction$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction$4;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private hideWhiteOverlay()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    const-string v0, "Camera6VI"

    const-string v1, "White overlay is already invisible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "Camera6VI"

    const-string v1, "hideWhiteOverlay"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private isSwitchCameraAnimationFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    return v0
.end method

.method private showWhiteOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    const-string v0, "Camera6VI"

    const-string v1, "White overlay is already visible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "Camera6VI"

    const-string v1, "showWhiteOverlayWithAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0
.end method

.method private startCameraSwitchingAnimation([B)V
    .locals 43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Camera6VI"

    const-string v5, "Camera is pausing. Skip the switching Animation"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v4, "Camera6VI"

    const-string v5, "startCameraSwitchingAnimation"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationStarted:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v29

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v36

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v35

    const/16 v28, 0x0

    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MULTI_INSTANCE_CAMERA:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMultiInstanceCameraSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v28

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewHeight()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    const/16 p1, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewAspectRatio()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v31, v4, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v41, v4, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v29, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCameraDisplayOrientation()I

    move-result v4

    rsub-int v4, v4, 0x168

    rem-int/lit16 v4, v4, 0x168

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move/from16 v0, v31

    int-to-float v12, v0

    move/from16 v0, v41

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v4

    int-to-float v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v4

    int-to-float v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move/from16 v0, v31

    int-to-float v12, v0

    move/from16 v0, v41

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v4

    int-to-float v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v4

    int-to-float v15, v4

    move-object/from16 v16, v32

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getLastGestureDirection()I

    move-result v30

    if-eqz v29, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    :goto_4
    const/16 v38, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isFixedOrientation()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_1
    const/4 v4, 0x2

    move/from16 v0, v30

    if-ne v0, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, -0xb4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v15, v4, v5

    const/16 v16, 0x65

    invoke-static/range {v10 .. v16}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIIFFI)Landroid/view/animation/Animation;

    move-result-object v38

    :goto_5
    new-instance v40, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct/range {v40 .. v40}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v0, v28

    int-to-long v4, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v4, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f333333    # 0.7f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f333333    # 0.7f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0x1

    const/high16 v18, 0x3f000000    # 0.5f

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move/from16 v0, v28

    int-to-long v4, v0

    invoke-virtual {v10, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v0, v36

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v35

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v20, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move/from16 v0, v28

    int-to-float v4, v0

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    move/from16 v0, v28

    int-to-float v4, v0

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v22, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    const/16 v39, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isFixedOrientation()Z

    move-result v4

    if-nez v4, :cond_10

    :cond_2
    const/4 v4, 0x2

    move/from16 v0, v30

    if-ne v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    const/4 v12, 0x0

    const/16 v13, 0xb4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v16, v4, v5

    const/16 v17, 0x64

    invoke-static/range {v11 .. v17}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIIFFI)Landroid/view/animation/Animation;

    move-result-object v39

    :goto_6
    new-instance v37, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct/range {v37 .. v37}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move/from16 v0, v28

    int-to-long v4, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v12, 0x3f333333    # 0.7f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f333333    # 0.7f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move/from16 v0, v28

    int-to-long v4, v0

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v0, v36

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v35

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const v5, 0x3f19999a    # 0.6f

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move/from16 v0, v28

    int-to-float v4, v0

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    move/from16 v0, v28

    int-to-float v4, v0

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v23, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v12, Lcom/sec/android/app/camera/menu/VisualInteraction$5;

    move-object/from16 v13, p0

    move/from16 v14, v27

    move/from16 v15, v33

    move/from16 v16, v34

    move/from16 v17, v29

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/app/camera/menu/VisualInteraction$5;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;IIIZ)V

    invoke-virtual {v4, v12}, Lcom/samsung/android/glview/GLImage;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->bringToFront()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/camera/menu/VisualInteraction$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/sec/android/app/camera/menu/VisualInteraction$6;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    div-int/lit8 v6, v28, 0x2

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    new-instance v5, Lcom/sec/android/app/camera/menu/VisualInteraction$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/sec/android/app/camera/menu/VisualInteraction$7;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v28

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCameraDisplayOrientation()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x2

    move/from16 v0, v26

    if-ne v0, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v0, v35

    int-to-float v14, v0

    move/from16 v0, v35

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v0, v35

    int-to-float v14, v0

    move/from16 v0, v35

    int-to-float v15, v0

    move-object/from16 v16, v32

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_3

    :cond_6
    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0204

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v12, v4

    const/4 v13, 0x0

    move/from16 v0, v35

    int-to-float v14, v0

    move/from16 v0, v35

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0204

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v12, v4

    const/4 v13, 0x0

    move/from16 v0, v35

    int-to-float v14, v0

    move/from16 v0, v35

    int-to-float v15, v0

    move-object/from16 v16, v32

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_3

    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_8

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b013c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v12, v4

    const/4 v13, 0x0

    move/from16 v0, v35

    int-to-float v4, v0

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v14, v4, v5

    move/from16 v0, v35

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b013c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v12, v4

    const/4 v13, 0x0

    move/from16 v0, v35

    int-to-float v4, v0

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v14, v4, v5

    move/from16 v0, v35

    int-to-float v15, v0

    move-object/from16 v16, v32

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_3

    :cond_8
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v0, v36

    int-to-float v14, v0

    move/from16 v0, v35

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v0, v36

    int-to-float v14, v0

    move/from16 v0, v35

    int-to-float v15, v0

    move-object/from16 v16, v32

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_3

    :cond_9
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    sub-int v4, v36, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v12, v4, v5

    const/4 v13, 0x0

    sget v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    int-to-float v14, v4

    sget v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_HEIGHT:I

    int-to-float v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    sub-int v4, v36, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v12, v4, v5

    const/4 v13, 0x0

    sget v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    int-to-float v14, v4

    sget v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_HEIGHT:I

    int-to-float v15, v4

    move-object/from16 v16, v32

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_3

    :cond_a
    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v12, 0x0

    sub-int v4, v35, v42

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v13, v4, v5

    move/from16 v0, v36

    int-to-float v14, v0

    move/from16 v0, v42

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v12, 0x0

    sub-int v4, v35, v42

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v13, v4, v5

    move/from16 v0, v36

    int-to-float v14, v0

    move/from16 v0, v42

    int-to-float v15, v0

    move-object/from16 v16, v32

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xb4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v15, v4, v5

    const/16 v16, 0x64

    invoke-static/range {v10 .. v16}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIIFFI)Landroid/view/animation/Animation;

    move-result-object v38

    goto/16 :goto_5

    :cond_d
    const/4 v4, 0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, -0xb4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v15, v4, v5

    const/16 v16, 0x65

    invoke-static/range {v10 .. v16}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIIFFI)Landroid/view/animation/Animation;

    move-result-object v38

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0xb4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v15, v4, v5

    const/16 v16, 0x64

    invoke-static/range {v10 .. v16}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIIFFI)Landroid/view/animation/Animation;

    move-result-object v38

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    const/4 v12, 0x0

    const/16 v13, -0xb4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v16, v4, v5

    const/16 v17, 0x65

    invoke-static/range {v11 .. v17}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIIFFI)Landroid/view/animation/Animation;

    move-result-object v39

    goto/16 :goto_6

    :cond_10
    const/4 v4, 0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v12, 0x1

    const/16 v13, 0xb4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v16, v4, v5

    const/16 v17, 0x64

    invoke-static/range {v11 .. v17}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIIFFI)Landroid/view/animation/Animation;

    move-result-object v39

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    const/4 v12, 0x1

    const/16 v13, -0xb4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v16, v4, v5

    const/16 v17, 0x65

    invoke-static/range {v11 .. v17}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIIFFI)Landroid/view/animation/Animation;

    move-result-object v39

    goto/16 :goto_6
.end method

.method private startPreviewChangingAnimation([B)V
    .locals 26

    const-string v4, "Camera6VI"

    const-string v5, "startPreviewChangingAnimation - E"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v21

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v25

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewHeight()I

    move-result v22

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    if-eqz v23, :cond_0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "Camera6VI"

    const-string v5, "startPreviewChangingAnimation - set wrong preview size"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Camera6VI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "w : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", h : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mOriginalViewFinderWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getOriginalViewFinderHeight() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setOriginalViewFinderWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setOriginalViewFinderHeight(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_0
    const/16 p1, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewAspectRatio()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4, v10}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    :cond_1
    const-string v4, "Camera6VI"

    const-string v5, "Return, startPreviewChangingAnimation"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object v10

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0b00aa

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int v20, v24, v4

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v6, 0x0

    sub-int v7, v24, v20

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move/from16 v0, v20

    int-to-float v8, v0

    move/from16 v0, v20

    int-to-float v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCameraDisplayOrientation()I

    move-result v4

    rsub-int v4, v4, 0x168

    rem-int/lit16 v4, v4, 0x168

    int-to-float v4, v4

    invoke-virtual {v15, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCameraDisplayOrientation()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v15, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_4

    :cond_6
    const/4 v4, 0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_7

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b0204

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_8

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b013c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v8, v9

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v25

    int-to-float v8, v0

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    :cond_9
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v6, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    sub-int v6, v25, v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_HEIGHT:I

    int-to-float v9, v9

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    :cond_a
    new-instance v4, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v7

    sub-int v7, v24, v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move/from16 v0, v25

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    goto/16 :goto_2

    :cond_c
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/menu/VisualInteraction;->showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->bringToFront()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    const-string v4, "Camera6VI"

    const-string v5, "startPreviewChangingAnimation - X"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method


# virtual methods
.method public cancelPreviewAnimation()V
    .locals 3

    const-string v0, "Camera6VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPreviewAnimation, mCurrentPreviewAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->cancelCameraSwitchingAnimation()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->cancelPreviewChangingAnimation()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlay()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideBlackOverlay()V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayGroupLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    const-string v0, "Camera6VI"

    const-string v2, "Black overlay is already invisible"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "Camera6VI"

    const-string v1, "hideBlackOverlay"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    sget-object v1, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayGroupLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "Camera6VI"

    const-string v1, "hideBlackOverlayWithAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/sec/android/app/camera/menu/VisualInteraction$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction$1;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    return-void
.end method

.method public hidePreviewAnimation()V
    .locals 3

    const-string v0, "Camera6VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePreviewAnimation, mCurrentPreviewAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideCameraSwitchingAnimation()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hidePreviewChangingAnimation()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideMultiWindowRecordingAnimation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideScreenFlashAnimation()V
    .locals 2

    const-string v0, "Camera6VI"

    const-string v1, "hideScreenFlashAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideWhiteOverlay()V

    return-void
.end method

.method public isBlackOverlayVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSwitchingAnimationRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->isCameraSwitchingAnimationStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->isSwitchCameraAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSwitchingAnimationStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationStarted:Z

    return v0
.end method

.method public isPreviewChangingAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    return v0
.end method

.method public isWhiteOverlayVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    return-void
.end method

.method public onLayoutChanged(III)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Camera6VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChanged : orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->isCameraSwitchingAnimationStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationStarted:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlay()V

    return-void
.end method

.method public setBlackOverlayAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    return-void
.end method

.method public setPreviewAnimation(I)V
    .locals 3

    const-string v0, "Camera6VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewAnimation, animation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    return-void
.end method

.method public setPreviewRect()V
    .locals 14

    const-string v0, "Camera6VI"

    const-string v1, "setPreviewRect"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v11

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget v0, v11, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_4

    iget v0, v11, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, v11, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, v11, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e000c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v12, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e000c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    :goto_1
    iget v0, v11, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_8

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    iget v1, v11, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewTopMargin:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_6

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, v13, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v13, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e000c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewTopMargin:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewTopMargin:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewTopMargin:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewBottomMargin:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_7

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e000c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewBottomMargin:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewBottomMargin:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewBottomMargin:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRect(Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRect(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRect(Landroid/graphics/RectF;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRect(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewTopMargin:Lcom/samsung/android/glview/GLRectangle;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRect(Landroid/graphics/RectF;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewBottomMargin:Lcom/samsung/android/glview/GLRectangle;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRect(Landroid/graphics/RectF;)V

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewTopMargin:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewTopMargin:Lcom/samsung/android/glview/GLRectangle;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRect(Landroid/graphics/RectF;)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewBottomMargin:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewBottomMargin:Lcom/samsung/android/glview/GLRectangle;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRect(Landroid/graphics/RectF;)V

    goto/16 :goto_3
.end method

.method public showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V
    .locals 3

    sget-object v1, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayGroupLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    const-string v0, "Camera6VI"

    const-string v2, "Black overlay is already visible"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Camera6VI"

    const-string v1, "showBlackOverlay"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p2

    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayGroupLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 3

    sget-object v1, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayGroupLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    const-string v0, "Camera6VI"

    const-string v2, "Black overlay is already visible"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Camera6VI"

    const-string v1, "showBlackOverlayWithAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p2

    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayGroupLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public startPreviewAnimation([B)V
    .locals 3

    const-string v0, "Camera6VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewAnimation, mCurrentPreviewAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->startCameraSwitchingAnimation([B)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->startPreviewChangingAnimation([B)V

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startScreenFlashAnimation()V
    .locals 2

    const-string v0, "Camera6VI"

    const-string v1, "startScreenFlashAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(FI)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->showWhiteOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    return-void
.end method

.method public startShutterAnimation()V
    .locals 4

    const-string v1, "Camera6VI"

    const-string v2, "startShutterAnimation"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/sec/android/app/camera/menu/VisualInteraction$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction$2;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    const-string v1, "Animating Shutter"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
