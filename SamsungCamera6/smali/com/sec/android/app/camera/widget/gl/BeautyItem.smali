.class public Lcom/sec/android/app/camera/widget/gl/BeautyItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "BeautyItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field public static final BEAUTY_MODE_TOGGLE_TYPE:I = 0x2

.field public static final BEAUTY_MODE_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BeautyItem"


# instance fields
.field private final BEAUTY_ITEM_SELECT_COLOR:I

.field private final BEAUTY_MODE_ITEM_HEIGHT:I

.field private final BEAUTY_MODE_ITEM_WIDTH:I

.field private final BEAUTY_MODE_TITLE_FONT_COLOR:I

.field private final BEAUTY_MODE_TITLE_FONT_SIZE:F

.field private final BEAUTY_MODE_TITLE_HEIGHT:F

.field private final BEAUTY_MODE_TITLE_POS_X:F

.field private final BEAUTY_MODE_TITLE_POS_Y:F

.field private final BEAUTY_MODE_TITLE_SMALL_FONT_SIZE:F

.field private final BEAUTY_MODE_TITLE_WIDTH:F

.field private final MODE_TITLE_FONT_COLOR:I

.field private final TITLE_STROKE_COLOR:I

.field private final TITLE_STROKE_WIDTH:I

.field private mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

.field private mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentType:I

.field private final mMenuId:I

.field private final mModeId:I

.field private mSelectedImage:Lcom/samsung/android/glview/GLImage;

.field private mTitleText:Lcom/samsung/android/glview/GLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    const v0, 0x7f0b0267

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    const v0, 0x7f0b0266

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_HEIGHT:F

    const v0, 0x7f0b0269

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_X:F

    const v0, 0x7f0b026a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_Y:F

    const v0, 0x7f0b0268

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_FONT_SIZE:F

    const v0, 0x7f0b026b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_SMALL_FONT_SIZE:F

    const v0, 0x7f0b0263

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_WIDTH:I

    const v0, 0x7f0b0262

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_HEIGHT:I

    const v0, 0x7f0e0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_FONT_COLOR:I

    const v0, 0x7f0c0019

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->TITLE_STROKE_WIDTH:I

    const v0, 0x7f0e000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->TITLE_STROKE_COLOR:I

    const v0, 0x7f0e0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->MODE_TITLE_FONT_COLOR:I

    const v0, 0x7f0e0035

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_ITEM_SELECT_COLOR:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mMenuId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mModeId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mMenuId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iput p8, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->init()V

    return-void
.end method

.method private isCurrentMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mMenuId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mModeId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isToggleModeSelected(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mMenuId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    return-void
.end method

.method protected clearContent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    :cond_3
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLView;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    goto :goto_0
.end method

.method protected init()V
    .locals 10

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setObjectTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIIILandroid/graphics/Bitmap$Config;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "BeautyItem"

    const-string v1, "initContent : mTitle is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->enableRippleEffect(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedImage(Z)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setObjectTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setButtonShapeVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    const/4 v6, 0x0

    const v7, 0x7f020019

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    const/4 v6, 0x0

    const v7, 0x7f02001b

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    goto :goto_4

    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_FONT_SIZE:F

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->TITLE_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->TITLE_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_2

    :cond_b
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_SMALL_FONT_SIZE:F

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    goto :goto_5

    :cond_c
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedToggleImage(Z)V

    goto/16 :goto_3
.end method

.method public isSelected()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mMenuId:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedImage(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BeautyItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute Menu!!!!, CommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelect(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    invoke-interface {v1, p0, p2}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelect(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedImage(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDraggable(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    :cond_1
    return-void
.end method

.method public setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setSelect(Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedImage(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedToggleImage(Z)V

    goto :goto_0
.end method

.method public setSelectedImage(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_ITEM_SELECT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->MODE_TITLE_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    goto :goto_0
.end method

.method public setSelectedToggleImage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_ITEM_SELECT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->MODE_TITLE_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    goto :goto_1
.end method

.method public updateToggleButton(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isToggleModeSelected(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    return-void
.end method
