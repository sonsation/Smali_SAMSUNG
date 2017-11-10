.class public Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "MotionPanoramaListItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionPanoramaListItem"


# instance fields
.field private final CHECK_RADIO_IMAGE_LEFT_MARGIN_FOR_LOCALE_RTL:I

.field private final LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

.field private final LIST_TYPE_BUTTON_IMAGE_WIDTH:I

.field private final LIST_TYPE_BUTTON_LEFT_PADDING:I

.field private final LIST_TYPE_BUTTON_POS_X:I

.field private final LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

.field private final LIST_TYPE_TEXT_FONT_COLOR:I

.field private final LIST_TYPE_TEXT_FONT_SIZE:F

.field private final LIST_TYPE_TEXT_POS_X:I

.field private final LIST_TYPE_TEXT_POS_Y:I

.field private mButton:Lcom/samsung/android/glview/GLButton;

.field private mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

.field private mHeight:F

.field private mText:Lcom/samsung/android/glview/GLText;

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 2

    const v1, 0x7f0b00f6

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    const v0, 0x7f0b00f7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    const v0, 0x7f0b00f4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    const v0, 0x7f0b00f5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_POS_X:I

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_LEFT_PADDING:I

    const v0, 0x7f0b00f8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_TEXT_POS_X:I

    const v0, 0x7f0b00f9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_TEXT_POS_Y:I

    const v0, 0x7f0b00fa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_TEXT_FONT_SIZE:F

    const v0, 0x7f0e000c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    const v0, 0x7f0b00ec

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->CHECK_RADIO_IMAGE_LEFT_MARGIN_FOR_LOCALE_RTL:I

    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mWidth:F

    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mHeight:F

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->init()V

    return-void
.end method


# virtual methods
.method protected clearContent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    :cond_2
    return-void
.end method

.method public getSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_TEXT_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v5, v1, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mHeight:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v2, v2

    sub-float v18, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mHeight:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_IMAGE_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v19, v1, v2

    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_POS_X:I

    int-to-float v9, v1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mHeight:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v15

    const v1, 0x7f0e0021

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setObjectTag(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    move/from16 v0, v19

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->LIST_TYPE_BUTTON_LEFT_PADDING:I

    int-to-float v4, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->CHECK_RADIO_IMAGE_LEFT_MARGIN_FOR_LOCALE_RTL:I

    int-to-float v1, v1

    add-float v1, v1, v18

    :goto_2
    add-float/2addr v1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    move/from16 v0, v19

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setOnSelectedChangeListener(Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addButtonToDimController(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_2
    move/from16 v1, v18

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onSelectedChanged(Lcom/samsung/android/glview/GLView;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0267

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0263

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setDim(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setDim(Z)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setDim(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpId(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->mDataRadioButton:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0
.end method
