.class public Lcom/sec/android/app/camera/menu/DualEffectListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "DualEffectListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final EFFECT_ROWS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DualEffectListMenu"


# instance fields
.field private final EFFECT_ITEM_HEIGHT:I

.field private final EFFECT_ITEM_WIDTH:I

.field private final EFFECT_MENU_HEIGHT:I

.field private final EFFECT_MENU_HSPACING:I

.field private final EFFECT_MENU_POS_X:I

.field private final EFFECT_MENU_VSPACING:I

.field private final EFFECT_MENU_WIDTH:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private final mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/DualEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/samsung/android/glview/GLGridList;

.field private final mMute:Z

.field private final mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IIZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IIZ)V
    .locals 11

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->SCREEN_HEIGHT:I

    const v1, 0x7f0b0012

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_POS_X:I

    const v1, 0x7f0b000f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_WIDTH:I

    iput v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_HEIGHT:I

    const v1, 0x7f0b0010

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_VSPACING:I

    const v1, 0x7f0b000e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_HSPACING:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_HSPACING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->SCREEN_HEIGHT:I

    iput v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_HEIGHT:I

    new-instance v1, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/DualEffectListMenu;Lcom/sec/android/app/camera/menu/DualEffectListMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mItemList:Landroid/util/SparseArray;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mMute:Z

    new-instance v1, Lcom/samsung/android/glview/GLGridList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_WIDTH:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_HSPACING:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_VSPACING:I

    int-to-float v9, v9

    const/4 v10, 0x3

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLGridList;->setOverScrollEffect(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p9

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    move/from16 v0, p9

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mMute:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method private getCurrentSelectedIndex()I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v2}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/Item;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/Item;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private refreshMenuPosition()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->hideMenu()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onHide()V
    .locals 0

    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x11f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlay()V

    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->hideMenu()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->hideMenu()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->hideMenu()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onShow()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x11f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V

    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->getCurrentSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
