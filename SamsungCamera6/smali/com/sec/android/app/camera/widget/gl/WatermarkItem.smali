.class public Lcom/sec/android/app/camera/widget/gl/WatermarkItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "WatermarkItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WatermarkItem"


# instance fields
.field private final FRAME_BG_COLOR:I

.field private final FRAME_BG_THICKNESS:I

.field private final ITEM_BOUNDARY_COLOR:I

.field private final SELECT_BG_COLOR:I

.field private final SELECT_BG_THICKNESS:I

.field private final THUMBNAIL_TEXT_COLOR:I

.field private final WATERMARK_ITEM_TEXT_SIZE:F

.field private mItemBoundaryRect:Lcom/samsung/android/glview/GLRectangle;

.field private mItemFrameRectBG:Lcom/samsung/android/glview/GLRectangle;

.field private mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

.field private mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    const v0, 0x7f0e0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->THUMBNAIL_TEXT_COLOR:I

    const v0, 0x7f0b00f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->WATERMARK_ITEM_TEXT_SIZE:F

    const v0, 0x7f0e004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->SELECT_BG_COLOR:I

    const v0, 0x7f0e0047

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->FRAME_BG_COLOR:I

    const v0, 0x7f0c001e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->SELECT_BG_THICKNESS:I

    const v0, 0x7f0c004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->FRAME_BG_THICKNESS:I

    const v0, 0x7f0e0049

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->ITEM_BOUNDARY_COLOR:I

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mItemFrameRectBG:Lcom/samsung/android/glview/GLRectangle;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mItemBoundaryRect:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->init()V

    return-void
.end method


# virtual methods
.method protected clearContent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    :cond_1
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLSelectButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->FRAME_BG_THICKNESS:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->FRAME_BG_THICKNESS:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->FRAME_BG_THICKNESS:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->getHeight()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->FRAME_BG_THICKNESS:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->ITEM_BOUNDARY_COLOR:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mItemBoundaryRect:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mItemBoundaryRect:Lcom/samsung/android/glview/GLRectangle;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mItemBoundaryRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mItemBoundaryRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->getHeight()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->FRAME_BG_COLOR:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->FRAME_BG_THICKNESS:I

    int-to-float v7, v2

    move v2, v9

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mItemFrameRectBG:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mItemFrameRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->getHeight()F

    move-result v5

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v6

    move v2, v9

    move v3, v9

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->getHeight()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->SELECT_BG_COLOR:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->SELECT_BG_THICKNESS:I

    int-to-float v7, v2

    move v2, v9

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mTitle:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0125

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0267

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->onOrientationChanged(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->getButton()Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpId(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectBGVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLRectangle;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0
.end method
