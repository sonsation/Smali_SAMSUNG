.class public Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemEffectThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemEffectThumbnailButton"


# instance fields
.field private final EFFECT_TYPE_TEXT_HEIGHT:I

.field private final PREVIEW_HEIGHT:I

.field private final PREVIEW_WIDTH:I

.field private mButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

.field private mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

.field private mTextBG:Lcom/samsung/android/glview/GLImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 6

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const v0, 0x7f0b00df

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    const v0, 0x7f0b00de

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    const v0, 0x7f0b00ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->refreshButton()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const v0, 0x7f0b00df

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    const v0, 0x7f0b00de

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    const v0, 0x7f0b00ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->refreshButton()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLSelectButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLRectangle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1f40

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x41a

    if-lt v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isExternalEffectSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x2328

    if-ge v0, v1, :cond_8

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_3
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0e000c

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(ILcom/samsung/android/glview/GLView;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_5

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v5

    const v6, 0x7f0e000c

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    const v1, 0x3e23d70a    # 0.16f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonPressed:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$3;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$4;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    :cond_6
    return-void

    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotatable(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setDim(Z)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const v4, 0x7f02009f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->EFFECT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mTextBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto/16 :goto_3
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mDownloadBG:Lcom/samsung/android/glview/GLRectangle;

    :cond_4
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLSelectButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    return-object v0
.end method

.method public getCommandID()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    return v0
.end method

.method public getSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setClipping(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLSelectButton;->setResourceOffset(FF)Z

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSubTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
