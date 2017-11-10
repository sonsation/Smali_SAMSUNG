.class Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "VideoCollageTypeMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCollageTypeGroup"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCollageTypeGroup"

.field public static final TYPE_GROUP_1_BY_1:I = 0x0

.field public static final TYPE_GROUP_4_BY_3:I = 0x1

.field public static final TYPE_GROUP_SLOW_MOTION:I = 0x2


# instance fields
.field private final TYPE_MENU_BUTTON_1_BY_1_NEXT_POS_X:I

.field private final TYPE_MENU_BUTTON_1_BY_1_WIDTH:I

.field private final TYPE_MENU_BUTTON_4_BY_3_NEXT_POS_X:I

.field private final TYPE_MENU_BUTTON_4_BY_3_WIDTH:I

.field private final TYPE_MENU_BUTTON_GROUP_1_BY_1_COLLAGE_POS_Y:I

.field private final TYPE_MENU_BUTTON_GROUP_4_BY_3_COLLAGE_POS_Y:I

.field private final TYPE_MENU_BUTTON_GROUP_POS_Y:I

.field private final TYPE_MENU_BUTTON_GROUP_SLOW_MOTION_POS_Y:I

.field private final TYPE_MENU_BUTTON_GROUP_WIDTH:I

.field private final TYPE_MENU_BUTTON_HEIGHT:I

.field private final TYPE_MENU_BUTTON_SLOW_MOTION_HEIGHT:I

.field private final TYPE_MENU_BUTTON_SLOW_MOTION_NEXT_POS_X:I

.field private final TYPE_MENU_BUTTON_SLOW_MOTION_WIDTH:I

.field private final TYPE_MENU_CONTENTS_POS_X:I

.field private final TYPE_MENU_RATIO_1_BY_1_COLLAGE_POS_Y:I

.field private final TYPE_MENU_RATIO_4_BY_3_COLLAGE_POS_Y:I

.field private final TYPE_MENU_RATIO_TEXT_COLOR:I

.field private final TYPE_MENU_RATIO_TEXT_FONT:Landroid/graphics/Typeface;

.field private final TYPE_MENU_RATIO_TEXT_HEIGHT:I

.field private final TYPE_MENU_RATIO_TEXT_SIZE:I

.field private final TYPE_MENU_RATIO_TEXT_WIDTH:I

.field private final TYPE_MENU_TITLE_SLOW_MOTION_POS_Y:I

.field private final TYPE_MENU_TITLE_TEXT_COLOR:I

.field private final TYPE_MENU_TITLE_TEXT_FONT:Landroid/graphics/Typeface;

.field private final TYPE_MENU_TITLE_TEXT_HEIGHT:I

.field private final TYPE_MENU_TITLE_TEXT_SIZE:I

.field private final TYPE_MENU_TITLE_TEXT_WIDTH:I

.field private mButton1By1Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

.field private mButton1By1Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

.field private mButton1By1Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

.field private mButton1By1Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

.field private mButton1By1Serial:Lcom/samsung/android/glview/GLSelectButton;

.field private mButton4By3Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

.field private mButton4By3Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

.field private mButton4By3Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

.field private mButton4By3Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

.field private mButton4By3Serial:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonGroup1By1:Lcom/samsung/android/glview/GLViewGroup;

.field private mButtonGroup4By3:Lcom/samsung/android/glview/GLViewGroup;

.field private mButtonGroupSlow4By3:Lcom/samsung/android/glview/GLViewGroup;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLSelectButton;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonSlowMotion1x2:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonSlowMotion1x3:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonSlowMotion2x2:Lcom/samsung/android/glview/GLSelectButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mOnTypeSelectedListener:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$OnTypeSelectedListener;

.field private mTitle1By1:Lcom/samsung/android/glview/GLText;

.field private mTitle4By3:Lcom/samsung/android/glview/GLText;

.field private mTitleSlowMotion:Lcom/samsung/android/glview/GLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 6

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const v0, 0x7f0b008d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_CONTENTS_POS_X:I

    const v0, 0x7f0b0096

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_SLOW_MOTION_POS_Y:I

    const v0, 0x7f0b0098

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_TEXT_SIZE:I

    const v0, 0x7f0b0099

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_TEXT_WIDTH:I

    const v0, 0x7f0b0097

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_TEXT_HEIGHT:I

    const v0, 0x7f0e000c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_TEXT_COLOR:I

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_TEXT_FONT:Landroid/graphics/Typeface;

    const v0, 0x7f0b0091

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_1_BY_1_COLLAGE_POS_Y:I

    const v0, 0x7f0b0094

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_SIZE:I

    const v0, 0x7f0b0095

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_WIDTH:I

    const v0, 0x7f0b0093

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_HEIGHT:I

    const v0, 0x7f0e000a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_COLOR:I

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_FONT:Landroid/graphics/Typeface;

    const v0, 0x7f0b0084

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_1_BY_1_COLLAGE_POS_Y:I

    const v0, 0x7f0b0088

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_WIDTH:I

    const v0, 0x7f0b0089

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    const v0, 0x7f0b0081

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_WIDTH:I

    const v0, 0x7f0b0080

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_NEXT_POS_X:I

    const v0, 0x7f0b0092

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_4_BY_3_COLLAGE_POS_Y:I

    const v0, 0x7f0b0085

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_4_BY_3_COLLAGE_POS_Y:I

    const v0, 0x7f0b0083

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_WIDTH:I

    const v0, 0x7f0b0082

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_NEXT_POS_X:I

    const v0, 0x7f0b0086

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_POS_Y:I

    const v0, 0x7f0b0087

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_SLOW_MOTION_POS_Y:I

    const v0, 0x7f0b008c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_WIDTH:I

    const v0, 0x7f0b008a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_HEIGHT:I

    const v0, 0x7f0b008b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_NEXT_POS_X:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->initContents(Lcom/sec/android/app/camera/interfaces/CameraContext;I)V

    return-void
