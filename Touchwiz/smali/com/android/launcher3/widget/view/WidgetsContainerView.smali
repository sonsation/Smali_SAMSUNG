.class public Lcom/android/launcher3/widget/view/WidgetsContainerView;
.super Lcom/android/launcher3/common/base/view/BaseContainerView;
.source "WidgetsContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/common/drag/DragSource;


# static fields
.field private static final DEBUG:Z = false

.field private static final PRELOAD_SCREEN_HEIGHT_MULTIPLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WidgetsContainerView"


# instance fields
.field private mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

.field private mContent:Landroid/view/View;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPadding:Landroid/graphics/Rect;

.field private mView:Lcom/android/launcher3/widget/view/WidgetsRecyclerView;

.field private mWidgetInstructionToast:Landroid/widget/Toast;

.field private mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mPadding:Landroid/graphics/Rect;

    move-object v0, p1

    .line 94
    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 96
    new-instance v0, Lcom/android/launcher3/widget/WidgetsListAdapter;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, p1, p0, p0, v1}, Lcom/android/launcher3/widget/WidgetsListAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    .line 97
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/view/WidgetsContainerView;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetsContainerView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private beginDragging(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 190
    instance-of v2, p1, Lcom/android/launcher3/widget/view/WidgetCell;

    if-eqz v2, :cond_1

    .line 192
    const v2, 0x7f110102

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetImageView;

    .line 196
    .local v0, "image":Lcom/android/launcher3/widget/view/WidgetImageView;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 197
    const/4 v1, 0x0

    .line 207
    .end local v0    # "image":Lcom/android/launcher3/widget/view/WidgetImageView;
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return v1

    .line 200
    .restart local v0    # "image":Lcom/android/launcher3/widget/view/WidgetImageView;
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 202
    check-cast p1, Lcom/android/launcher3/widget/view/WidgetCell;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->beginDraggingWidget(Lcom/android/launcher3/widget/view/WidgetCell;Lcom/android/launcher3/widget/view/WidgetImageView;)Z

    goto :goto_0

    .line 204
    .end local v0    # "image":Lcom/android/launcher3/widget/view/WidgetImageView;
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    const-string v2, "WidgetsContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected dragging view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private beginDraggingWidget(Lcom/android/launcher3/widget/view/WidgetCell;Lcom/android/launcher3/widget/view/WidgetImageView;)Z
    .locals 20
    .param p1, "v"    # Lcom/android/launcher3/widget/view/WidgetCell;
    .param p2, "image"    # Lcom/android/launcher3/widget/view/WidgetImageView;

    .prologue
    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/widget/view/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 215
    .local v11, "createItemInfo":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    const/high16 v13, 0x3f800000    # 1.0f

    .line 216
    .local v13, "scale":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/widget/view/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 218
    .local v12, "bounds":Landroid/graphics/Rect;
    instance-of v1, v11, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_2

    move-object v15, v11

    .line 222
    check-cast v15, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 223
    .local v15, "createWidgetInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v19

    .line 225
    .local v19, "size":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/widget/view/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 226
    .local v16, "icon":Landroid/graphics/Bitmap;
    const/high16 v17, 0x3fa00000    # 1.25f

    .line 227
    .local v17, "minScale":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v17

    float-to-int v1, v1

    const/4 v2, 0x0

    aget v2, v19, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 229
    .local v4, "maxWidth":I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 230
    .local v6, "previewSizeBeforeScale":[I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->getWidgetPreviewLoader()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v15, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 233
    .local v9, "preview":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 235
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    aget v2, v6, v2

    sub-int/2addr v1, v2

    div-int/lit8 v18, v1, 0x2

    .line 236
    .local v18, "padding":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 237
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v1

    mul-int v1, v1, v18

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int v18, v1, v2

    .line 240
    :cond_0
    iget v1, v12, Landroid/graphics/Rect;->left:I

    add-int v1, v1, v18

    iput v1, v12, Landroid/graphics/Rect;->left:I

    .line 241
    iget v1, v12, Landroid/graphics/Rect;->right:I

    sub-int v1, v1, v18

    iput v1, v12, Landroid/graphics/Rect;->right:I

    .line 243
    .end local v18    # "padding":I
    :cond_1
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v13, v1, v2

    .line 253
    .end local v4    # "maxWidth":I
    .end local v6    # "previewSizeBeforeScale":[I
    .end local v15    # "createWidgetInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v16    # "icon":Landroid/graphics/Bitmap;
    .end local v17    # "minScale":F
    .end local v19    # "size":[I
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v8, p2

    move-object/from16 v10, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/launcher3/Launcher;->beginDragFromWidget(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;F)V

    .line 255
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    const/4 v1, 0x1

    return v1

    .line 245
    .end local v9    # "preview":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/widget/view/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 246
    .local v14, "createShortcutInfo":Lcom/android/launcher3/widget/PendingAddShortcutInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v14}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 247
    .local v16, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 248
    .restart local v9    # "preview":Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    iput v1, v11, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    iput v1, v11, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v13, v1, v2

    goto :goto_0
.end method

.method private getWidgetPreviewLoader()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    if-nez v0, :cond_0

    .line 317
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    return-object v0
.end method


# virtual methods
.method public addWidgets(Lcom/android/launcher3/common/model/WidgetsModel;)V
    .locals 1
    .param p1, "model"    # Lcom/android/launcher3/common/model/WidgetsModel;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/view/WidgetsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetsRecyclerView;->setWidgets(Lcom/android/launcher3/common/model/WidgetsModel;)V

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->setWidgetsModel(Lcom/android/launcher3/common/model/WidgetsModel;)V

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsListAdapter;->notifyDataSetChanged()V

    .line 313
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/view/WidgetsRecyclerView;

    return-object v0
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x5

    return v0
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public getRevealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f11011c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetCell;

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09005d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    .line 266
    if-nez p3, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 274
    :cond_0
    if-nez p3, :cond_1

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 277
    :cond_1
    return-void
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p2, "succeedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .local p3, "failedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->onFinishInflate()V

    .line 107
    const v0, 0x7f110051

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mContent:Landroid/view/View;

    .line 108
    const v0, 0x7f11011d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetsRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/view/WidgetsRecyclerView;

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/view/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/view/WidgetsRecyclerView;

    new-instance v1, Lcom/android/launcher3/widget/view/WidgetsContainerView$1;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/widget/view/WidgetsContainerView$1;-><init>(Lcom/android/launcher3/widget/view/WidgetsContainerView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->getPaddingRight()I

    move-result v3

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->getPaddingBottom()I

    move-result v4

    .line 120
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 122
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v4

    .line 163
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    const-string v5, "WidgetsContainerView"

    const-string v6, "onLonglick dragging enabled?."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->beginDragging(Landroid/view/View;)Z

    move-result v4

    .line 170
    .local v4, "status":Z
    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v5, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 173
    .local v1, "info":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getProviderInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 174
    .local v3, "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    invoke-virtual {v3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v5

    iput v5, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 175
    invoke-virtual {v3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v5

    iput v5, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 176
    invoke-virtual {v3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v5

    iput v5, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 177
    invoke-virtual {v3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v5

    iput v5, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 179
    new-instance v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v5, p1}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    .line 180
    .local v0, "hostLoader":Lcom/android/launcher3/widget/WidgetHostViewLoader;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->preloadWidget()Z

    move-result v2

    .line 184
    .local v2, "preloadStatus":Z
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    goto :goto_0
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mContent:Landroid/view/View;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 296
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    .line 297
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 299
    .local v0, "background":Landroid/graphics/drawable/InsetDrawable;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 300
    .local v6, "bgPadding":Landroid/graphics/Rect;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 301
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/view/WidgetsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/view/WidgetsRecyclerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/view/WidgetsRecyclerView;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/widget/view/WidgetsRecyclerView;->updateBackgroundPadding(Landroid/graphics/Rect;)V

    .line 304
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/view/WidgetsRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetsRecyclerView;->scrollToPosition(I)V

    .line 139
    return-void
.end method
