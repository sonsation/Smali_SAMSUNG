.class public Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "WatermarkThumbnailListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;,
        Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$NextMenuAdapter;,
        Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WatermarkThumbnailListMenu"

.field private static final WATERMARK_ANIMATION_DURATION:I = 0x1f4

.field private static final WATERMARK_CATEGORY_COUNT:I = 0x6

.field private static final WATERMARK_ITEM_TEXT_FONT_SIZE:I

.field private static final WATERMARK_ROWS:I = 0x3


# instance fields
.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final WATERMARK_BUTTON_BOTTOM_MARGIN:I

.field private final WATERMARK_BUTTON_HEIGHT:I

.field private final WATERMARK_BUTTON_POS_X:I

.field private final WATERMARK_BUTTON_POS_Y:I

.field private final WATERMARK_BUTTON_RIGHT_MARGIN:I

.field private final WATERMARK_BUTTON_WIDTH:I

.field private final WATERMARK_ITEM_HEIGHT:I

.field private final WATERMARK_ITEM_WIDTH:I

.field private final WATERMARK_LINE_THICKNESS:I

.field private final WATERMARK_MENU_BOTTOM_MARGIN:I

.field private final WATERMARK_MENU_HEIGHT:I

.field private final WATERMARK_MENU_POS_X:I

.field private final WATERMARK_MENU_POS_Y:I

.field private final WATERMARK_MENU_WIDTH:I

.field private final WATERMARK_TAB_MENU_HEIGHT:I

.field private final WATERMARK_TAB_TEXT_PADDING:I

.field private final WATERMARK_TEXT_COLOR:I

.field private final WATERMARK_TEXT_HEIGHT:I

.field private final WATERMARK_TEXT_SIZE:F

.field private final WATERMARK_TEXT_STROKE_COLOR:I

.field private final WATERMARK_TEXT_STROKE_WIDTH:I

.field private final WATERMARK_TEXT_WIDTH:I

.field private final mAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;

.field private mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mFlingGestureDetector:Landroid/view/GestureDetector;

.field private mIsEffectFilterMenuShowing:Z

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/WatermarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/samsung/android/glview/GLGridList;

.field private mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mNextAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$NextMenuAdapter;

.field private mNextItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/WatermarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNextList:Lcom/samsung/android/glview/GLGridList;

.field private mNextResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mOrientation:I

