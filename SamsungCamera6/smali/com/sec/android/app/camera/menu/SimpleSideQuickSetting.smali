.class public Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "SimpleSideQuickSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleSideQuickSetting"


# instance fields
.field private final ITEM_HEIGHT:I

.field private final ITEM_PADDING:I

.field private final ITEM_WIDTH:I

.field private SIDEQUICKSETTING_HEIGHT:I

.field private SIDEQUICKSETTING_ORIENTATION:I

.field private SIDEQUICKSETTING_WIDTH:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentAddItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

.field private mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

.field private mQuickMenuItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;IFFFF)V
    .locals 6

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const v0, 0x7f0b01c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    const v0, 0x7f0b01c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    const v0, 0x7f0b00c2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    float-to-int v0, p5

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    float-to-int v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->init()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setClipping(Z)V

    return-void
.end method

.method private init()V
    .locals 29

    const/16 v2, 0x24

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v28

    new-instance v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x24

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-direct {v8, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_0
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v27

    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xc

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const/16 v2, 0xc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    new-instance v10, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v12, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v15, v2

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v26

    new-instance v24, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v26

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v26

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v26

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v26

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    :cond_2
    new-instance v18, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v20, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    int-to-float v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-direct/range {v18 .. v25}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    goto/16 :goto_0

    :cond_5
    new-instance v18, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v21, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-direct/range {v18 .. v25}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    goto/16 :goto_1
.end method

.method private showQuickMenuItems()V
    .locals 3

    const-string v1, "SimpleSideQuickSetting"

    const-string v2, "showQuickMenuItems"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearSideQuickSetting()V
    .locals 4

    const-string v2, "SimpleSideQuickSetting"

    const-string v3, "clearSideQuickSetting"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->removeView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method protected resizeSideQuickSetting(III)V
    .locals 7

    const-string v4, "SimpleSideQuickSetting"

    const-string v5, "resizeSideQuickSetting"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->getCommandId()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->clearSideQuickSetting()V

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setSize(FF)V

    iput p1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->init()V

    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget v0, v3, v4

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->showQuickMenuItems()V

    return-void
.end method

.method protected setSideQuickSettingSize(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const-string v0, "SimpleSideQuickSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSideQuickSettingSize : original wh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to wh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setSize(FF)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    sub-int/2addr v1, p2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->moveBaseLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    sub-int/2addr v1, p2

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->moveBaseLayoutAbsolute(FF)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    sub-int/2addr v1, p1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->moveBaseLayoutAbsolute(FF)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    sub-int/2addr v1, p1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method public varargs updateSideQuickSetting([I)V
    .locals 6

    const-string v3, "SimpleSideQuickSetting"

    const-string v4, "updateSideQuickSetting"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v0, v1, v3

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->showQuickMenuItems()V

    return-void
.end method
