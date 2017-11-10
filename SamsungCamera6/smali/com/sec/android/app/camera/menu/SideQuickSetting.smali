.class public Lcom/sec/android/app/camera/menu/SideQuickSetting;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "SideQuickSetting.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SideQuickSetting"


# instance fields
.field private final ANCHOR_HEIGHT:I

.field private final ANCHOR_LEFT_PADDING:I

.field private final ANCHOR_POS_X:I

.field private final ANCHOR_POS_Y_OFFSET:I

.field private final ANCHOR_WIDTH:I

.field private final SCREEN_HEIGHT:I

.field private final SIDE_QUICK_SETTING_HEIGHT:I

.field private final SIDE_QUICK_SETTING_ITEM_HEIGHT:I

.field private final SIDE_QUICK_SETTING_ITEM_MAX_COUNT:I

.field private final SIDE_QUICK_SETTING_ITEM_WIDTH:I

.field private final SIDE_QUICK_SETTING_POS_Y:I

.field private mAnchors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentAddItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

.field private mQuickMenuItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

.field private mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;)V
    .locals 6

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SCREEN_HEIGHT:I

    const v0, 0x7f0b01ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_POS_Y:I

    const v0, 0x7f0b01c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_WIDTH:I

    const v0, 0x7f0b01c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_POS_Y:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_HEIGHT:I

    const v0, 0x7f0b0105

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_WIDTH:I

    const v0, 0x7f0b0101

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_HEIGHT:I

    const v0, 0x7f0b0102

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_LEFT_PADDING:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_LEFT_PADDING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_POS_Y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_POS_Y_OFFSET:I

    const v0, 0x7f0c0047

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_MAX_COUNT:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mAnchors:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p6, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->initQuickMenuItem()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->showQuickMenuItems()V

    return-void
.end method

.method private initQuickMenuItem()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x79

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v28

    const/16 v27, 0x0

    :goto_0
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setVisibility(I)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_POS_X:I

    int-to-float v12, v3

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_WIDTH:I

    int-to-float v14, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_HEIGHT:I

    int-to-float v15, v3

    const/16 v16, 0x1

    const v17, 0x7f020158

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    const/4 v3, 0x4

    invoke-virtual {v10, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mAnchors:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x24

    invoke-static {v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v30

    new-instance v17, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v30

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v30

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0x24

    aput v5, v3, v4

    const/4 v4, 0x4

    move-object/from16 v0, v30

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v3, v4

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const/16 v3, 0x24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v18

    new-instance v11, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v14, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_WIDTH:I

    int-to-float v15, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    int-to-float v0, v3

    move/from16 v16, v0

    invoke-direct/range {v11 .. v18}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setVisibility(I)V

    const/16 v3, 0x78

    invoke-static {v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v29

    new-instance v25, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, v29

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v29

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v29

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0x78

    aput v5, v3, v4

    const/4 v4, 0x4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v3, v4

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const/16 v3, 0x78

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v26

    new-instance v19, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    int-to-float v0, v3

    move/from16 v24, v0

    invoke-direct/range {v19 .. v26}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSettingButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSettingButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setVisibility(I)V

    return-void
.end method

.method private showQuickMenuItems()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearSideQuickSetting()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mAnchors:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->getCommandId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->removeView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public final getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mAnchors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected refreshItem()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->refreshItem()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs updateSideQuickSetting([I)V
    .locals 11

    iget v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_MAX_COUNT:I

    new-array v6, v8, [I

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v8, p1

    if-eqz v8, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    aget v9, p1, v2

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    aget v8, p1, v2

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_HEIGHT:I

    add-int/lit8 v9, v7, 0x2

    iget v10, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x1

    div-int v3, v8, v9

    iget v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    add-int v5, v8, v3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_5

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    aget v9, v6, v2

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    if-eqz v4, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setDim(Z)V

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->refreshItem()V

    const/4 v8, 0x0

    int-to-float v9, v5

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->moveLayoutAbsolute(FF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setOrientation(I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mAnchors:Landroid/util/SparseArray;

    aget v9, v6, v2

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_3

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_POS_Y_OFFSET:I

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    :cond_3
    iget v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    add-int/2addr v8, v3

    add-int/2addr v5, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v8, "SideQuickSetting"

    const-string v9, "There\'s no item. please check SideQuickSettingResourceData"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v8, "SideQuickSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Side bar IndexOut for index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSettingButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSettingButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->showQuickMenuItems()V

    return-void
.end method