.field private mRes:[Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private final mTabItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTabList:Lcom/samsung/android/glview/GLList;

.field private final mTabMenuAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

.field private mWatermarkCategoryResource:Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;

.field private mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

.field private mWatermarkFilterText:Lcom/samsung/android/glview/GLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0b0383

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_TEXT_FONT_SIZE:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_HEIGHT:I

    const v0, 0x7f0b0239

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    const v0, 0x7f0b023a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_Y:I

    const v0, 0x7f0b0238

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_BOTTOM_MARGIN:I

    const v0, 0x7f0b023b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_LINE_THICKNESS:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_LINE_THICKNESS:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_WIDTH:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_LINE_THICKNESS:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_HEIGHT:I

    const v0, 0x7f0b0384

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TAB_MENU_HEIGHT:I

    const v0, 0x7f0b0385

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TAB_TEXT_PADDING:I

    const v0, 0x7f0b037e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_WIDTH:I

    const v0, 0x7f0b0379

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_HEIGHT:I

    const v0, 0x7f0b037a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_RIGHT_MARGIN:I

    const v0, 0x7f0b0378

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_BOTTOM_MARGIN:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_POS_Y:I

    const v0, 0x7f0b037d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_WIDTH:I

    const v0, 0x7f0b037b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_HEIGHT:I

    const v0, 0x7f0b037c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_SIZE:F

    const v0, 0x7f0e000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_COLOR:I

    const v0, 0x7f0c0019

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0e000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_STROKE_COLOR:I

    new-instance v0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;

    new-instance v0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$NextMenuAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$NextMenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$NextMenuAdapter;

    new-instance v0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabMenuAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabItemList:Landroid/util/SparseArray;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mRes:[Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextItemList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mIsEffectFilterMenuShowing:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->initGridResources()V

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWatermarkCategory()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getWatermarkGridResources(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWatermarkCategory()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getWatermarkGridResources(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkCategoryResource:Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    new-instance v0, Lcom/samsung/android/glview/GLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TAB_MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLList;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setOrientation(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabMenuAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setOverScrollEffect(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_WIDTH:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_LINE_THICKNESS:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_LINE_THICKNESS:I

    int-to-float v8, v8

    const/4 v9, 0x3

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const v1, 0x7f0202d1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setScrollBarResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setScrollBarAlpha(F)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_WIDTH:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setColumnWidth(FZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLGridList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    new-instance v0, Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_WIDTH:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_LINE_THICKNESS:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_LINE_THICKNESS:I

    int-to-float v8, v8

    const/4 v9, 0x3

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    const v1, 0x7f0202d1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setScrollBarResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setScrollBarAlpha(F)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_WIDTH:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setColumnWidth(FZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$NextMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02009b

    const v5, 0x7f02009c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v1, 0x7f0a0286

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_BOTTOM_MARGIN:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_RIGHT_MARGIN:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_RIGHT_MARGIN:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_BOTTOM_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_RIGHT_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_POS_Y:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v6, 0x7f0a0286

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_SIZE:F

    iget v8, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_BOTTOM_MARGIN:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_RIGHT_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_WIDTH:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_RIGHT_MARGIN:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_BOTTOM_MARGIN:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_RIGHT_MARGIN:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TEXT_WIDTH:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_BUTTON_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1e7

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLList;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setOrientation(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_HEIGHT:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setColumnWidth(FZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_HEIGHT:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setColumnWidth(FZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$NextMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    goto/16 :goto_3
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;Lcom/samsung/android/glview/GLView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->refreshItemBG(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkCategoryResource:Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1700()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_TEXT_FONT_SIZE:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TAB_TEXT_PADDING:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TAB_MENU_HEIGHT:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/samsung/android/glview/GLList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->startAnimationForChangingCategory(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getWatermarkGridResources(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_WIDTH:I

    return v0
.end method

.method private checkWordCutStatus(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-lt p1, v2, :cond_1

    const/4 v3, 0x4

    if-gt p1, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabMenuAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;->getCurrentLeft()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TAB_TEXT_PADDING:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;->getCurrentRight()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TAB_TEXT_PADDING:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private clearGridResources()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mRes:[Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getWatermarkGridResources(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mRes:[Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private initGridResources()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mRes:[Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/camera/resourcedata/WatermarkEmojiResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/WatermarkEmojiResourceData;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mRes:[Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/camera/resourcedata/WatermarkTimeResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/WatermarkTimeResourceData;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mRes:[Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/app/camera/resourcedata/WatermarkTravelResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/WatermarkTravelResourceData;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mRes:[Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/app/camera/resourcedata/WatermarkWeatherResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/WatermarkWeatherResourceData;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mRes:[Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v1, 0x4

    new-instance v2, Lcom/sec/android/app/camera/resourcedata/WatermarkFoodResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/WatermarkFoodResourceData;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mRes:[Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v1, 0x5

    new-instance v2, Lcom/sec/android/app/camera/resourcedata/WatermarkSportResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/WatermarkSportResourceData;-><init>()V

    aput-object v2, v0, v1

    return-void
.end method

.method private refreshItemBG()V
    .locals 5

    const-string v3, "WatermarkThumbnailListMenu"

    const-string v4, "refreshItemBG"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->getCommandId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWatermarkId()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->setSelectBGVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->setSelectBGVisibility(I)V

    goto :goto_1
.end method

.method private refreshItemBG(Lcom/samsung/android/glview/GLView;)V
    .locals 5

    const-string v3, "WatermarkThumbnailListMenu"

    const-string v4, "refreshItemBG"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->getCommandId()I

    move-result v4

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->getCommandID()I

    move-result v3

    if-ne v4, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->setSelectBGVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/WatermarkItem;->setSelectBGVisibility(I)V

    goto :goto_1
.end method

.method private refreshTabItems()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkCategoryResource:Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkCategoryResource:Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;->refreshItem()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    return-void
.end method

.method private setShowHideAnimation()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const v1, 0x7f0c000a

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v0, v3, v3, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v0, v6, v3, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-static {v0, v6, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v0, v5, v3, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-static {v0, v5, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v0, v4, v3, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startAnimationForChangingCategory(II)V
    .locals 6

    const/16 v5, 0x1f4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v4, v5, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-static {v2, p2, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->cancelAnimation()V

    new-instance v2, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$2;-><init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$3;-><init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "WatermarkThumbnailListMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->clearGridResources()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkCategoryResource:Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;

    if-eqz v0, :cond_5

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkCategoryResource:Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$MenuAdapter;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$NextMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$NextMenuAdapter;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabMenuAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->unregisterFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    :cond_6
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4

    const/16 v3, 0x7f

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mIsEffectFilterMenuShowing:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectListType(I)V

    const v0, 0x7f0c000b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onLaunchMenu(I)Z

    move v0, v1

    goto :goto_0
.end method

.method public onFlingDirection(II)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    const/4 p1, 0x1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->hideMenu()V

    :goto_1
    return v0

    :cond_2
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onHide()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mIsEffectFilterMenuShowing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlay()V

    :goto_0
    const v2, 0x7f0c0003

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v2, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$1;-><init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const v2, 0x7f0c0009

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "WatermarkThumbnailListMenu"

    const-string v1, "onHideAnimationEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mIsEffectFilterMenuShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_0
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->hideMenu()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setShowHideAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLGridList;->setColumnWidth(FZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLGridList;->setColumnWidth(FZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mOrientation:I

    if-ne v0, v4, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/glview/GLList;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLList;->setOrientation(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLGridList;->setColumnWidth(FZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLGridList;->setColumnWidth(FZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_HEIGHT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mNextList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_POS_X:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_MENU_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLList;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLList;->setOrientation(I)V

    goto :goto_1
.end method

.method public onScrollDirection(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onShow()V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "WatermarkThumbnailListMenu"

    const-string v3, "onShow"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->setShowHideAnimation()V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mIsEffectFilterMenuShowing:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWatermarkCategory()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->getWatermarkGridResources(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    if-eq v2, v1, :cond_0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->refreshTabItems()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->refreshItemBG()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabMenuAdapter:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWatermarkCategory()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkFilterText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    const/16 v3, -0x201

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    :cond_2
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
