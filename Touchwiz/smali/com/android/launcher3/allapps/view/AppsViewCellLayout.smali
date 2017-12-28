.class public Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
.super Lcom/android/launcher3/common/base/view/CellLayout;
.source "AppsViewCellLayout.java"


# instance fields
.field private mGridTopBottomPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setupView()V

    .line 48
    return-void
.end method

.method private isNeedGridPadding()Z
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isGridState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isSwitchingGridToNormal()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f8

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mGridTopBottomPadding:I

    .line 181
    return-void
.end method


# virtual methods
.method public getContentIconSize()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getContentTop()I

    move-result v0

    return v0
.end method

.method protected getTopPaddingCustomPage()I
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->isNeedGridPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mGridTopBottomPadding:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyOccupied()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountY:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isGridState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isTidyState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->isNeedGridPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mGridTopBottomPadding:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->onMeasure(II)V

    .line 162
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 90
    .local v0, "handled":Z
    return v0
.end method

.method public removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->removeView(Landroid/view/View;)V

    .line 136
    :cond_0
    return-void
.end method

.method public setBgImage(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const v4, 0x7f0200d6

    const v3, 0x7f02006d

    const/4 v2, 0x0

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void

    .line 118
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setCellDimensions()V
    .locals 7

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    .line 53
    .local v6, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mFixedCellWidth:I

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCellWidth:I

    .line 54
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mFixedCellHeight:I

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCellHeight:I

    .line 55
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mHeightGap:I

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mWidthGap:I

    .line 57
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountX:I

    .line 58
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountY:I

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mOccupied:[[Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mOccupied:[[Z

    array-length v0, v0

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountX:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mOccupied:[[Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountY:I

    if-eq v0, v1, :cond_1

    .line 61
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mOccupied:[[Z

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    .line 66
    return-void
.end method

.method protected setChildrenLayout(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->isNeedGridPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mGridTopBottomPadding:I

    add-int/2addr p2, v0

    .line 168
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mGridTopBottomPadding:I

    sub-int/2addr p4, v0

    .line 170
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenLayout(IIII)V

    .line 171
    return-void
.end method

.method protected supportWhiteBg()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected updateChildIfReorderAnimationCancel()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public updateIconViews(Z)V
    .locals 5
    .param p1, "reapply"    # Z

    .prologue
    .line 69
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 70
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 73
    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 74
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 75
    .local v1, "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle(Z)V

    .line 69
    .end local v1    # "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 76
    :cond_1
    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 77
    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    .line 78
    .local v3, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v3}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 84
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    return-void
.end method
