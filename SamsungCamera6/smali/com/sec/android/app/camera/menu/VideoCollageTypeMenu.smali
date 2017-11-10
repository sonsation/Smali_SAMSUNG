.class public Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "VideoCollageTypeMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;,
        Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;,
        Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$OnTypeSelectedListener;
    }
.end annotation


# instance fields
.field private final LIST_ITEM_HEIGHT:I

.field private final LIST_ITEM_OFFSET:I

.field private final LIST_ITEM_WIDTH:I

.field private final LIST_SCROLL_PADDING:I

.field private final MENU_ANCHOR_LINE_PADDING:I

.field private final MENU_ANCHOR_PADDING:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final TYPE_MENU_BACKGROUND_PADDING:I

.field private final TYPE_MENU_BOTTOM_PADDING:I

.field private final TYPE_MENU_POS_X:I

.field private final TYPE_MENU_POS_Y:I

.field private final TYPE_MENU_WIDTH:I

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mLastCameraId:I

.field private mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

.field private mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

.field private mOrientation:I

.field private menuPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 10

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    const v0, 0x7f0b01a7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_SCROLL_PADDING:I

    const v0, 0x7f0b0104

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    const v0, 0x7f0b0103

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_LINE_PADDING:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    const v0, 0x7f0b0109

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_X:I

    const v0, 0x7f0b010a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_Y:I

    const v0, 0x7f0b009a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_WIDTH:I

    const v0, 0x7f0b007f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BOTTOM_PADDING:I

    const v0, 0x7f0b007e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BACKGROUND_PADDING:I

    const v0, 0x7f0b0090

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_WIDTH:I

    const v0, 0x7f0b008f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_HEIGHT:I

    const v0, 0x7f0b008e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_OFFSET:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mLastCameraId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    new-instance v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_X:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_Y:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_WIDTH:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BACKGROUND_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;-><init>(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    new-instance v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_X:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_Y:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_WIDTH:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BACKGROUND_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;-><init>(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v9

    if-nez v9, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    :goto_0
    iput v9, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mLastCameraId:I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne v9, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_OFFSET:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshButtonSelected(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_WIDTH:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_SCROLL_PADDING:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BOTTOM_PADDING:I

    return v0
.end method

.method private refreshButtonSelected(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->refreshButtonSelected(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->refreshButtonSelected(I)V

    goto :goto_0
.end method

.method private refreshMenuPosition()V
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    sub-float v1, v2, v3

    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v2

    add-float/2addr v2, v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    sub-float v1, v2, v3

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    add-float v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    sub-float v1, v2, v3

    cmpg-float v2, v1, v5

    if-gez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v1, v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v2

    add-float/2addr v2, v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    sub-float v1, v2, v3

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    add-float v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float v1, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v2

    sub-float v2, v1, v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    add-float v1, v2, v3

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float v1, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v2

    sub-float v2, v1, v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    add-float v1, v2, v3

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshNextFocusView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->refreshNextFocusView(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->refreshNextFocusView(I)V

    goto :goto_0
.end method

.method private refreshView(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mLastCameraId:I

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_2
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mLastCameraId:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->hideMenu()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->hideMenu()V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->hideMenu()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->hideMenu()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshMenuPosition()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshNextFocusView()V

    return-void
.end method

.method protected onShow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshButtonSelected(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshMenuPosition()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshNextFocusView()V

    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
