.class public Lcom/android/launcher3/home/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.Hotseat"


# instance fields
.field private mContent:Lcom/android/launcher3/home/HotseatCellLayout;

.field private final mHasVerticalHotseat:Z

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/home/Hotseat;->mHasVerticalHotseat:Z

    .line 70
    new-instance v0, Lcom/android/launcher3/home/HotseatDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/home/HotseatDragController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/Hotseat;)V

    iput-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

    .line 71
    return-void
.end method


# virtual methods
.method beginBind(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x1

    .line 134
    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 135
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    .line 140
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentHotseatGridIcon(I)Z

    .line 141
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    goto :goto_0
.end method

.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 74
    check-cast p1, Lcom/android/launcher3/home/HomeController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/home/Hotseat;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 75
    return-void
.end method

.method changeColorForBg(Z)V
    .locals 6
    .param p1, "whiteBg"    # Z

    .prologue
    .line 167
    iget-object v4, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 168
    .local v1, "children":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 169
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 170
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 171
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_0

    .line 172
    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    .line 169
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    return-void
.end method

.method changeGrid(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/Hotseat;->changeGrid(ZZ)V

    .line 196
    return-void
.end method

.method changeGrid(ZZ)V
    .locals 6
    .param p1, "animated"    # Z
    .param p2, "changeScreenGrid"    # Z

    .prologue
    const/4 v5, 0x1

    .line 199
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 200
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->setCellDimensions()V

    .line 201
    if-nez p1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v4, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsOccupiedForAllChild()V

    .line 208
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestLayout()V

    .line 210
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 211
    .local v1, "prevGridIcon":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentHotseatGridIcon(I)Z

    move-result v2

    .line 214
    .local v2, "result":Z
    :goto_1
    if-nez p2, :cond_1

    if-eqz v2, :cond_2

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3, v1, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->gridSizeChanged(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Z)V

    .line 218
    :cond_2
    if-eqz p2, :cond_3

    .line 219
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->updateFolderGrid()V

    .line 221
    :cond_3
    return-void

    .line 205
    .end local v1    # "prevGridIcon":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .end local v2    # "result":Z
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v4, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    goto :goto_0

    .line 211
    .restart local v1    # "prevGridIcon":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    .line 212
    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentHotseatGridIcon(I)Z

    move-result v2

    goto :goto_1
.end method

.method dumpHotseatItem()V
    .locals 9

    .prologue
    .line 224
    iget-object v6, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 225
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 226
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 227
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .line 228
    .local v0, "child":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 229
    .local v5, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 230
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-string v6, "Launcher.Hotseat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpHotseatItem itemInfo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v6, "Launcher.Hotseat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpHotseatItem lp.x : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lp.y : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "child":Lcom/android/launcher3/common/view/IconView;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 163
    const-string v0, "container"

    const-string v1, "hotseat"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method getCellXFromOrder(I)I
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/launcher3/home/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "rank":I
    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 2
    .param p1, "rank"    # I

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/launcher3/home/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDragController()Lcom/android/launcher3/home/HotseatDragController;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

    return-object v0
.end method

.method getIconView(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .locals 8
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    .line 240
    if-nez p1, :cond_1

    move-object v4, v5

    .line 264
    :cond_0
    :goto_0
    return-object v4

    .line 244
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    .line 246
    .local v0, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 247
    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 249
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_3

    .line 250
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 251
    .local v2, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 246
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_2

    .line 255
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 257
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 258
    .restart local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    move-object v4, v5

    .line 264
    goto :goto_0
.end method

.method public getLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/launcher3/home/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    .end local p1    # "x":I
    :cond_0
    return p1
.end method

.method hasIcons()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 95
    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVerticalHotseat()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/launcher3/home/Hotseat;->mHasVerticalHotseat:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 128
    const v0, 0x7f1100a6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HotseatCellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/home/HotseatCellLayout;->setHotseat(Lcom/android/launcher3/home/Hotseat;)V

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->setMaxCellCount(I)V

    .line 131
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    .line 158
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetLayout()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->removeAllViewsInLayout()V

    .line 145
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 104
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->setTargetView(Landroid/view/View;)V

    .line 237
    return-void
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 2
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->setup(Lcom/android/launcher3/home/HomeController;)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 85
    return-void
.end method

.method updateCheckBox(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    .line 178
    iget-object v4, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 179
    .local v1, "children":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 180
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 181
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 182
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_3

    .line 183
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v4, v3

    .line 184
    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->updateCheckBox(Z)V

    move-object v4, v3

    .line 185
    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 187
    :cond_1
    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 180
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .restart local v3    # "v":Landroid/view/View;
    :cond_3
    instance-of v4, v3, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_2

    .line 189
    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    goto :goto_1

    .line 192
    :cond_4
    return-void
.end method
