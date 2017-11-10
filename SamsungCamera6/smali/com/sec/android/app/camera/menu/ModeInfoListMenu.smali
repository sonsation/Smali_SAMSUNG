.class public Lcom/sec/android/app/camera/menu/ModeInfoListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ModeInfoListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModeInfoListMenu"


# instance fields
.field private final MODE_INFO_ACTION_BAR_FONT_COLOR:I

.field private final MODE_INFO_ACTION_BAR_HEIGHT:F

.field private final MODE_INFO_ACTION_BAR_ICON_LEFT_MARGIN:F

.field private final MODE_INFO_ACTION_BAR_ICON_SIZE:F

.field private final MODE_INFO_ACTION_BAR_ICON_TOP_MARGIN:F

.field private final MODE_INFO_ACTION_BAR_TEXT_SIZE:F

.field private final MODE_INFO_ACTION_BAR_WIDTH:F

.field private final MODE_INFO_ITEM_ANIMATION_DURATION:I

.field private final MODE_INFO_ITEM_START_OFFSET:I

.field private final MODE_INFO_LIST_ITEM_HEIGHT:F

.field private final MODE_INFO_LIST_START_POS_Y:F

.field private final MODE_INFO_MENU_START_OFFSET:I

.field private final SCREEN_HEIGHT:F

.field private final SCREEN_WIDTH:F

.field private mAdapter:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

.field private final mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mInfoText:Lcom/samsung/android/glview/GLText;

.field private mList:Lcom/samsung/android/glview/GLList;

.field private final mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mNeedShowBaseMenu:Z

.field private mOrientation:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 17

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v10, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v11, v2

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v2 .. v14}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    const v2, 0x7f0b02be

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_ICON_SIZE:F

    const v2, 0x7f0b0114

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_ICON_TOP_MARGIN:F

    const v2, 0x7f0b0113

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_ICON_LEFT_MARGIN:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_ICON_SIZE:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_ICON_LEFT_MARGIN:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_ICON_SIZE:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_ICON_TOP_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    const v2, 0x7f0b028c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_TEXT_SIZE:F

    const v2, 0x7f0e0024

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_FONT_COLOR:I

    const v2, 0x7f0b011f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_START_POS_Y:F

    const v2, 0x7f0b011c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_ITEM_HEIGHT:F

    const v2, 0x7f0c0006

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_MENU_START_OFFSET:I

    const v2, 0x7f0c0005

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ITEM_START_OFFSET:I

    const v2, 0x7f0c0004

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ITEM_ANIMATION_DURATION:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mNeedShowBaseMenu:Z

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v15, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v16

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_WIDTH:F

    sub-float/2addr v4, v5

    sub-float v4, v4, v16

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_WIDTH:F

    sub-float/2addr v5, v6

    sub-float v5, v5, v16

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_WIDTH:F

    add-float v4, v4, v16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_WIDTH:F

    add-float v5, v5, v16

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0c0007

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    const v4, 0x7f0c0008

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    const v8, 0x7f0202ce

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a01cf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_ICON_LEFT_MARGIN:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_ICON_TOP_MARGIN:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$1;-><init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_WIDTH:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float v9, v6, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_FONT_COLOR:I

    const/4 v11, 0x0

    move/from16 v6, v16

    move-object v8, v15

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v15}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_WIDTH:F

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;Lcom/sec/android/app/camera/menu/ModeInfoListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    new-instance v2, Lcom/samsung/android/glview/GLList;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_START_POS_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const v3, 0x7f0202d1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLList;->setScrollBarResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLList;->setScrollBarAlpha(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_START_POS_Y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_2
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_START_POS_Y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_ITEM_HEIGHT:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/samsung/android/glview/GLList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mNeedShowBaseMenu:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;ILcom/sec/android/app/camera/widget/gl/ModeInfoItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setNextFocus(Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;ILcom/sec/android/app/camera/widget/gl/ModeInfoItem;)V

    return-void
.end method

.method private setNextFocus(Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;ILcom/sec/android/app/camera/widget/gl/ModeInfoItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->getDescription()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->resetNextFocusId()V

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetNextFocusId()V

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setNextFocusForwardId(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setNextFocusForwardId(I)V

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setNextFocusForwardId(I)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->getDescription()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->getDescription()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLView;->setNextFocusForwardId(I)V

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p1}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    :cond_3
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    :pswitch_1
    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p1}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    :cond_5
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p1}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    :cond_7
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    :pswitch_3
    if-nez p2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p1}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    :cond_9
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showShootingModeMenu()V
    .locals 5

    const/4 v2, 0x0

    const/16 v4, 0x64

    const/4 v3, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->reset()V

    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 6

    const v5, 0x7f0c0009

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->isAnimationFinished()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "ModeInfoListMenu"

    const-string v4, "return.. Mode info animation is running.."

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->showShootingModeMenu()V

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->hideMenu()V

    const v4, 0x7f0c0003

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v3, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$2;-><init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->hideMenu(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showPageNavigators()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->hideMenu(I)V

    goto :goto_0
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mNeedShowBaseMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_0
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->showShootingModeMenu()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    if-eq v2, p1, :cond_5

    iput p1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLList;->setVisibility(I)V

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_START_POS_Y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->isScrollable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setDividerVisibility(I)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;

    if-nez v0, :cond_3

    const/4 v3, 0x0

    :goto_3
    invoke-direct {p0, v2, v0, v3}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setNextFocus(Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;ILcom/sec/android/app/camera/widget/gl/ModeInfoItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_START_POS_Y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setDividerVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLList;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method protected onShow()V
    .locals 20

    const-string v2, "ModeInfoListMenu"

    const-string v3, "onShow"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->isActive()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePageNavigators()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLList;->getFirstFullyVisibleViewIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getFirstFullyVisibleViewIndex()I

    move-result v11

    if-eqz v11, :cond_0

    add-int/lit8 v11, v11, -0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getLastFullyVisibleViewIndex()I

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v2

    add-int/lit8 v17, v2, -0x1

    :cond_1
    :goto_0
    move v12, v11

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    move/from16 v0, v17

    if-gt v12, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2, v12}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;

    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_MENU_START_OFFSET:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ITEM_START_OFFSET:I

    add-int/lit8 v14, v15, 0x1

    mul-int/2addr v3, v15

    add-int v18, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->getHeight()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    float-to-int v8, v8

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/SineOut33;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/SineOut33;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ITEM_ANIMATION_DURATION:I

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v19

    move/from16 v0, v18

    int-to-long v2, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ITEM_ANIMATION_DURATION:I

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v6, v13}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->startAnimation()V

    add-int/lit8 v12, v12, 0x1

    move v15, v14

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->isScrollable()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->showScrollBar()V

    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setDividerVisibility(I)V

    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mNeedShowBaseMenu:Z

    return-void

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setDividerVisibility(I)V

    goto :goto_2
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public refreshModeInfoMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLList;->invalidate()V

    return-void
.end method
