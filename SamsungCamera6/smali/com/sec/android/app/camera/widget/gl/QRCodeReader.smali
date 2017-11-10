.class public Lcom/sec/android/app/camera/widget/gl/QRCodeReader;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "QRCodeReader.java"


# static fields
.field private static final MESSAGE_HIDE_QRBUTTON:I = 0x1

.field private static final SHOW_ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "QRCodeReader"


# instance fields
.field private final QR_BUTTON_FONT_COLOR:I

.field private final QR_BUTTON_ICON_MARGIN:F

.field private final QR_BUTTON_ICON_WIDTH:F

.field private final QR_BUTTON_LANDSCAPE_OFFSET_Y:F

.field private final QR_BUTTON_LINE_SPACING:F

.field private final QR_BUTTON_MAX_TEXT_WIDTH:F

.field private final QR_BUTTON_PORTRAIT_OFFSET_Y:F

.field private final QR_BUTTON_SIDE_PADDING:F

.field private final QR_BUTTON_TEXT_BOTTOM_MARGIN:F

.field private final QR_BUTTON_TEXT_FONT_SIZE:F

.field private final QR_BUTTON_TEXT_TOP_MARGIN:F

.field private mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mFoundURL:Ljava/lang/String;

.field private mQRButton:Lcom/samsung/android/glview/GLButton;

.field private mQRFoundText:Lcom/samsung/android/glview/GLText;

.field private mQRMsgHandler:Landroid/os/Handler;

.field private mQRSecureButton:Lcom/samsung/android/glview/GLButton;

.field private mQRSecureText:Lcom/samsung/android/glview/GLText;

.field private final mShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
    .locals 38

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const v3, 0x7f0b0176

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    const v3, 0x7f0b0177

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_TOP_MARGIN:F

    const v3, 0x7f0b0175

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_BOTTOM_MARGIN:F

    const v3, 0x7f0e0024

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_FONT_COLOR:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f0b0174

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x7f0b0173

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_MAX_TEXT_WIDTH:F

    const v3, 0x7f0b0174

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_SIDE_PADDING:F

    const v3, 0x7f0b016f

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_MARGIN:F

    const v3, 0x7f0b0170

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_WIDTH:F

    const v3, 0x7f0b0171

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_LANDSCAPE_OFFSET_Y:F

    const v3, 0x7f0b0172

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_PORTRAIT_OFFSET_Y:F

    const v3, 0x7f0b031d

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_LINE_SPACING:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mFoundURL:Ljava/lang/String;

    new-instance v3, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$1;-><init>(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;-><init>(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mConnection:Landroid/content/ServiceConnection;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a01eb

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a01ec

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_MAX_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v3, v9, v4, v5}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v37

    const/4 v3, 0x1

    move/from16 v0, v37

    if-le v0, v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_MAX_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_MARGIN:F

    sub-float v7, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v9, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v3

    move/from16 v0, v37

    int-to-float v4, v0

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_LINE_SPACING:F

    add-int/lit8 v5, v37, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float v8, v3, v4

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_MAX_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-static {v3, v0, v4, v5}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v37

    const/4 v3, 0x1

    move/from16 v0, v37

    if-le v0, v3, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_MAX_TEXT_WIDTH:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-static {v0, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v3

    move/from16 v0, v37

    int-to-float v4, v0

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_LINE_SPACING:F

    add-int/lit8 v5, v37, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float v21, v3, v4

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_WIDTH:F

    add-float/2addr v3, v7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_MARGIN:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_SIDE_PADDING:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    add-float v14, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_TOP_MARGIN:F

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_BOTTOM_MARGIN:F

    add-float v15, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_SIDE_PADDING:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v27, v20, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_TOP_MARGIN:F

    add-float v3, v3, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_BOTTOM_MARGIN:F

    add-float v28, v3, v4

    new-instance v3, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v11

    mul-float/2addr v10, v11

    const v11, 0x7f0e0036

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v16, 0x7f0202a1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    const v4, 0x7f0202a0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setNinePatchBackground(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_SIDE_PADDING:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_MARGIN:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_TOP_MARGIN:F

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_SIDE_PADDING:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_WIDTH:F

    sub-float v5, v15, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    new-instance v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$3;-><init>(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    new-instance v16, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float v23, v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_FONT_COLOR:I

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-direct/range {v16 .. v25}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    new-instance v23, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v23 .. v32}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    const v4, 0x7f0202d3

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setNinePatchBackground(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_SIDE_PADDING:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_TOP_MARGIN:F

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    cmpl-float v3, v14, v27

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v15

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_LANDSCAPE_OFFSET_Y:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_PORTRAIT_OFFSET_Y:F

    sub-float/2addr v4, v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v14

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    const/4 v3, 0x2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_LANDSCAPE_OFFSET_Y:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    const/4 v3, 0x3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_PORTRAIT_OFFSET_Y:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v15

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v14

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    sub-float v4, v14, v27

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v5, v15, v28

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->addView(Lcom/samsung/android/glview/GLView;)V

    const/high16 v29, 0x3f000000    # 0.5f

    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v31, 0x3f000000    # 0.5f

    const/high16 v32, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v33, v0

    new-instance v34, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct/range {v34 .. v34}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v35, 0x12c

    const/16 v36, 0x0

    invoke-static/range {v29 .. v36}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mShowAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v9, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v9, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v8

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-static {v0, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v21

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v4, v27

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v5, v28

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_LANDSCAPE_OFFSET_Y:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_PORTRAIT_OFFSET_Y:F

    sub-float/2addr v4, v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v5, v27

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    const/4 v3, 0x2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    add-float v4, v4, v27

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_LANDSCAPE_OFFSET_Y:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    const/4 v3, 0x3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_PORTRAIT_OFFSET_Y:F

    sub-float/2addr v4, v5

    sub-float v4, v4, v28

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v5, v27

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v5, v5, v27

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    sub-float v4, v27, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v5, v28, v15

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mFoundURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->bindQRAgentService()V

    return-void
.end method

.method private bindQRAgentService()V
    .locals 4

    const-string v1, "QRCodeReader"

    const-string v2, "bindQRAgentService"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.qragent"

    const-string v2, "com.samsung.android.app.qragent.service.QRService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public hideQRButton()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "QRCodeReader"

    const-string v1, "hideQRButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_BARCODE_DETECTION:Z

    if-nez v0, :cond_0

    const-string v0, "QR:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "QR:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mFoundURL:Ljava/lang/String;

    return-void
.end method

.method public showQRButton(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v0, "QRCodeReader"

    const-string v1, "showQRButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0
.end method
