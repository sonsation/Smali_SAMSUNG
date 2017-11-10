.class public Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ProColorTuneSettingMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;,
        Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;,
        Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;
    }
.end annotation


# static fields
.field public static final COLOR_TUNE_SLIDE_PRESET_TYPE:I = 0x0

.field public static final COLOR_TUNE_SLIDE_TONE_TYPE:I = 0x1

.field private static final CONTRAST:I = 0x2

.field private static final HIGHLIGHT:I = 0x4

.field private static final NUM_OF_COLOR_TUNE_SLIDER:I = 0x6

.field private static final SATURATION:I = 0x3

.field private static final SHADOW:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ProColorTuneSettingMenu"

.field private static final TEMPERATURE:I = 0x0

.field private static final TINT:I = 0x1


# instance fields
.field private final BACK_BUTTON_POS_X:I

.field private final BACK_BUTTON_WIDTH:I

.field private final BUTTON_TEXT_FONT_SIZE:I

.field private final BUTTON_TEXT_POSITION:I

.field private final BUTTON_TEXT_STROKE_COLOR:I

.field private final BUTTON_TEXT_STROKE_WIDTH:I

.field private final LIST_ITEM_WIDTH:I

.field private final LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

.field private final LIST_MENU_EDIT_TYPE_LEFT_MARGIN:I

.field private final MENU_BAR_LANDSCAPE_HEIGHT:I

.field private final MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

.field private final MENU_BAR_LANDSCAPE_RIGHT_MARGIN:I

.field private final MENU_BAR_PORTRAIT_HEIGHT:I

.field private final PRESET_SLIDE_NUM_OF_STEP:I

.field private final PRESET_SLIDE_VALUE_OFFSET:I

.field private final RESET_BUTTON_OFFSET:I

.field private final SAVE_BUTTON_LANDSCAPE_MARGIN:I

.field private final SAVE_BUTTON_PORTRAIT_MARGIN:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SLIDE_CENTER_DIVIDER_HEIGHT:I

.field private final SLIDE_CENTER_DIVIDER_WIDTH:I

.field private final SLIDE_FONT_SIZE:I

.field private final SLIDE_GROUP_POS_Y:I

.field private final SLIDE_GROUP_WIDTH:I

.field private final SLIDE_HEIGHT:I

.field private final SLIDE_LEFT_PADDING:I

.field private final SLIDE_POS_X:I

.field private final SLIDE_SIDE_PADDING:I

.field private final SLIDE_TEXT_HEIGHT:I

.field private final SLIDE_TEXT_STROKE_COLOR:I

.field private final SLIDE_TEXT_STROKE_WIDTH:I

.field private final SLIDE_TEXT_TOP_MARGIN:I

.field private final SLIDE_TOP_PADDING:I

.field private final SLIDE_TOUCH_AREA_HEIGHT:I

.field private final SLIDE_TOUCH_AREA_WIDTH:I

.field private final SLIDE_WIDTH:I

.field private final SLIDE_WIDTH_INTERVAL:I

.field private final TONE_SLIDE_NUM_OF_STEP:I

.field private final TONE_SLIDE_VALUE_OFFSET:I

.field private mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

.field private mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

.field private mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

.field private mColorTuneSettingSliderBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

.field private mColorTuneSlideType:I

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

.field private mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

.field private mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

.field private mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mResetButton:Lcom/samsung/android/glview/GLButton;

.field private mSaveButton:Lcom/samsung/android/glview/GLButton;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mSliderCenter:Lcom/samsung/android/glview/GLView;

