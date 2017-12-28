.class public Lcom/android/launcher3/folder/view/FolderCellLayout;
.super Lcom/android/launcher3/common/base/view/CellLayout;
.source "FolderCellLayout.java"


# instance fields
.field private mPartialBgImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method private calculatePadding()V
    .locals 10

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getMeasuredWidth()I

    move-result v5

    .line 112
    .local v5, "measuredWidth":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getMeasuredHeight()I

    move-result v4

    .line 113
    .local v4, "measuredHeight":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getDesiredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getPaddingRight()I

    move-result v9

    sub-int v3, v8, v9

    .line 114
    .local v3, "contentsWidth":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getDesiredHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getPaddingBottom()I

    move-result v9

    sub-int v2, v8, v9

    .line 115
    .local v2, "contentsHeight":I
    if-gt v5, v3, :cond_0

    if-le v4, v2, :cond_1

    .line 116
    :cond_0
    sub-int v8, v5, v3

    div-int/lit8 v6, v8, 0x2

    .line 118
    .local v6, "paddingLR":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0037

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 119
    .local v0, "addButtonHeight":I
    sub-int v1, v4, v0

    .line 120
    .local v1, "availableHeight":I
    sub-int v8, v1, v2

    div-int/lit8 v7, v8, 0x2

    .line 121
    .local v7, "paddingTB":I
    add-int v8, v7, v0

    invoke-virtual {p0, v6, v7, v6, v8}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setPadding(IIII)V

    .line 127
    .end local v0    # "addButtonHeight":I
    .end local v1    # "availableHeight":I
    .end local v6    # "paddingLR":I
    .end local v7    # "paddingTB":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getContentIconSize()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getContentTop()I

    move-result v0

    return v0
.end method

.method protected initChildren(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mPartialBgImage:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mPartialBgImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderCellLayout;->addView(Landroid/view/View;I)V

    .line 56
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->initChildren(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 99
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/CellLayout;->onLayout(ZIIII)V

    .line 101
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mPartialBgImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 102
    .local v0, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mPartialBgImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 103
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->onMeasure(II)V

    .line 94
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->calculatePadding()V

    .line 95
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 190
    .local v0, "accessibility":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setImportantForAccessibility(I)V

    .line 191
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 192
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "accessibility":I
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 196
    .restart local v0    # "accessibility":I
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setBgImage(IIIZ)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "bgWidth"    # I
    .param p3, "bgHeight"    # I
    .param p4, "whiteBg"    # Z

    .prologue
    const/4 v7, 0x0

    .line 160
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 161
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mPartialBgImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 162
    .local v2, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    if-lez p2, :cond_0

    move v4, p2

    .line 163
    .local v4, "width":I
    :goto_0
    if-lez p3, :cond_1

    move v1, p3

    .line 164
    .local v1, "height":I
    :goto_1
    iput v4, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    .line 165
    iput v1, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iput v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    iput v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02007c

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 170
    .local v3, "partialBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, p4}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 171
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mPartialBgImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mPartialBgImage:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200d5

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, "fullBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, p4}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    .end local v0    # "fullBg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "height":I
    .end local v2    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v3    # "partialBg":Landroid/graphics/drawable/Drawable;
    .end local v4    # "width":I
    :goto_2
    return-void

    .line 162
    .restart local v2    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getMeasuredWidth()I

    move-result v4

    goto :goto_0

    .line 163
    .restart local v4    # "width":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    .line 178
    .end local v2    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v4    # "width":I
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mPartialBgImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public setCellDimensions()V
    .locals 7

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    .line 63
    .local v6, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mFixedCellWidth:I

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCellWidth:I

    .line 64
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mFixedCellHeight:I

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCellHeight:I

    .line 65
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mHeightGap:I

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mWidthGap:I

    .line 67
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCountX:I

    .line 68
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCountY:I

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mOccupied:[[Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mOccupied:[[Z

    array-length v0, v0

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCountX:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mOccupied:[[Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCountY:I

    if-eq v0, v1, :cond_1

    .line 72
    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mOccupied:[[Z

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->calculatePadding()V

    .line 76
    return-void
.end method

.method public setGridSize(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 82
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mFixedCellWidth:I

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCellWidth:I

    .line 83
    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mFixedCellHeight:I

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCellHeight:I

    .line 84
    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mHeightGap:I

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mWidthGap:I

    .line 86
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->setGridSize(II)V

    .line 88
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->calculatePadding()V

    .line 89
    return-void
.end method

.method public setPartialBackgroundAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mPartialBgImage:Landroid/widget/ImageView;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 185
    return-void
.end method

.method protected supportWhiteBg()Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->isAppsFolder()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCellDimensionsIfNeeded()V
    .locals 7

    .prologue
    .line 140
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 141
    .local v1, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mFixedCellWidth:I

    iget-object v6, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mFixedCellHeight:I

    iget-object v6, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 142
    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mWidthGap:I

    iget-object v6, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 143
    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCountX:I

    iget-object v6, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 144
    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mCountY:I

    iget-object v6, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 145
    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setCellDimensions()V

    .line 147
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 148
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 149
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 150
    .local v4, "v":Landroid/view/View;
    instance-of v5, v4, Lcom/android/launcher3/common/view/IconView;

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 151
    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    .line 152
    .local v3, "icon":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v3}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 153
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 148
    .end local v3    # "icon":Lcom/android/launcher3/common/view/IconView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method
