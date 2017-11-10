.class public Lcom/sec/android/app/camera/menu/QuickView;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "QuickView.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;
    }
.end annotation


# static fields
.field public static final REVIEW_ALPHA_VALUE:F = 0.45f

.field private static REVIEW_DISPLAY_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QuickView"


# instance fields
.field private final REVIEW_ANIMATION_DURATION:I

.field private final REVIEW_BUTTON_SIZE:F

.field private final REVIEW_GROUP_GAP:F

.field private final REVIEW_GROUP_HEIGHT:F

.field private final REVIEW_GROUP_WIDTH:F

.field private final REVIEW_NORMAL_HEIGHT:F

.field private final REVIEW_NORMAL_POS_X:F

.field private final REVIEW_NORMAL_WIDTH:F

.field private final REVIEW_SQUARE_POS_X:F

.field private final REVIEW_SQUARE_WIDTH:F

.field private final REVIEW_TEXT_FONT_SIZE:F

.field private final REVIEW_TEXT_STROKE_COLOR:I

.field private final REVIEW_TEXT_STROKE_WIDTH:I

.field private final REVIEW_WIDE_HEIGHT:F

.field private final REVIEW_WIDE_POS_X:F

.field private final REVIEW_WIDE_POS_Y:F

.field private final REVIEW_WIDE_WIDTH:F

.field private final SCREEN_HEIGHT:F

.field private final SCREEN_WIDTH:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCaptureFileName:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mCoverCamera:Z

.field private mCurrentType:I

.field private mDeleteButton:Lcom/samsung/android/glview/GLButton;

.field private mLaunchChooserRunnable:Ljava/lang/Runnable;

.field private mLaunchGalleryRunnable:Ljava/lang/Runnable;

.field private mLaunchGalleryType:Ljava/lang/String;

.field private mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

.field protected mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

.field private mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mReviewImage:Lcom/samsung/android/glview/GLImage;

.field private mReviewImageHeight:F

.field private mReviewImagePosX:F

.field private mReviewImagePosY:F

.field private mReviewImageWidth:F

.field private final mReviewTimeOutCallback:Ljava/lang/Runnable;

.field private mReviewUpdating:Z

.field private mScreenOrientation:I

.field private mShadowPadding:Landroid/graphics/Rect;

.field private mShareButton:Lcom/samsung/android/glview/GLButton;

.field private mShareViaImageHeight:F

.field private mShareViaImageWidth:F

.field private mShareViaWorking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7d0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_DISPLAY_TIMEOUT:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/BaseMenuController;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    const v0, 0x7f0b0199

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    const v0, 0x7f0b0198

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    const v0, 0x7f0b0197

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_WIDTH:F

    const v0, 0x7f0b0194

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_WIDTH:F

    const v0, 0x7f0b0192

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_HEIGHT:F

    const v0, 0x7f0b0195

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_POS_X:F

    const v0, 0x7f0b0193

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_POS_X:F

    const v0, 0x7f0b0196

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_POS_X:F

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_POS_Y:F

    const v0, 0x7f0b0294

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    const v0, 0x7f0b0293

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    const v0, 0x7f0b0292

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_GAP:F

    const v0, 0x7f0b0291

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    const v0, 0x7f0b02d2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_FONT_SIZE:F

    const v0, 0x7f0c000d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    const v0, 0x7f0c0046

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0e003c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_COLOR:I

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosY:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaWorking:Z

    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCoverCamera:Z

    iput v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCurrentType:I

    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$1;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCaptureFileName:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mContentUri:Landroid/net/Uri;

    const-string v0, "quickview"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewUpdating:Z

    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$2;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$3;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/QuickView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/QuickView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/QuickView;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/QuickView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_DISPLAY_TIMEOUT:I

    return v0
.end method