.field private mSliderText:[Lcom/samsung/android/glview/GLText;

.field private mText:[Ljava/lang/String;

.field private mToneSlider:[Lcom/samsung/android/glview/GLSlider;

.field private mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

.field private mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 27

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

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    const v2, 0x7f0b02f8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    const v2, 0x7f0b009f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    const v2, 0x7f0b00a0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_LEFT_MARGIN:I

    const v2, 0x7f0b02fa

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    const v2, 0x7f0b02fd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    const v2, 0x7f0b02fc

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_RIGHT_MARGIN:I

    const v2, 0x7f0b02fb

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

    const v2, 0x7f0b02f0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    const v2, 0x7f0b02f1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    const v2, 0x7f0b02ff

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_LANDSCAPE_MARGIN:I

    const v2, 0x7f0b0300

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    const v2, 0x7f0b02fe

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    const v2, 0x7f0b02f2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_FONT_SIZE:I

    const v2, 0x7f0c0019

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_WIDTH:I

    const v2, 0x7f0e0028

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_COLOR:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_POSITION:I

    const v2, 0x7f0b00a6

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_SIDE_PADDING:I

    const v2, 0x7f0b00a7

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_SIDE_PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    const v2, 0x7f0b0302

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    const v2, 0x7f0b00a5

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    const v2, 0x7f0b0301

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_LEFT_PADDING:I

    const v2, 0x7f0b0307

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_LEFT_MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_LEFT_PADDING:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH_INTERVAL:I

    const v2, 0x7f0b0309

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_WIDTH:I

    const v2, 0x7f0b0308

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_HEIGHT:I

    const v2, 0x7f0b00a2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_WIDTH:I

    const v2, 0x7f0b00a1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_HEIGHT:I

    const v2, 0x7f0b0305

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_HEIGHT:I

    const v2, 0x7f0b0306

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_TOP_MARGIN:I

    const v2, 0x7f0c0019

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_WIDTH:I

    const v2, 0x7f0e0028

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_COLOR:I

    const v2, 0x7f0b0304

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_FONT_SIZE:I

    const v2, 0x7f0c0015

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_NUM_OF_STEP:I

    const v2, 0x7f0c0016

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    const v2, 0x7f0c0017

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_NUM_OF_STEP:I

    const v2, 0x7f0c0018

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    new-instance v2, Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    int-to-float v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/menu/ProColorTuneList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setOnProColorTuneListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    int-to-float v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

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

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    int-to-float v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    int-to-float v7, v7

    const v8, 0x7f0202ce

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a01cf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0201

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a020f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v6

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_RIGHT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x7f0e0024

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v9, v2, v25

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    int-to-float v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v11, v25

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x7f0e0024

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const v3, 0x7f0202cf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_LANDSCAPE_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_LANDSCAPE_MARGIN:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a000e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0241

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0248

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a015c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a020e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a019d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0223

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    const/16 v21, 0x0

    :goto_1
    const/4 v2, 0x6

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->getLeft()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_LEFT_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH_INTERVAL:I

    add-int/2addr v4, v5

    rsub-int/lit8 v5, v21, 0x6

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v9, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v7, v2, v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    new-instance v7, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v9, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    int-to-float v12, v3

    const v13, 0x7f02018a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_NUM_OF_STEP:I

    const/4 v15, 0x1

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    aput-object v7, v2, v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v22, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0080

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    const v3, 0x7f020082

    const v4, 0x7f020083

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setPresetSliderListener(I)V

    new-instance v7, Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_WIDTH:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_HEIGHT:I

    int-to-float v12, v2

    const v13, 0x7f02018a

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderCenter:Lcom/samsung/android/glview/GLView;

    aget-object v2, v23, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_HEIGHT:I

    int-to-float v12, v3

    aget-object v13, v23, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_FONT_SIZE:I

    int-to-float v14, v3

    const v3, 0x7f0e0010

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v15

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v7, v2, v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v11, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_TOP_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v11, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_TOP_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    add-float/2addr v5, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderCenter:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->getLeft()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_LEFT_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH_INTERVAL:I

    add-int/2addr v4, v5

    rsub-int/lit8 v5, v21, 0x6

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v14, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    int-to-float v15, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v12, v2, v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    new-instance v12, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v14, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    int-to-float v15, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    int-to-float v0, v3

    move/from16 v17, v0

    const v18, 0x7f02018a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_NUM_OF_STEP:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-direct/range {v12 .. v20}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    aput-object v12, v2, v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v22, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0080

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    const v3, 0x7f020082

    const v4, 0x7f020083

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setToneSliderListener(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderCenter:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_RIGHT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_LANDSCAPE_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float v4, v4, v25

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    sub-float v5, v5, v25

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_LANDSCAPE_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float v4, v4, v25

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    add-float v5, v5, v25

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mHideAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mShowAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mHideAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingSliderBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->isTtsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)[Lcom/samsung/android/glview/GLSlider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->speakTtsString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)[Lcom/samsung/android/glview/GLSlider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method private isTtsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPresetSliderListener(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, p1

    new-instance v1, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$1;-><init>(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    return-void
.end method

.method private setToneSliderListener(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, p1

    new-instance v1, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$2;-><init>(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    return-void
.end method

.method private speakTtsString(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingCancel()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->hideMenu()V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v2, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v4

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingReset()V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v2, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v4

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingSave()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->hideMenu()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method protected onHide()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setPreviewTouchEnabled(Z)V

    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
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
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingCancel()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->hideMenu()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_POSITION:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_POSITION:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProColorTuneListSelect(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;->onColorTuneSettingListSelect(I)V

    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->getItem(I)Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->setDim(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->refreshColorTuneItems()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setPreviewTouchEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public setColorTuneSettingListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    return-void
.end method

.method public setColorTuneSettingMenuBarListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    return-void
.end method

.method public setColorTuneSettingSlideType(I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setColorTuneSettingSliderBarListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingSliderBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

    return-void
.end method

.method public setResetButtonDim(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    return-void
.end method

.method public setSaveButtonDim(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    return-void
.end method

.method public updateColorTuneSlider([I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v1

    aget v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v3

    aget v1, p1, v3

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v4

    aget v1, p1, v4

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v5

    aget v1, p1, v5

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v6

    aget v1, p1, v6

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v1

    aget v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v3

    aget v1, p1, v3

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v4

    aget v1, p1, v4

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v5

    aget v1, p1, v5

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v6

    aget v1, p1, v6

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0
.end method
