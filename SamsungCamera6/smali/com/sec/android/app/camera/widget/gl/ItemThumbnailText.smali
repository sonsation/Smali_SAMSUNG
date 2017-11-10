.class public Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemThumbnailText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemThumbnailText"


# instance fields
.field private final THUMBNAIL_TEXT_COLOR:I

.field private mAsyncTextSize:Z

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCommandId:I

.field private mText:Lcom/samsung/android/glview/GLText;

.field private mTextHeight:F

.field private mTextSize:F

.field private mTextWidth:F

.field private mTextXOffset:F

.field private mTextYOffset:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFFFFFFI)V
    .locals 7

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const v1, 0x7f0e0010

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->THUMBNAIL_TEXT_COLOR:I

    const v1, 0x7f0b00f0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move/from16 v0, p11

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextXOffset:F

    iput p7, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextYOffset:F

    iput p8, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextWidth:F

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextHeight:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mAsyncTextSize:Z

    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->refreshView()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const v0, 0x7f0e0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->THUMBNAIL_TEXT_COLOR:I

    const v0, 0x7f0b00f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextXOffset:F

    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextYOffset:F

    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextWidth:F

    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mAsyncTextSize:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->refreshView()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const v0, 0x7f0e0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->THUMBNAIL_TEXT_COLOR:I

    const v0, 0x7f0b00f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextXOffset:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextYOffset:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextWidth:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mAsyncTextSize:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->refreshView()V

    return-void
.end method

.method private refreshView()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->getView()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->updateSize()V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mParent:Lcom/samsung/android/glview/GLView;

    instance-of v1, v1, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mParent:Lcom/samsung/android/glview/GLView;

    check-cast v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->updateSize()V

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method protected getView()Lcom/samsung/android/glview/GLView;
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsTitle(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_1

    const-string v0, "ItemThumbnailText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mAsyncTextSize:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextXOffset:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextYOffset:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextHeight:F

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->THUMBNAIL_TEXT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f0c0019

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0e000f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->getHeight()F

    move-result v5

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->THUMBNAIL_TEXT_COLOR:I

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    goto :goto_2
.end method

.method public setAlign(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :cond_0
    return-void
.end method

.method public setShadowLayer(ZFFFI)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/glview/GLText;->setShadowLayer(ZFFFI)V

    return-void
.end method

.method public setSize(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    return-void
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTextShadow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    return-void
.end method
