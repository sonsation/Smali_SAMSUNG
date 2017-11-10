.class public Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemEmptyThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemEmptyThumbnailButton"


# instance fields
.field private final BUTTON_X:I

.field private final LINE_PADDING:I

.field private final PREVIEW_HEIGHT:I

.field private final PREVIEW_WIDTH:I

.field private final THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

.field private mButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const v0, 0x7f0b0213

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    const v0, 0x7f0b00f2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->BUTTON_X:I

    const v0, 0x7f0b00f3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->LINE_PADDING:I

    const v0, 0x7f0b00df

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->PREVIEW_WIDTH:I

    const v0, 0x7f0b00de

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->PREVIEW_HEIGHT:I

    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->refreshButton()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 10

    const/16 v2, 0x1f40

    const/4 v9, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x41a

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isExternalEffectSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    if-lt v0, v2, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x2328

    if-ge v0, v1, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->PREVIEW_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->PREVIEW_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v2, v9

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$2;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$3;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    return-void

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x232d

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->BUTTON_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->LINE_PADDING:I

    int-to-float v3, v3

    iget v4, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    :cond_4
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    goto :goto_0
.end method

.method public setMargin(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    return-void
.end method

.method public setMargin(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    add-float/2addr v1, v2

    int-to-float v2, p3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    add-float/2addr v2, v3

    int-to-float v3, p4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v0, v1

    int-to-float v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    int-to-float v2, p4

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setPaddings(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    :cond_2
    return-void
.end method

.method public setPaddings(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->moveLayoutAbsolute(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    :cond_2
    return-void
.end method

.method public declared-synchronized setSize(FF)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonBG:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLSelectButton;->setSize(FF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->mButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

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