.method private addDeleteButton()V
    .locals 14

    const-string v0, "QuickView"

    const-string v1, "addDeleteButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    const v6, 0x7f0201c8

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0160

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    const v3, 0x7f0e003b

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    add-double v10, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v12, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    double-to-float v2, v10

    double-to-float v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-double v2, v2

    add-double v10, v0, v2

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v12, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    double-to-float v2, v10

    double-to-float v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v10, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    add-double v12, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    double-to-float v2, v10

    double-to-float v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v10, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-double v2, v2

    add-double v12, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    double-to-float v2, v10

    double-to-float v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private addShareButton()V
    .locals 14

    const-string v0, "QuickView"

    const-string v1, "addShareButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    const v6, 0x7f0201c9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0224

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    const v3, 0x7f0e003b

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    add-double v10, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v12, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    double-to-float v2, v10

    double-to-float v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-double v2, v2

    add-double v10, v0, v2

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v12, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    double-to-float v2, v10

    double-to-float v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v10, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    add-double v12, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    double-to-float v2, v10

    double-to-float v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v10, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-double v2, v2

    add-double v12, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    double-to-float v2, v10

    double-to-float v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private resizeReviewImageWithAnimation()V
    .locals 14

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "QuickView"

    const-string v2, "resizeReviewImageWithAnimation : did not updated review image"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v13

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v13

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaWorking:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_2

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {v8, v1, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    div-float v11, v1, v2

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    div-float v10, v1, v2

    cmpl-float v1, v11, v10

    if-lez v1, :cond_3

    move v0, v11

    :goto_1
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    move v1, v12

    move v2, v0

    move v3, v12

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v9}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v7, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    goto/16 :goto_0

    :cond_3
    move v0, v10

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "QuickView"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/QuickView;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method public getCaptureFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCaptureFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCurrentType:I

    return v0
.end method

.method public hideReview()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "QuickView"

    const-string v1, "hideReview"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaWorking:Z

    return-void
.end method

.method protected isReviewUpdating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewUpdating:Z

    return v0
.end method

.method protected isShareViaWorking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaWorking:Z

    return v0
.end method

.method protected launchGallery()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;->onDeleteClicked()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;->onShareClicked()V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const-string v0, "QuickView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideReview(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->isShareViaWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "QuickView"

    const-string v1, "return because ShareVia is working"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideReview(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reviewon"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->hideReview()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->launchGallery()V

    goto :goto_0
.end method

.method public removeReviewTimeOutCallback()V
    .locals 2

    const-string v0, "QuickView"

    const-string v1, "removeReviewTimeOutCallback"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCoverCamera(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCoverCamera:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCoverCamera:Z

    :cond_0
    return-void
.end method

.method public setReviewButtonListener(Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    return-void
.end method

.method public startShareViaAnimation()V
    .locals 4

    const-string v0, "QuickView"

    const-string v1, "startShareViaAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/QuickView;->resizeReviewImageWithAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startShowReviewAnimation()V
    .locals 10

    const/4 v4, 0x1

    const v0, 0x3fb33333    # 1.4f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-string v2, "QuickView"

    const-string v3, "startShowReviewAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v2, :cond_0

    const-string v0, "QuickView"

    const-string v1, "startShowReviewAnimation : did not updated ReviewGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v2, :cond_1

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {v8, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v7, v7}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    :cond_1
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sget v6, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    move v2, v0

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$4;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/menu/QuickView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 18

    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview**StartU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    if-nez p1, :cond_0

    const-string v2, "QuickView"

    const-string v3, "bitmap is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewUpdating:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x5a

    move/from16 v0, p2

    if-eq v0, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    :cond_3
    const-string v2, "QuickView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview : this review should be rotated. mScreenOrientation ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/QuickView;->mCaptureFileName:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/QuickView;->mContentUri:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->isRegularResolution(II)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-nez v2, :cond_5

    new-instance v2, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    const v8, 0x7f0e000c

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/QuickView;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/QuickView;->removeView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_6
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0201cc

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/QuickView;->addView(Lcom/samsung/android/glview/GLView;)V

    if-eqz v14, :cond_7

    const/16 v2, 0xb4

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_7
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00ed

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_POS_Y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->addShareButton()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->addDeleteButton()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewUpdating:Z

    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]** "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v11

    if-nez v11, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCurrentType:I

    if-nez v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    :cond_f
    const/4 v2, 0x2

    if-ne v11, v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    goto/16 :goto_2

    :cond_12
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    goto/16 :goto_2
.end method
