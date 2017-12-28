.class public Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# static fields
.field private static final GRID_INFO_SPLIT:Ljava/lang/String; = "\\|"

.field private static final TAG:Ljava/lang/String; = "Launcher.DeviceProfile"


# instance fields
.field public appsExtraPaddingTop:I

.field public appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

.field private appsGridInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridInfo;",
            ">;"
        }
    .end annotation
.end field

.field public availableHeightPx:I

.field public availableWidthPx:I

.field public final defaultCellHeight:I

.field public final defaultCellWidth:I

.field private defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

.field public final defaultIconSize:I

.field public folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

.field private folderGridInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final gedHomeCellCountX:I

.field public final gedHomeCellCountY:I

.field public final gedHomeCellHeight:I

.field public final gedHomeCellWidth:I

.field public final heightPx:I

.field public homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

.field private homeGridInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridInfo;",
            ">;"
        }
    .end annotation
.end field

.field public homeMaxGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

.field public hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

.field private hotseatGridIconInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final hotseatRightLayoutWithOrientation:Z

.field public final isLandscape:Z

.field private final maxHotseatCount:I

.field public navigationBarHeight:I

.field public final widthPx:I

.field private final workspacePagePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIZ)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "availableWidth"    # I
    .param p3, "availableHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isLandscape"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    .line 69
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    .line 75
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    .line 79
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    .line 85
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isLandscape:Z

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 89
    .local v6, "res":Landroid/content/res/Resources;
    iput p4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->widthPx:I

    .line 90
    move/from16 v0, p5

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->heightPx:I

    .line 92
    iput p2, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    .line 93
    iput p3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    .line 95
    const v8, 0x7f0a00cb

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    .line 97
    if-eqz p6, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v8

    if-nez v8, :cond_3

    iget v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->widthPx:I

    sub-int/2addr v8, p2

    :goto_0
    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    .line 100
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 101
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    .line 122
    :cond_0
    :goto_1
    const v8, 0x7f0a0002

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellWidth:I

    .line 123
    const v8, 0x7f0a0001

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellHeight:I

    .line 124
    const v8, 0x7f0b004a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellCountX:I

    .line 125
    const v8, 0x7f0b004b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellCountY:I

    .line 128
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTabAOSupProject()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 129
    const v8, 0x7f0a00c4

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultCellWidth:I

    .line 130
    const v8, 0x7f0a00c3

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultCellHeight:I

    .line 131
    const/4 v2, 0x6

    .line 132
    .local v2, "cellX":I
    const/4 v3, 0x6

    .line 141
    .local v3, "cellY":I
    :goto_2
    const v8, 0x7f0a015a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    .line 142
    const v8, 0x7f0d0002

    .line 143
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatRightLayoutWithOrientation:Z

    .line 146
    const v8, 0x7f0a0102

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsExtraPaddingTop:I

    .line 150
    iget-object v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    const/high16 v9, 0x7f0c0000

    invoke-direct {p0, p1, v8, v9}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->loadGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 151
    iget-object v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    const v9, 0x7f0c0001

    invoke-direct {p0, p1, v8, v9}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->loadGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 152
    iget-object v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    const v9, 0x7f0c0002

    invoke-direct {p0, p1, v8, v9}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->loadGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 153
    iget-object v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    const v9, 0x7f0c0003

    invoke-direct {p0, p1, v8, v9}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->loadHotseatGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 154
    const v8, 0x7f0b004c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 155
    .local v4, "defaultHotseatCount":I
    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxCellCountX()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->maxHotseatCount:I

    .line 158
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    .line 159
    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->loadHomeMaxGridInfo()V

    .line 162
    const/4 v8, 0x2

    new-array v1, v8, [I

    .line 163
    .local v1, "appsGridXY":[I
    invoke-static {p1, v1}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 164
    const/4 v8, 0x0

    aget v8, v1, v8

    if-lez v8, :cond_1

    const/4 v8, 0x1

    aget v8, v1, v8

    if-gtz v8, :cond_2

    .line 165
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    aput v9, v1, v8

    .line 166
    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    aput v9, v1, v8

    .line 168
    :cond_2
    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x1

    aget v9, v1, v9

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    .line 169
    return-void

    .line 97
    .end local v1    # "appsGridXY":[I
    .end local v2    # "cellX":I
    .end local v3    # "cellY":I
    .end local v4    # "defaultHotseatCount":I
    :cond_3
    iget v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->heightPx:I

    sub-int/2addr v8, p3

    goto/16 :goto_0

    .line 102
    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 104
    if-eqz p6, :cond_5

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v5, 0x1

    .line 105
    .local v5, "isLandNavigation":Z
    :goto_3
    if-eqz v5, :cond_6

    const-string v8, "navigation_bar_width"

    const-string v9, "dimen"

    const-string v10, "android"

    .line 106
    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 108
    .local v7, "resourceId":I
    :goto_4
    if-lez v7, :cond_8

    .line 109
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    .line 110
    if-eqz v5, :cond_7

    .line 111
    iget v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->widthPx:I

    iget v9, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    .line 115
    :goto_5
    const-string v8, "Launcher.DeviceProfile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "successed to get navigation_bar_height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 104
    .end local v5    # "isLandNavigation":Z
    .end local v7    # "resourceId":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 106
    .restart local v5    # "isLandNavigation":Z
    :cond_6
    const-string v8, "navigation_bar_height"

    const-string v9, "dimen"

    const-string v10, "android"

    .line 107
    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    .line 113
    .restart local v7    # "resourceId":I
    :cond_7
    iget v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->heightPx:I

    iget v9, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    goto :goto_5

    .line 117
    :cond_8
    const-string v8, "Launcher.DeviceProfile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to get navigation_bar_height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 134
    .end local v5    # "isLandNavigation":Z
    .end local v7    # "resourceId":I
    :cond_9
    const v8, 0x7f0a0025

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultCellWidth:I

    .line 135
    const v8, 0x7f0a0024

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultCellHeight:I

    .line 136
    const v8, 0x7f0b0009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 137
    .restart local v2    # "cellX":I
    const v8, 0x7f0b000a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .restart local v3    # "cellY":I
    goto/16 :goto_2
.end method

.method private calculateCellSize(IILandroid/graphics/Rect;Lcom/android/launcher3/common/deviceprofile/GridInfo;)V
    .locals 6
    .param p1, "widthPx"    # I
    .param p2, "heightPx"    # I
    .param p3, "pagePadding"    # Landroid/graphics/Rect;
    .param p4, "grid"    # Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .prologue
    .line 333
    iget v4, p3, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    iget v5, p3, Landroid/graphics/Rect;->right:I

    sub-int v3, v4, v5

    .line 334
    .local v3, "width":I
    iget v4, p3, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v5

    .line 336
    .local v2, "height":I
    invoke-virtual {p4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v4

    invoke-virtual {p4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v1

    .line 337
    .local v1, "cellWidth":I
    invoke-virtual {p4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v4

    invoke-virtual {p4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v0

    .line 339
    .local v0, "cellHeight":I
    invoke-virtual {p4, v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->setCellWidth(I)V

    .line 340
    invoke-virtual {p4, v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->setCellHeight(I)V

    .line 341
    return-void
.end method

.method public static calculateCellWidthOrHeight(III)I
    .locals 1
    .param p0, "length"    # I
    .param p1, "gap"    # I
    .param p2, "countCell"    # I

    .prologue
    .line 527
    if-gtz p2, :cond_0

    .line 530
    .end local p0    # "length":I
    :goto_0
    return p0

    .restart local p0    # "length":I
    :cond_0
    add-int v0, p0, p1

    div-int/2addr v0, p2

    sub-int p0, v0, p1

    goto :goto_0
.end method

.method private calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V
    .locals 3
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .param p2, "height"    # I

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateIconContentHeight(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)I

    move-result v0

    .line 345
    .local v0, "contentHeight":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 346
    .local v1, "contentTop":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .end local v1    # "contentTop":I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->setContentTop(I)V

    .line 347
    return-void
.end method

.method private calculateIconContentHeight(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)I
    .locals 6
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .prologue
    .line 350
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 351
    .local v3, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getTextSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 352
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 353
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float v2, v4, v5

    .line 354
    .local v2, "textHeight":F
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getDrawablePadding()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 355
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getLineCount()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v0, v4, v5

    .line 356
    .local v0, "contentHeight":F
    float-to-int v4, v0

    return v4
.end method

.method private getAppsPadding()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 509
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 510
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 511
    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 512
    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 514
    return-object v0
.end method

.method private getFolderPadding()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 518
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 519
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 520
    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 521
    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 523
    return-object v0
.end method

.method private getMaxCellCountX()I
    .locals 4

    .prologue
    .line 560
    const/4 v1, 0x0

    .line 561
    .local v1, "maxCount":I
    iget-object v2, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 563
    .local v0, "gridInfo":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 564
    goto :goto_0

    .line 566
    .end local v0    # "gridInfo":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_0
    return v1
.end method

.method public static getPaddingForWidget()Landroid/graphics/Rect;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 542
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 544
    .local v0, "padding":Landroid/graphics/Rect;
    return-object v0
.end method

.method private getWorkspacePadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePadding(Lcom/android/launcher3/common/deviceprofile/GridInfo;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private layoutAppsGrid(Lcom/android/launcher3/Launcher;)V
    .locals 8
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 445
    const v4, 0x7f110024

    invoke-virtual {p1, v4}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/PagedView;

    .line 446
    .local v0, "appsPageView":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getAppsPadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 447
    .local v2, "padding":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 449
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 450
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsExtraPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher3/common/base/view/PagedView;->setPadding(IIII)V

    .line 458
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const v4, 0x7f110025

    invoke-virtual {p1, v4}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 459
    .local v3, "pageIndicator":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 460
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 461
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 462
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 463
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 466
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private layoutHomeGrid(Lcom/android/launcher3/Launcher;)V
    .locals 11
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 373
    const v7, 0x7f11000e

    invoke-virtual {p1, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/view/PagedView;

    .line 374
    .local v6, "workspace":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 375
    .local v2, "padding":Landroid/graphics/Rect;
    if-eqz v6, :cond_0

    .line 376
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/PagedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 377
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 378
    invoke-virtual {v6, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/launcher3/common/base/view/PagedView;->setPadding(IIII)V

    .line 383
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const v7, 0x7f11000d

    invoke-virtual {p1, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, "hotseat":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePageTotalPadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 386
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 387
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 388
    const v7, 0x800005

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 389
    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 390
    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 391
    const/4 v7, 0x0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 399
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const v7, 0x7f11009a

    invoke-virtual {p1, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 404
    .local v3, "pageIndicator":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 407
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_2
    :goto_1
    const v7, 0x7f11009d

    invoke-virtual {p1, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 424
    .local v4, "swipeAffordance":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 426
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_3
    :goto_2
    return-void

    .line 393
    .end local v3    # "pageIndicator":Landroid/view/View;
    .end local v4    # "swipeAffordance":Landroid/view/View;
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    const/16 v7, 0x50

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 394
    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 395
    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 396
    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBottom()I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 397
    iget v7, v2, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    iget v9, v2, Landroid/graphics/Rect;->right:I

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 410
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "pageIndicator":Landroid/view/View;
    :cond_5
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 411
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 414
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 416
    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 417
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 418
    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 429
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "swipeAffordance":Landroid/view/View;
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 430
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0158

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 432
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a002a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int v5, v7, v8

    .line 434
    .local v5, "swipeAffordanceHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 435
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2
.end method

.method private loadGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "gridArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/deviceprofile/GridInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 175
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "gridInfo":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 177
    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    .line 178
    .local v2, "info":Ljava/lang/String;
    const-string v7, "\\|"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "infoSplit":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 180
    new-instance v0, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-direct {v0, p1, v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 181
    .local v0, "grid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v0    # "grid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "info":Ljava/lang/String;
    .end local v3    # "infoSplit":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadHomeMaxGridInfo()V
    .locals 5

    .prologue
    .line 188
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 189
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iput-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeMaxGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 190
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 191
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 192
    .local v0, "gridInfo":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeMaxGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 193
    iput-object v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeMaxGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "gridInfo":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_1
    return-void
.end method

.method private loadHotseatGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridIconInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "gridArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/deviceprofile/GridIconInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 203
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "gridInfo":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 205
    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    .line 206
    .local v2, "info":Ljava/lang/String;
    const-string v7, "\\|"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "infoSplit":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 208
    new-instance v0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-direct {v0, p1, v3}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 209
    .local v0, "grid":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v0    # "grid":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 213
    .end local v2    # "info":Ljava/lang/String;
    .end local v3    # "infoSplit":[Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public getAppsGridInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAvailableWidthPx()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    return v0
.end method

.method public getMaxHotseatCount()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->maxHotseatCount:I

    return v0
.end method

.method public getOffsetIndicator()I
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOffsetIndicatorForScreenGrid()I
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeMaxGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getWorkspacePadding(Lcom/android/launcher3/common/deviceprofile/GridInfo;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "homeGrid"    # Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .prologue
    const/4 v5, 0x0

    .line 473
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 474
    .local v1, "workspacePadding":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 476
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 477
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageBottom()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 479
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 481
    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_0

    .line 483
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 494
    :goto_0
    return-object v0

    .line 486
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 487
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v4

    .line 486
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 490
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getWorkspacePageTotalPadding()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 500
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 505
    return-object v0
.end method

.method public isVerticalBarLayout()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatRightLayoutWithOrientation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutGrid(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutHomeGrid(Lcom/android/launcher3/Launcher;)V

    .line 362
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutAppsGrid(Lcom/android/launcher3/Launcher;)V

    .line 366
    :cond_1
    return-void
.end method

.method public setAppsCurrentGrid(II)V
    .locals 7
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .prologue
    const/4 v6, 0x0

    .line 271
    const-string v3, "Launcher.DeviceProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAppsCurrentGrid cellX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cellY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 275
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 276
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 277
    .local v0, "grid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 278
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    if-ne v3, p2, :cond_3

    .line 279
    iput-object v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 284
    .end local v0    # "grid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_0
    if-lt v1, v2, :cond_4

    .line 285
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iput-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 290
    :goto_1
    const-string v3, "Launcher.DeviceProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "availableWidthPx : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v3

    if-nez v3, :cond_2

    .line 293
    :cond_1
    iget v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getAppsPadding()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellSize(IILandroid/graphics/Rect;Lcom/android/launcher3/common/deviceprofile/GridInfo;)V

    .line 294
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V

    .line 296
    :cond_2
    return-void

    .line 275
    .restart local v0    # "grid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "grid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    :goto_2
    iput-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    goto :goto_2
.end method

.method public setCurrentGrid(II)V
    .locals 9
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .prologue
    const/4 v8, 0x0

    .line 220
    const-string v4, "Launcher.DeviceProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCurrentGrid cellX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cellY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 224
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 225
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 226
    .local v1, "grid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-ne v4, p1, :cond_8

    .line 227
    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-ne v4, p2, :cond_8

    .line 228
    iput-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 233
    .end local v1    # "grid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_0
    if-lt v2, v3, :cond_9

    .line 234
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 235
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 236
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 237
    const-string v4, "Launcher.DeviceProfile"

    const-string v5, "There is no grid info to match"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    if-nez v4, :cond_1

    .line 246
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 249
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v4

    if-nez v4, :cond_3

    .line 250
    :cond_2
    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    iget v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePageTotalPadding()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellSize(IILandroid/graphics/Rect;Lcom/android/launcher3/common/deviceprofile/GridInfo;)V

    .line 251
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V

    .line 254
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v4

    if-nez v4, :cond_6

    .line 255
    :cond_4
    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    iget v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getFolderPadding()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellSize(IILandroid/graphics/Rect;Lcom/android/launcher3/common/deviceprofile/GridInfo;)V

    .line 256
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateIconContentHeight(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)I

    move-result v0

    .line 257
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v4

    if-le v0, v4, :cond_5

    .line 258
    const-string v4, "Launcher.DeviceProfile"

    const-string v5, "folderCellHeight(%d) is less than contentHeight(%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->setCellHeight(I)V

    .line 261
    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V

    .line 264
    .end local v0    # "contentHeight":I
    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatContentTop()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->setContentTop(I)V

    .line 265
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v4

    if-gez v4, :cond_7

    .line 266
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V

    .line 268
    :cond_7
    return-void

    .line 224
    .restart local v1    # "grid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 239
    .end local v1    # "grid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_9
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 240
    :goto_2
    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 241
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 242
    :goto_3
    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    goto/16 :goto_1

    .line 239
    :cond_a
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    goto :goto_2

    .line 241
    :cond_b
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    goto :goto_3
.end method

.method public setCurrentHotseatGridIcon(I)Z
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 299
    const/4 v2, 0x0

    .line 300
    .local v2, "result":Z
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getMaxCount()I

    move-result v4

    if-lt v4, p1, :cond_3

    .line 301
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    if-eq v4, v5, :cond_2

    .line 302
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 303
    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 304
    :cond_0
    const/4 v2, 0x1

    .line 306
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 329
    :cond_2
    :goto_0
    return v2

    .line 310
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 311
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 312
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 313
    .local v0, "iconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getMaxCount()I

    move-result v4

    if-lt v4, p1, :cond_7

    .line 314
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 315
    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 316
    :cond_4
    const/4 v2, 0x1

    .line 318
    :cond_5
    iput-object v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 323
    .end local v0    # "iconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatContentTop()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->setContentTop(I)V

    .line 324
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v4

    if-gez v4, :cond_2

    .line 325
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V

    goto :goto_0

    .line 311
    .restart local v0    # "iconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