.end method

.method private initContents(Lcom/sec/android/app/camera/interfaces/CameraContext;I)V
    .locals 11

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v10, p0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_CONTENTS_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_1_BY_1_COLLAGE_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_HEIGHT:I

    int-to-float v5, v5

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a014f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_SIZE:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitle1By1:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitle1By1:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitle1By1:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitle1By1:Lcom/samsung/android/glview/GLText;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0150

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitle1By1:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_CONTENTS_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_1_BY_1_COLLAGE_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup1By1:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020078

    const v7, 0x7f020079

    const v8, 0x7f020078

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Serial:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Serial:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x1842

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Serial:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0154

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Serial:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup1By1:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Serial:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_NEXT_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020025

    const v7, 0x7f020026

    const v8, 0x7f020025

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x184c

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0147

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup1By1:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_NEXT_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020027

    const v7, 0x7f02002a

    const v8, 0x7f020027

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x184d

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0149

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup1By1:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_NEXT_POS_X:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020028

    const v7, 0x7f020029

    const v8, 0x7f020028

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x184f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0148

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup1By1:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_NEXT_POS_X:I

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_1_BY_1_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02002b

    const v7, 0x7f02002c

    const v8, 0x7f02002b

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x184e

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup1By1:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton1By1Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup1By1:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_CONTENTS_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_4_BY_3_COLLAGE_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_HEIGHT:I

    int-to-float v5, v5

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0151

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_SIZE:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitle4By3:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitle4By3:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitle4By3:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_RATIO_TEXT_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitle4By3:Lcom/samsung/android/glview/GLText;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0152

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitle4By3:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_CONTENTS_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_4_BY_3_COLLAGE_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup4By3:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02007a

    const v7, 0x7f02007b

    const v8, 0x7f02007a

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Serial:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Serial:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x1843

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Serial:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0155

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Serial:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup4By3:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Serial:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_NEXT_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02002d

    const v7, 0x7f02002e

    const v8, 0x7f02002d

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x1856

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup4By3:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_NEXT_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02002f

    const v7, 0x7f020032

    const v8, 0x7f02002f

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x1857

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup4By3:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X3:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_NEXT_POS_X:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020030

    const v7, 0x7f020031

    const v8, 0x7f020030

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x1859

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup4By3:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage1X22:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_NEXT_POS_X:I

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_4_BY_3_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020033

    const v7, 0x7f020034

    const v8, 0x7f020033

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x1858

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup4By3:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButton4By3Collage2X2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroup4By3:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_CONTENTS_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_SLOW_MOTION_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_TEXT_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_TEXT_HEIGHT:I

    int-to-float v5, v5

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0153

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_TEXT_SIZE:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitleSlowMotion:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitleSlowMotion:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitleSlowMotion:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_TITLE_TEXT_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTitleSlowMotion:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_CONTENTS_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_SLOW_MOTION_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_GROUP_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroupSlow4By3:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02007c

    const v7, 0x7f02007d

    const v8, 0x7f02007c

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion1x2:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion1x2:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x1838

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion1x2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion1x2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroupSlow4By3:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion1x2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_NEXT_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02007e

    const v7, 0x7f02007f

    const v8, 0x7f02007e

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion1x3:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion1x3:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x1839

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion1x3:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion1x3:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroupSlow4By3:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion1x3:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_NEXT_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->TYPE_MENU_BUTTON_SLOW_MOTION_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020080

    const v7, 0x7f020081

    const v8, 0x7f020080

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion2x2:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion2x2:Lcom/samsung/android/glview/GLSelectButton;

    const/16 v1, 0x183a

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion2x2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion2x2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroupSlow4By3:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonSlowMotion2x2:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonGroupSlow4By3:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string v1, "VideoCollageTypeGroup"

    const-string v2, "Invalid view tag!!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mOnTypeSelectedListener:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$OnTypeSelectedListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mOnTypeSelectedListener:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$OnTypeSelectedListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$OnTypeSelectedListener;->onTypeSelected(I)V

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1838 -> :sswitch_0
        0x1839 -> :sswitch_0
        0x183a -> :sswitch_0
        0x1842 -> :sswitch_0
        0x1843 -> :sswitch_0
        0x184c -> :sswitch_0
        0x184d -> :sswitch_0
        0x184e -> :sswitch_0
        0x184f -> :sswitch_0
        0x1856 -> :sswitch_0
        0x1857 -> :sswitch_0
        0x1858 -> :sswitch_0
        0x1859 -> :sswitch_0
    .end sparse-switch
.end method

.method public refreshButtonSelected(I)V
    .locals 4

    const/16 v2, 0x83

    invoke-static {v2, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getTag()I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->requestFocus()Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public refreshNextFocusView(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSelectButton;->resetNextFocusId()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_2

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLSelectButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    return-void
.end method

.method public setTypeSelectedListener(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$OnTypeSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->mOnTypeSelectedListener:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$OnTypeSelectedListener;

    return-void
.end method
