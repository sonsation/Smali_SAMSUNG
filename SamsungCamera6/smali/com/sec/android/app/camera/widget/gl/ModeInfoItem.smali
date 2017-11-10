.class public Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "ModeInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModeInfoItem"


# instance fields
.field private final DESCRIPTION_DIVIDER_WIDTH_LANDSCAPE:F

.field private final DESCRIPTION_DIVIDER_WIDTH_PORTRAIT:F

.field private final DESCRIPTION_FONT_SIZE:F

.field private final DESCRIPTION_LINE_SPACING:F

.field private final DESCRIPTION_MARGIN:F

.field private final DESCRIPTION_PADDING:F

.field private final DESCRIPTION_POS_X:F

.field private final DESCRIPTION_WIDTH_LANDSCAPE:F

.field private final DESCRIPTION_WIDTH_PORTRAIT:F

.field private final MODE_DOWNLOAD_ICON_HEIGHT:F

.field private final MODE_INFO_BUTTON_HEIGHT:F

.field private final MODE_INFO_BUTTON_LEFT_MARGIN:F

.field private final MODE_INFO_BUTTON_WIDTH:F

.field private final MODE_INFO_DIVIDER_COLOR:I

.field private final MODE_INFO_DIVIDER_POS_X:F

.field private final MODE_INFO_DIVIDER_THICKNESS:I

.field private final MODE_INFO_ICON_POS_X:F

.field private final MODE_INFO_ICON_WIDTH:F

.field private final MODE_INFO_ITEM_HEIGHT:F

.field private final MODE_INFO_TITLE_FONT_COLOR:I

.field private final MODE_INFO_TITLE_FONT_SIZE:F

.field private final MODE_INFO_TITLE_TEXT_HEIGHT:F

.field private final MODE_INFO_TITLE_TOP_MARGIN:F

.field private final MODE_INFO_TITLE_WIDTH:F

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mDescription:Lcom/samsung/android/glview/GLText;

.field private mDescriptionHeight:F

.field private mDescriptionLandscapeHeight:F

.field private mDivider:Lcom/samsung/android/glview/GLLine;

.field private mDownloadIcon:Lcom/samsung/android/glview/GLImage;

.field private mIsDownloadedShootingMode:Z

.field private final mMenuId:I

.field private final mModeId:I

.field private mModeInfoButton:Lcom/samsung/android/glview/GLButton;

.field private mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;

.field private mTitleHeight:F

.field private mTitleText:Lcom/samsung/android/glview/GLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 3

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    const v0, 0x7f0b011d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_POS_X:F

    const v0, 0x7f0b011e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    const v0, 0x7f0b0117

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    const v0, 0x7f0b0115

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_HEIGHT:F

    const v0, 0x7f0b0116

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_LEFT_MARGIN:F

    const v0, 0x7f0b0112

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_DOWNLOAD_ICON_HEIGHT:F

    const v0, 0x7f0b0122

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_WIDTH:F

    const v0, 0x7f0b0120

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TEXT_HEIGHT:F

    const v0, 0x7f0b0121

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    const v0, 0x7f0e0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_COLOR:I

    const v0, 0x7f0b028e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_SIZE:F

    const v0, 0x7f0c0026

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    const v0, 0x7f0e0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_COLOR:I

    const v0, 0x7f0b011b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_POS_X:F

    const v0, 0x7f0b011c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ITEM_HEIGHT:F

    const v0, 0x7f0b0118

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    const v0, 0x7f0b0119

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    const v0, 0x7f0b011a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_PORTRAIT:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_LANDSCAPE:F

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_PORTRAIT:F

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_POS_X:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_DIVIDER_WIDTH_PORTRAIT:F

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_LANDSCAPE:F

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_POS_X:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_DIVIDER_WIDTH_LANDSCAPE:F

    const v0, 0x7f0b031d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_LINE_SPACING:F

    const v0, 0x7f0b028d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_FONT_SIZE:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mIsDownloadedShootingMode:Z

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mMenuId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeId:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->init()V

    return-void
.end method

.method private getShootingModeSubDescription(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method private isCurrentMode()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mIsDownloadedShootingMode:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mMenuId:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeId:I

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_1
    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mMenuId:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeId:I

    if-ne v3, v4, :cond_4

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByCurrentShootingMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSeparatedShootingModeName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected clearContent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLLine;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    :cond_4
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method public getDescription()Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method public getShootingModeDescription(I)Ljava/lang/String;
    .locals 4

    const-string v1, "ModeInfoItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShootingModeDescription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    const-string v1, "ModeInfoItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShootingModeDescription : invalid shootingmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1b
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_7
        0x2 -> :sswitch_4
        0x7 -> :sswitch_1
        0xe -> :sswitch_8
        0x11 -> :sswitch_7
        0x17 -> :sswitch_3
        0x23 -> :sswitch_5
        0x28 -> :sswitch_6
        0x2a -> :sswitch_f
        0x2d -> :sswitch_12
        0x2e -> :sswitch_13
        0x2f -> :sswitch_1a
        0x31 -> :sswitch_e
        0x34 -> :sswitch_b
        0x37 -> :sswitch_a
        0x38 -> :sswitch_2
        0x3a -> :sswitch_9
        0x3b -> :sswitch_c
        0x3e -> :sswitch_16
        0x3f -> :sswitch_15
        0x40 -> :sswitch_19
        0x43 -> :sswitch_10
        0x44 -> :sswitch_17
        0x45 -> :sswitch_11
        0x46 -> :sswitch_14
        0x48 -> :sswitch_4
        0x4a -> :sswitch_18
        0x4b -> :sswitch_d
        0x4d -> :sswitch_b
        0x4e -> :sswitch_b
        0x4f -> :sswitch_1b
    .end sparse-switch
.end method

.method protected init()V
    .locals 31

    const/16 v26, 0x0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isDownloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mIsDownloadedShootingMode:Z

    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_LEFT_MARGIN:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_HEIGHT:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->addView(Lcom/samsung/android/glview/GLView;)V

    const/16 v29, 0x0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_5

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, v26

    iget-object v14, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeDesc:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->getShootingModeSubDescription(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v28

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_PORTRAIT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v14, v2, v3}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v1, v0

    mul-float v1, v1, v28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_LINE_SPACING:F

    add-int/lit8 v3, v27, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescriptionHeight:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_LANDSCAPE:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v14, v2, v3}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v1, v0

    mul-float v1, v1, v28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_LINE_SPACING:F

    add-int/lit8 v3, v25, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescriptionLandscapeHeight:F

    new-instance v8, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_PORTRAIT:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescriptionHeight:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v15, v1, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_COLOR:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    const-string v1, ""

    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setContentDescription(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    new-instance v15, Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_DIVIDER_WIDTH_PORTRAIT:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v0, v1

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_COLOR:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v0, v1

    move/from16 v22, v0

    invoke-direct/range {v15 .. v22}, Lcom/samsung/android/glview/GLLine;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLLine;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mIsDownloadedShootingMode:Z

    if-eqz v1, :cond_8

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    :cond_2
    :goto_3
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020107

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_WIDTH:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v30

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TEXT_HEIGHT:F

    move/from16 v0, v30

    int-to-float v2, v0

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    new-instance v15, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_LEFT_MARGIN:F

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_WIDTH:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_SIZE:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_COLOR:I

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setSizeForOrientation(I)V

    return-void

    :cond_4
    new-instance v8, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_LEFT_MARGIN:F

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->getShootingModeDescription(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ModeInfoItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute Menu!!!!, CommandId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->isCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;->onSelect(Lcom/samsung/android/glview/GLView;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setSizeForOrientation(I)V

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->onOrientationChanged(I)V

    return-void
.end method

.method public final setDividerVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/glview/GLLine;->setVisibility(IZ)V

    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setDraggable(Z)V

    :cond_1
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setSelectListener(Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;

    return-void
.end method

.method public setSizeForOrientation(I)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescriptionLandscapeHeight:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    mul-float/2addr v3, v8

    add-float v1, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ITEM_HEIGHT:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ITEM_HEIGHT:F

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    sub-float/2addr v2, v3

    div-float v0, v2, v8

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_LANDSCAPE:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    mul-float/2addr v4, v8

    sub-float v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_POS_X:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_DIVIDER_WIDTH_LANDSCAPE:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLLine;->setLine(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/glview/GLLine;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_POS_X:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setSize(FF)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v7, v0}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getLayoutX()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getLayoutY()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_DOWNLOAD_ICON_HEIGHT:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v3, v0

    invoke-virtual {v2, v7, v3}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescriptionHeight:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    mul-float/2addr v3, v8

    add-float v1, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ITEM_HEIGHT:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ITEM_HEIGHT:F

    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    sub-float/2addr v2, v3

    div-float v0, v2, v8

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_PORTRAIT:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    mul-float/2addr v4, v8

    sub-float v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_POS_X:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_DIVIDER_WIDTH_PORTRAIT:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLLine;->setLine(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/glview/GLLine;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_POS_X:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    :goto_2
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setSize(FF)V

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v7, v0}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getLayoutX()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getLayoutY()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_DOWNLOAD_ICON_HEIGHT:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v3, v0

    invoke-virtual {v2, v7, v3}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    goto :goto_2
.end method
