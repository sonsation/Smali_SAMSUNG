.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$1;,
        Landroid/view/PointerIcon$HoverEffect;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_DEFAULT_ICON_ID:I = 0xff

.field private static final HOVERING_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final HOVERING_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final HOVERING_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final HOVERING_FLAG_ALWAYSSHOW:I = 0x1

.field public static final HOVERING_PENSELECT_POINTER_01:I = 0x4e35

.field public static final HOVERING_SCROLLICON_POINTER_01:I = 0x4e2b

.field public static final HOVERING_SCROLLICON_POINTER_02:I = 0x4e2c

.field public static final HOVERING_SCROLLICON_POINTER_03:I = 0x4e2d

.field public static final HOVERING_SCROLLICON_POINTER_04:I = 0x4e2e

.field public static final HOVERING_SCROLLICON_POINTER_05:I = 0x4e2f

.field public static final HOVERING_SCROLLICON_POINTER_06:I = 0x4e30

.field public static final HOVERING_SCROLLICON_POINTER_07:I = 0x4e31

.field public static final HOVERING_SCROLLICON_POINTER_08:I = 0x4e32

.field public static final HOVERING_SPENICON_CURSOR:I = 0x4e22

.field public static final HOVERING_SPENICON_CUSTOM:I = 0x4e20

.field public static final HOVERING_SPENICON_DEFAULT:I = 0x4e21

.field public static final HOVERING_SPENICON_DEFAULT_CUSTOM:I = 0x4e36

.field public static final HOVERING_SPENICON_DISABLE_DEFAULT_CUSTOM:I = 0x4e37

.field public static final HOVERING_SPENICON_HIDE:I = 0x4e33

.field public static final HOVERING_SPENICON_HOVERPOPUP_DEFAULT:I = 0x4e34

.field public static final HOVERING_SPENICON_MORE:I = 0x4e2a

.field public static final HOVERING_SPENICON_MOVE:I = 0x4e25

.field public static final HOVERING_SPENICON_RESIZE_01:I = 0x4e26

.field public static final HOVERING_SPENICON_RESIZE_02:I = 0x4e27

.field public static final HOVERING_SPENICON_RESIZE_03:I = 0x4e28

.field public static final HOVERING_SPENICON_RESIZE_04:I = 0x4e29

.field public static final HOVERING_SPENICON_SPLIT_01:I = 0x4e23

.field public static final HOVERING_SPENICON_SPLIT_02:I = 0x4e24

.field public static final MOUSEICON_CURSOR:I = 0x2776

.field public static final MOUSEICON_CUSTOM:I = 0x2774

.field public static final MOUSEICON_DEFAULT:I = 0x2775

.field public static final MOUSEICON_DEFAULT_KNOX_DESKTOP:I = 0x2789

.field public static final MOUSEICON_DRAWING:I = 0x2788

.field public static final MOUSEICON_MORE:I = 0x277e

.field public static final MOUSEICON_MOVE:I = 0x2779

.field public static final MOUSEICON_POINTER_01:I = 0x277f

.field public static final MOUSEICON_POINTER_02:I = 0x2780

.field public static final MOUSEICON_POINTER_03:I = 0x2781

.field public static final MOUSEICON_POINTER_04:I = 0x2782

.field public static final MOUSEICON_POINTER_05:I = 0x2783

.field public static final MOUSEICON_POINTER_06:I = 0x2784

.field public static final MOUSEICON_POINTER_07:I = 0x2785

.field public static final MOUSEICON_POINTER_08:I = 0x2786

.field public static final MOUSEICON_RESIZE_01:I = 0x277a

.field public static final MOUSEICON_RESIZE_01_KNOX_DESKTOP:I = 0x278a

.field public static final MOUSEICON_RESIZE_02:I = 0x277b

.field public static final MOUSEICON_RESIZE_02_KNOX_DESKTOP:I = 0x278b

.field public static final MOUSEICON_RESIZE_03:I = 0x277c

.field public static final MOUSEICON_RESIZE_03_KNOX_DESKTOP:I = 0x278c

.field public static final MOUSEICON_RESIZE_04:I = 0x277d

.field public static final MOUSEICON_RESIZE_04_KNOX_DESKTOP:I = 0x278d

.field public static final MOUSEICON_SPLIT_01:I = 0x2777

.field public static final MOUSEICON_SPLIT_02:I = 0x2778

.field public static final MOUSEICON_TRANSPARENT:I = 0x2787

.field private static final MOUSE_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final MOUSE_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final MOUSE_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final SEM_TYPE_STYLUS_DEFAULT:I = 0x4e21

.field public static final SEM_TYPE_STYLUS_HOVERPOPUP_DEFAULT:I = 0x4e34

.field public static final SEM_TYPE_STYLUS_MORE:I = 0x4e2a

.field public static final SEM_TYPE_STYLUS_MOVE:I = 0x4e25

.field public static final SEM_TYPE_STYLUS_PEN_SELECT:I = 0x4e35

.field public static final SEM_TYPE_STYLUS_RESIZE_HEIGHT:I = 0x4e27

.field public static final SEM_TYPE_STYLUS_SCROLL_DOWN:I = 0x4e2f

.field public static final SEM_TYPE_STYLUS_SCROLL_LEFT:I = 0x4e31

.field public static final SEM_TYPE_STYLUS_SCROLL_RIGHT:I = 0x4e2d

.field public static final SEM_TYPE_STYLUS_SCROLL_UP:I = 0x4e2b

.field public static final SEM_TYPE_STYLUS_SPLIT_HORIZONTAL:I = 0x4e24

.field public static final SEM_TYPE_STYLUS_TRANSPARENT:I = 0x4e33

.field public static final STYLE_ARROW_BIG:I = 0x3e7

.field public static final STYLE_SPOT_FINGERHOVER:I = 0x2712

.field public static final STYLE_SPOT_HOVERING_SPEN:I = 0x4e20

.field private static final SUPPORT_DEX:Z = false

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_CUSTOM:I = -0x1

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NOT_SPECIFIED:I = 0x1

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field private static final TYPE_OEM_FIRST:I = 0x2710

.field public static final TYPE_SPOT_ANCHOR:I = 0x7d2

.field public static final TYPE_SPOT_HOVER:I = 0x7d0

.field public static final TYPE_SPOT_TOUCH:I = 0x7d1

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static final gSystemIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field public static mCurrentDensity:I

.field private static mCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mCustomIconCurrentId:I

.field private static mCustomIconId:I

.field public static mDesktopMode:Z

.field private static mHoverBitmap:[Landroid/graphics/Bitmap;

.field private static mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

.field private static mIconType:I

.field private static volatile mLock:Ljava/lang/Object;

.field private static volatile mLockforMouse:Ljava/lang/Object;

.field private static mMouseBitmap:[Landroid/graphics/Bitmap;

.field private static mMouseCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mMouseCustomIconCurrentId:I

.field private static mMouseCustomIconId:I

.field private static mMouseIconType:I

.field public static mResolutionChangedForMouseIcon:Z

.field public static mResolutionChangedForSpenIcon:Z

.field public static mThemeApplied:Z

.field private static sInputManager:Landroid/hardware/input/IInputManager;

.field private static final sStaticInitInput:Ljava/lang/Object;

.field private static final sStaticInitWindow:Ljava/lang/Object;

.field private static sUseLargeIcons:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFrames:[Landroid/graphics/Bitmap;

.field private mDurationPerFrame:I

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private mSystemIconResourceId:I

.field private mType:I


# direct methods
.method static synthetic -set0(Landroid/view/PointerIcon;I)I
    .locals 0

    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F
    .param p3, "type"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/view/PointerIcon;->createDefaultIcon(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->createSpenIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 173
    new-instance v0, Landroid/view/PointerIcon;

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    .line 176
    sput-boolean v1, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    .line 520
    sput-boolean v1, Landroid/view/PointerIcon;->mThemeApplied:Z

    .line 523
    sput v1, Landroid/view/PointerIcon;->mCurrentDensity:I

    .line 526
    sput-boolean v1, Landroid/view/PointerIcon;->mResolutionChangedForSpenIcon:Z

    .line 529
    sput-boolean v1, Landroid/view/PointerIcon;->mResolutionChangedForMouseIcon:Z

    .line 532
    sput-boolean v1, Landroid/view/PointerIcon;->mDesktopMode:Z

    .line 802
    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1216
    sput v2, Landroid/view/PointerIcon;->mMouseIconType:I

    .line 1220
    sput-object v3, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1222
    sput v2, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    .line 1226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    .line 1469
    sput v2, Landroid/view/PointerIcon;->mIconType:I

    .line 1471
    sput v2, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1473
    sput-object v3, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1475
    sput v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 1479
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitWindow:Ljava/lang/Object;

    .line 1481
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    .line 1489
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    .line 543
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    .line 683
    if-nez p0, :cond_0

    .line 684
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 688
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 689
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 690
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 691
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 692
    return-object v0
.end method

.method private static createDefaultIcon(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F
    .param p3, "type"    # I

    .prologue
    .line 709
    if-nez p0, :cond_0

    .line 710
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 714
    new-instance v0, Landroid/view/PointerIcon;

    invoke-direct {v0, p3}, Landroid/view/PointerIcon;-><init>(I)V

    .line 715
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 716
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 717
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 718
    return-object v0
.end method

.method private static createSpenIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    .line 696
    if-nez p0, :cond_0

    .line 697
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 701
    new-instance v0, Landroid/view/PointerIcon;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 702
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 703
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 704
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 705
    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 567
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static getInputManager()Landroid/hardware/input/IInputManager;
    .locals 2

    .prologue
    .line 1853
    sget-object v1, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    monitor-enter v1

    .line 1854
    :try_start_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    if-nez v0, :cond_0

    .line 1856
    const-string/jumbo v0, "input"

    .line 1855
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    sput-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    .line 1858
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1853
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .locals 1

    .prologue
    .line 555
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/16 v6, 0x2710

    const/16 v10, 0x3e8

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 580
    if-nez p0, :cond_0

    .line 581
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "context must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 584
    :cond_0
    if-nez p1, :cond_1

    .line 585
    sget-object v5, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v5

    .line 612
    :cond_1
    sget-object v5, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PointerIcon;

    .line 613
    .local v2, "icon":Landroid/view/PointerIcon;
    if-eqz v2, :cond_2

    .line 614
    return-object v2

    .line 617
    :cond_2
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v4

    .line 618
    .local v4, "typeIndex":I
    if-ne v4, v7, :cond_3

    .line 619
    const/16 v5, 0x4e20

    if-lt p1, v5, :cond_4

    .line 620
    const/16 v5, 0x4e21

    invoke-static {v5}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v4

    .line 630
    :cond_3
    :goto_0
    if-lt p1, v6, :cond_6

    .line 632
    sget-object v5, Lcom/android/internal/R$styleable;->DeviceDefault_Pointer:[I

    .line 633
    const v6, 0x11600c9

    .line 631
    invoke-virtual {p0, v8, v5, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 634
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 635
    .local v3, "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 645
    :goto_1
    if-ne v3, v7, :cond_9

    .line 646
    const-string/jumbo v5, "PointerIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Missing theme resources for pointer icon type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-ne p1, v10, :cond_8

    sget-object v5, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    :goto_2
    return-object v5

    .line 621
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "resourceId":I
    :cond_4
    if-lt p1, v6, :cond_5

    .line 622
    const/16 v5, 0x2789

    invoke-static {v5}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v4

    goto :goto_0

    .line 624
    :cond_5
    invoke-static {v10}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v4

    goto :goto_0

    .line 637
    :cond_6
    sget-boolean v5, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    if-eqz v5, :cond_7

    const v1, 0x103034e

    .line 640
    .local v1, "defStyle":I
    :goto_3
    sget-object v5, Lcom/android/internal/R$styleable;->Pointer:[I

    .line 639
    invoke-virtual {p0, v8, v5, v9, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 641
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 642
    .restart local v3    # "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 638
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "defStyle":I
    .end local v3    # "resourceId":I
    :cond_7
    const v1, 0x103034d

    .restart local v1    # "defStyle":I
    goto :goto_3

    .line 647
    .end local v1    # "defStyle":I
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "resourceId":I
    :cond_8
    invoke-static {p0, v10}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v5

    goto :goto_2

    .line 650
    :cond_9
    new-instance v2, Landroid/view/PointerIcon;

    .end local v2    # "icon":Landroid/view/PointerIcon;
    invoke-direct {v2, p1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 651
    .restart local v2    # "icon":Landroid/view/PointerIcon;
    const/high16 v5, -0x1000000

    and-int/2addr v5, v3

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_a

    .line 652
    iput v3, v2, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 656
    :goto_4
    sget-object v5, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 657
    return-object v2

    .line 654
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, p0, v5, v3}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_4
.end method

.method private static getSystemIconTypeIndex(I)I
    .locals 5
    .param p0, "type"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 964
    sparse-switch p0, :sswitch_data_0

    .line 1104
    const/4 v0, -0x1

    return v0

    .line 966
    :sswitch_0
    return v0

    .line 968
    :sswitch_1
    return v1

    .line 970
    :sswitch_2
    return v2

    .line 972
    :sswitch_3
    return v3

    .line 974
    :sswitch_4
    const/4 v0, 0x5

    return v0

    .line 976
    :sswitch_5
    return v4

    .line 978
    :sswitch_6
    const/4 v0, 0x6

    return v0

    .line 980
    :sswitch_7
    const/4 v0, 0x7

    return v0

    .line 982
    :sswitch_8
    const/16 v0, 0x8

    return v0

    .line 984
    :sswitch_9
    const/16 v0, 0x9

    return v0

    .line 986
    :sswitch_a
    const/16 v0, 0xa

    return v0

    .line 988
    :sswitch_b
    const/16 v0, 0xb

    return v0

    .line 990
    :sswitch_c
    const/16 v0, 0xc

    return v0

    .line 992
    :sswitch_d
    const/16 v0, 0xd

    return v0

    .line 994
    :sswitch_e
    const/16 v0, 0xf

    return v0

    .line 996
    :sswitch_f
    const/16 v0, 0xe

    return v0

    .line 998
    :sswitch_10
    const/16 v0, 0x10

    return v0

    .line 1000
    :sswitch_11
    const/16 v0, 0x11

    return v0

    .line 1002
    :sswitch_12
    const/16 v0, 0x12

    return v0

    .line 1004
    :sswitch_13
    const/16 v0, 0x13

    return v0

    .line 1006
    :sswitch_14
    const/16 v0, 0x14

    return v0

    .line 1008
    :sswitch_15
    const/16 v0, 0x15

    return v0

    .line 1010
    :sswitch_16
    const/16 v0, 0x16

    return v0

    .line 1012
    :sswitch_17
    const/16 v0, 0x17

    return v0

    .line 1014
    :sswitch_18
    const/16 v0, 0x13

    return v0

    .line 1016
    :sswitch_19
    const/16 v0, 0x14

    return v0

    .line 1018
    :sswitch_1a
    const/16 v0, 0x15

    return v0

    .line 1020
    :sswitch_1b
    const/16 v0, 0x16

    return v0

    .line 1022
    :sswitch_1c
    const/16 v0, 0x17

    return v0

    .line 1024
    :sswitch_1d
    const/16 v0, 0x18

    return v0

    .line 1026
    :sswitch_1e
    const/16 v0, 0x19

    return v0

    .line 1028
    :sswitch_1f
    const/16 v0, 0x1a

    return v0

    .line 1030
    :sswitch_20
    const/16 v0, 0x1b

    return v0

    .line 1032
    :sswitch_21
    const/16 v0, 0x1c

    return v0

    .line 1034
    :sswitch_22
    const/16 v0, 0x1d

    return v0

    .line 1036
    :sswitch_23
    const/16 v0, 0x1e

    return v0

    .line 1038
    :sswitch_24
    const/16 v0, 0x1f

    return v0

    .line 1040
    :sswitch_25
    const/16 v0, 0x20

    return v0

    .line 1042
    :sswitch_26
    const/16 v0, 0x21

    return v0

    .line 1044
    :sswitch_27
    const/16 v0, 0x22

    return v0

    .line 1046
    :sswitch_28
    const/16 v0, 0x23

    return v0

    .line 1048
    :sswitch_29
    const/16 v0, 0x24

    return v0

    .line 1050
    :sswitch_2a
    const/16 v0, 0x25

    return v0

    .line 1052
    :sswitch_2b
    const/16 v0, 0x26

    return v0

    .line 1054
    :sswitch_2c
    const/16 v0, 0x28

    return v0

    .line 1056
    :sswitch_2d
    const/16 v0, 0x29

    return v0

    .line 1058
    :sswitch_2e
    const/16 v0, 0x2a

    return v0

    .line 1060
    :sswitch_2f
    const/16 v0, 0x2b

    return v0

    .line 1062
    :sswitch_30
    const/16 v0, 0x2c

    return v0

    .line 1064
    :sswitch_31
    const/16 v0, 0x9

    return v0

    .line 1066
    :sswitch_32
    const/16 v0, 0xb

    return v0

    .line 1068
    :sswitch_33
    const/16 v0, 0xc

    return v0

    .line 1070
    :sswitch_34
    const/16 v0, 0xd

    return v0

    .line 1072
    :sswitch_35
    const/16 v0, 0xe

    return v0

    .line 1074
    :sswitch_36
    const/16 v0, 0xf

    return v0

    .line 1076
    :sswitch_37
    const/16 v0, 0x10

    return v0

    .line 1078
    :sswitch_38
    const/16 v0, 0x11

    return v0

    .line 1080
    :sswitch_39
    const/16 v0, 0x12

    return v0

    .line 1082
    :sswitch_3a
    const/16 v0, 0xa

    return v0

    .line 1084
    :sswitch_3b
    return v0

    .line 1086
    :sswitch_3c
    return v1

    .line 1088
    :sswitch_3d
    return v2

    .line 1090
    :sswitch_3e
    return v3

    .line 1092
    :sswitch_3f
    return v4

    .line 1094
    :sswitch_40
    const/4 v0, 0x5

    return v0

    .line 1096
    :sswitch_41
    const/4 v0, 0x6

    return v0

    .line 1098
    :sswitch_42
    const/4 v0, 0x7

    return v0

    .line 1100
    :sswitch_43
    const/16 v0, 0x8

    return v0

    .line 1102
    :sswitch_44
    const/16 v0, 0x27

    return v0

    .line 964
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_7
        0x3ee -> :sswitch_8
        0x3ef -> :sswitch_9
        0x3f0 -> :sswitch_a
        0x3f1 -> :sswitch_b
        0x3f2 -> :sswitch_c
        0x3f3 -> :sswitch_d
        0x3f4 -> :sswitch_f
        0x3f5 -> :sswitch_e
        0x3f6 -> :sswitch_10
        0x3f7 -> :sswitch_11
        0x3f8 -> :sswitch_12
        0x3f9 -> :sswitch_13
        0x3fa -> :sswitch_14
        0x3fb -> :sswitch_15
        0x3fc -> :sswitch_16
        0x3fd -> :sswitch_17
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_3
        0x2775 -> :sswitch_18
        0x2776 -> :sswitch_19
        0x2777 -> :sswitch_1a
        0x2778 -> :sswitch_1b
        0x2779 -> :sswitch_1c
        0x277a -> :sswitch_1d
        0x277b -> :sswitch_1e
        0x277c -> :sswitch_1f
        0x277d -> :sswitch_20
        0x277e -> :sswitch_21
        0x277f -> :sswitch_22
        0x2780 -> :sswitch_23
        0x2781 -> :sswitch_24
        0x2782 -> :sswitch_25
        0x2783 -> :sswitch_26
        0x2784 -> :sswitch_27
        0x2785 -> :sswitch_28
        0x2786 -> :sswitch_29
        0x2787 -> :sswitch_2a
        0x2788 -> :sswitch_2b
        0x2789 -> :sswitch_2c
        0x278a -> :sswitch_2d
        0x278b -> :sswitch_2e
        0x278c -> :sswitch_2f
        0x278d -> :sswitch_30
        0x4e21 -> :sswitch_31
        0x4e22 -> :sswitch_32
        0x4e23 -> :sswitch_33
        0x4e24 -> :sswitch_34
        0x4e25 -> :sswitch_35
        0x4e26 -> :sswitch_36
        0x4e27 -> :sswitch_37
        0x4e28 -> :sswitch_38
        0x4e29 -> :sswitch_39
        0x4e2a -> :sswitch_3a
        0x4e2b -> :sswitch_3b
        0x4e2c -> :sswitch_3c
        0x4e2d -> :sswitch_3d
        0x4e2e -> :sswitch_3e
        0x4e2f -> :sswitch_3f
        0x4e30 -> :sswitch_40
        0x4e31 -> :sswitch_41
        0x4e32 -> :sswitch_42
        0x4e33 -> :sswitch_43
        0x4e35 -> :sswitch_44
    .end sparse-switch
.end method

.method public static load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 741
    if-nez p0, :cond_0

    .line 742
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "resources must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 745
    :cond_0
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 746
    .local v0, "icon":Landroid/view/PointerIcon;
    invoke-direct {v0, v2, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 747
    return-object v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    .prologue
    .line 884
    invoke-virtual/range {p2 .. p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 889
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v14, "pointer-icon"

    invoke-static {v12, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 892
    sget-object v14, Lcom/android/internal/R$styleable;->PointerIcon:[I

    .line 891
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 893
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 894
    .local v3, "bitmapRes":I
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 895
    .local v9, "hotSpotX":F
    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 896
    .local v10, "hotSpotY":F
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 903
    if-nez v3, :cond_0

    .line 904
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 897
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "bitmapRes":I
    .end local v9    # "hotSpotX":F
    .end local v10    # "hotSpotY":F
    :catch_0
    move-exception v6

    .line 898
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Exception parsing pointer icon resource."

    invoke-direct {v14, v15, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 900
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 899
    throw v14

    .line 908
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "bitmapRes":I
    .restart local v9    # "hotSpotX":F
    .restart local v10    # "hotSpotY":F
    :cond_0
    if-nez p1, :cond_2

    .line 909
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 913
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    instance-of v14, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v14, :cond_1

    move-object v2, v4

    .line 915
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 916
    .local v2, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v7

    .line 917
    .local v7, "frames":I
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 918
    const/4 v14, 0x1

    if-ne v7, v14, :cond_3

    .line 919
    const-string/jumbo v14, "PointerIcon"

    const-string/jumbo v15, "Animation icon with single frame -- simply treating the first frame as a normal bitmap icon."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    .end local v2    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v7    # "frames":I
    :cond_1
    instance-of v14, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v14, :cond_7

    .line 944
    new-instance v14, Ljava/lang/IllegalArgumentException;

    .line 945
    const-string/jumbo v15, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    .line 944
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 911
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 923
    .restart local v2    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v7    # "frames":I
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/PointerIcon;->mDurationPerFrame:I

    .line 924
    add-int/lit8 v14, v7, -0x1

    new-array v14, v14, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    .line 925
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 926
    .local v13, "width":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 927
    .local v8, "height":I
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_1
    if-ge v11, v7, :cond_1

    .line 928
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 929
    .local v5, "drawableFrame":Landroid/graphics/drawable/Drawable;
    instance-of v14, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v14, :cond_4

    .line 930
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Frame of an animated pointer icon must refer to a bitmap drawable."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 933
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    if-ne v14, v13, :cond_5

    .line 934
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    if-eq v14, v8, :cond_6

    .line 935
    :cond_5
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "The bitmap size of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "-th frame "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 936
    const-string/jumbo v16, "is different. All frames should have the exact same size and "

    .line 935
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 937
    const-string/jumbo v16, "share the same hotspot."

    .line 935
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 939
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    add-int/lit8 v15, v11, -0x1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "drawableFrame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    aput-object v16, v14, v15

    .line 927
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 949
    .end local v2    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v7    # "frames":I
    .end local v8    # "height":I
    .end local v11    # "i":I
    .end local v13    # "width":I
    :cond_7
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 950
    move-object/from16 v0, p0

    iput v9, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 951
    move-object/from16 v0, p0

    iput v10, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 883
    return-void
.end method

.method public static registerHoveringSpenCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .locals 9
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1501
    const-string/jumbo v4, "PointerIcon"

    const-string/jumbo v5, "registerHoveringSpenCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    if-nez p0, :cond_0

    .line 1506
    const-string/jumbo v4, "PointerIcon"

    const-string/jumbo v5, "registerHoveringSpenCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    return v8

    .line 1510
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1511
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1510
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1512
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1514
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1515
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1517
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_1

    .line 1521
    const-string/jumbo v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1522
    const-string/jumbo v6, "height:"

    .line 1521
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1522
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1521
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v3, v5, v4

    .line 1524
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 1525
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 1524
    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1526
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1527
    move-object v0, v2

    .line 1529
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_1
    return v8
.end method

.method public static registerMouseCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .locals 9
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1235
    const-string/jumbo v4, "PointerIcon"

    const-string/jumbo v5, "registerMouseCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    if-nez p0, :cond_0

    .line 1238
    const-string/jumbo v4, "PointerIcon"

    const-string/jumbo v5, "registerMouseCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return v8

    .line 1242
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1243
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1242
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1244
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1246
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1247
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1249
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_1

    .line 1253
    const-string/jumbo v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1254
    const-string/jumbo v6, "height: "

    .line 1253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1254
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v3, v5, v4

    .line 1256
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 1257
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 1256
    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1258
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1259
    move-object v0, v2

    .line 1261
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_1
    return v8
.end method

.method public static removeHoveringSpenCustomIcon(I)V
    .locals 3
    .param p0, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1539
    const-string/jumbo v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeHoveringSpenCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    return-void
.end method

.method public static removeMouseCustomIcon(I)V
    .locals 3
    .param p0, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1271
    const-string/jumbo v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMouseCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-void
.end method

.method public static semSetDefaultPointerIcon(ILandroid/view/PointerIcon;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .prologue
    .line 788
    :try_start_0
    const-string/jumbo v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semSetDefaultPointerIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    if-eqz p1, :cond_0

    .line 790
    invoke-virtual {p1, p0}, Landroid/view/PointerIcon;->setType(I)V

    .line 791
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setDefaultPointerIcon(Landroid/view/PointerIcon;)V

    .line 792
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 786
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->setDefaultPointerIcon(Landroid/view/PointerIcon;)V

    .line 795
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static setCustomDefaultIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1118
    const-string/jumbo v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCustomDefaultIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", iconType is CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    if-nez p1, :cond_0

    .line 1121
    const-string/jumbo v0, "PointerIcon"

    const-string/jumbo v1, "setCustomDefaultIcon(), invalid customIcon."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void

    .line 1125
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 1126
    const/16 v0, 0x4e36

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    .line 1117
    :goto_0
    return-void

    .line 1127
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 1128
    const/16 v0, 0x2774

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 1130
    :cond_2
    const-string/jumbo v0, "PointerIcon"

    const-string/jumbo v1, "setCustomDefaultIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDisableCustomDefaultIcon()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1140
    const-string/jumbo v0, "PointerIcon"

    const-string/jumbo v1, "setDisableCustomDefaultIcon()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/16 v0, 0x4e37

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    .line 1139
    return-void
.end method

.method public static setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I
    .locals 4
    .param p0, "IconId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1821
    sget-object v2, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1822
    move v0, p0

    .line 1825
    .local v0, "iReaIconId":I
    if-gez p0, :cond_0

    .line 1826
    :try_start_0
    sget v0, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1828
    :cond_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1829
    const/4 v0, 0x1

    .line 1832
    :cond_1
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 1833
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1838
    :goto_0
    const/16 v1, 0xff

    if-ne p0, v1, :cond_2

    .line 1839
    const/4 v0, 0x0

    .line 1847
    :cond_2
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1848
    return v0

    .line 1835
    :cond_3
    :try_start_1
    const-string/jumbo v1, "PointerIcon"

    const-string/jumbo v3, "HoverBitmap instance already exist."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1821
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x5

    .line 1791
    sget-object v1, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1793
    :try_start_0
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    if-lt v0, v2, :cond_1

    .line 1794
    const/4 v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 1799
    :goto_0
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1800
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1805
    :goto_1
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1806
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1808
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aput-object p0, v0, v2

    .line 1809
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 1796
    :cond_1
    :try_start_1
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1791
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1802
    :cond_2
    :try_start_2
    const-string/jumbo v0, "PointerIcon"

    const-string/jumbo v2, "HoverBitmap instance already exist."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1607
    const/4 v0, 0x1

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I
    .locals 9
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x64

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1618
    const-string/jumbo v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHoveringSpenIcon2 iconType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const/16 v3, 0x4e37

    if-ne p0, v3, :cond_0

    .line 1626
    return v7

    .line 1630
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1631
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1630
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1632
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1634
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1635
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1637
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    const v4, 0x9c40

    if-le v3, v4, :cond_1

    .line 1641
    const-string/jumbo v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1642
    const-string/jumbo v5, "height:"

    .line 1641
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1642
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1641
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-static {v0, v8, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1646
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1647
    move-object v0, v2

    .line 1650
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return v7
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1663
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .locals 8
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 1674
    const-string/jumbo v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHoveringSpenIcon with hotSpotPoint iconType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1681
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1680
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1682
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1684
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1685
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1687
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    const v4, 0x9c40

    if-le v3, v4, :cond_0

    .line 1691
    const-string/jumbo v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1692
    const-string/jumbo v5, "height:"

    .line 1691
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1692
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1691
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-static {v0, v7, v7, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1696
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1697
    move-object v0, v2

    .line 1700
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public static setHoveringSpenIcon(II)V
    .locals 0
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1549
    return-void
.end method

.method public static setHoveringSpenIcon(III)V
    .locals 0
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1561
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1579
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(IILandroid/graphics/Point;I)V

    .line 1578
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;I)V
    .locals 0
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1589
    return-void
.end method

.method public static setIcon(II)V
    .locals 4
    .param p0, "deviceType"    # I
    .param p1, "iconType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1154
    const-string/jumbo v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1156
    invoke-static {p1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1153
    :goto_0
    return-void

    .line 1158
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 1159
    invoke-static {p1, v3}, Landroid/view/PointerIcon;->setMouseIcon(II)V

    goto :goto_0

    .line 1162
    :cond_1
    const-string/jumbo v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1175
    const-string/jumbo v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", iconType is CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1177
    const/16 v0, 0x4e20

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    .line 1174
    :goto_0
    return-void

    .line 1179
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 1180
    const/16 v0, 0x2774

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 1183
    :cond_1
    const-string/jumbo v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    .locals 3
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1198
    const-string/jumbo v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", iconType is CUSTOM, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1200
    const/16 v0, 0x4e20

    invoke-static {v0, p1, p2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I

    .line 1197
    :goto_0
    return-void

    .line 1202
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 1203
    const/16 v0, 0x2774

    invoke-static {v0, p1, p2}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I

    goto :goto_0

    .line 1206
    :cond_1
    const-string/jumbo v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMouseCustomIcon(ILandroid/graphics/Bitmap;)I
    .locals 4
    .param p0, "IconId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1436
    sget-object v2, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    monitor-enter v2

    .line 1437
    move v0, p0

    .line 1439
    .local v0, "iReaIconId":I
    if-gez p0, :cond_0

    .line 1440
    :try_start_0
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    .line 1443
    :cond_0
    if-gez v0, :cond_1

    .line 1444
    const/4 v0, 0x0

    .line 1447
    :cond_1
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 1448
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 1453
    :goto_0
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 1454
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1457
    :cond_2
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1458
    return v0

    .line 1450
    :cond_3
    :try_start_1
    const-string/jumbo v1, "PointerIcon"

    const-string/jumbo v3, "MouseBitmap instance already exist"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1436
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setMouseCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x5

    .line 1411
    sget-object v1, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    monitor-enter v1

    .line 1412
    :try_start_0
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    if-lt v0, v2, :cond_1

    .line 1413
    const/4 v0, 0x0

    sput v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    .line 1418
    :goto_0
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1419
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 1424
    :goto_1
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1425
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1427
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v2, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aput-object p0, v0, v2

    .line 1428
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 1415
    :cond_1
    :try_start_1
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1411
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1421
    :cond_2
    :try_start_2
    const-string/jumbo v0, "PointerIcon"

    const-string/jumbo v2, "MouseBitmap instance already exist"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1312
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I
    .locals 8
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 1320
    const-string/jumbo v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMouseIcon2 iconType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1323
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1322
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1324
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1326
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1327
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1329
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    const v4, 0x9c40

    if-le v3, v4, :cond_0

    .line 1333
    const-string/jumbo v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1334
    const-string/jumbo v5, "height: "

    .line 1333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1334
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-static {v0, v7, v7, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1338
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1339
    move-object v0, v2

    .line 1342
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1351
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .locals 8
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 1359
    const-string/jumbo v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMouseIcon with hotSpotPoint iconType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1362
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1361
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1363
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1365
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1366
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1368
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    const v4, 0x9c40

    if-le v3, v4, :cond_0

    .line 1372
    const-string/jumbo v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1373
    const-string/jumbo v5, "height: "

    .line 1372
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1373
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1372
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-static {v0, v7, v7, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1377
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1378
    move-object v0, v2

    .line 1381
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public static setMouseIcon(II)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1279
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setMouseIcon(III)V

    .line 1278
    return-void
.end method

.method public static setMouseIcon(III)V
    .locals 0
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1286
    return-void
.end method

.method public static setMouseIcon(IILandroid/graphics/Point;)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1296
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setMouseIcon(IILandroid/graphics/Point;I)V

    .line 1295
    return-void
.end method

.method public static setMouseIcon(IILandroid/graphics/Point;I)V
    .locals 0
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1303
    return-void
.end method

.method public static setMousePointerIcon(IILandroid/graphics/Point;)Z
    .locals 4
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x0

    .line 1389
    sget-boolean v0, Landroid/view/PointerIcon;->mResolutionChangedForMouseIcon:Z

    if-nez v0, :cond_0

    .line 1390
    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    const/16 v1, 0x2774

    if-eq v0, v1, :cond_1

    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    if-ne v0, p0, :cond_1

    .line 1391
    const-string/jumbo v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseCustomIcon IconType is same."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/PointerIcon;->mMouseIconType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    return v3

    .line 1395
    :cond_0
    sput-boolean v3, Landroid/view/PointerIcon;->mResolutionChangedForMouseIcon:Z

    .line 1398
    :cond_1
    sget-object v1, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    monitor-enter v1

    .line 1399
    :try_start_0
    sput p0, Landroid/view/PointerIcon;->mMouseIconType:I

    .line 1400
    sput p1, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    .line 1401
    sput-object p2, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1404
    const/4 v0, 0x1

    return v0

    .line 1398
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setPointerIcon(IILandroid/graphics/Point;)Z
    .locals 11
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;

    .prologue
    const/16 v8, 0x4e34

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1709
    sget-object v6, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1712
    if-ne p0, v8, :cond_0

    :try_start_0
    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    monitor-exit v6

    .line 1713
    return v9

    .line 1714
    :cond_0
    if-ne p0, v8, :cond_1

    .line 1715
    const/16 p0, 0x4e21

    .line 1717
    :cond_1
    const/16 v5, 0x4e36

    if-eq p0, v5, :cond_2

    .line 1718
    const/16 v5, 0x4e37

    if-ne p0, v5, :cond_3

    .line 1719
    :cond_2
    :try_start_1
    const-string/jumbo v5, "PointerIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setHoveringSpenCustomIcon mIconType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/view/PointerIcon;->mIconType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", iconType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 1721
    return v10

    .line 1722
    :cond_3
    :try_start_2
    sget v5, Landroid/view/PointerIcon;->mIconType:I

    const/16 v7, 0x4e20

    if-eq v5, v7, :cond_4

    sget v5, Landroid/view/PointerIcon;->mIconType:I

    if-ne v5, p0, :cond_4

    .line 1723
    sget-boolean v5, Landroid/view/PointerIcon;->mThemeApplied:Z

    if-eqz v5, :cond_a

    .line 1726
    :cond_4
    sget-boolean v5, Landroid/view/PointerIcon;->mThemeApplied:Z

    if-eqz v5, :cond_b

    .line 1727
    const/4 v5, 0x0

    sput-boolean v5, Landroid/view/PointerIcon;->mThemeApplied:Z

    .line 1732
    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 1734
    .local v0, "bNeedPlaySound":Z
    sput p0, Landroid/view/PointerIcon;->mIconType:I

    .line 1735
    sput p1, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1736
    sput-object p2, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1738
    const/16 v5, 0x4e2a

    if-ne p0, v5, :cond_9

    .line 1739
    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_6

    .line 1740
    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1741
    const-string/jumbo v7, "spen_feedback_sound"

    const/4 v8, 0x0

    .line 1740
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    .line 1742
    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1743
    const-string/jumbo v7, "spen_feedback_sound_air_view"

    const/4 v8, 0x0

    .line 1742
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    .line 1744
    const/4 v0, 0x1

    .line 1748
    :cond_6
    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_7

    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1749
    const-string/jumbo v7, "pen_hovering_sound"

    const/4 v8, 0x0

    .line 1748
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    .line 1750
    const/4 v0, 0x1

    .line 1754
    :cond_7
    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_8

    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "2015A"

    const-string/jumbo v7, "ro.build.scafe.version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1761
    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    .line 1762
    sget-object v5, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    if-nez v5, :cond_d

    .line 1763
    new-instance v5, Landroid/view/PointerIcon$HoverEffect;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/view/PointerIcon$HoverEffect;-><init>(Landroid/view/PointerIcon$HoverEffect;)V

    sput-object v5, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    .line 1768
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 1770
    .local v2, "token":J
    :try_start_3
    sget-object v5, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v5, p0}, Landroid/view/PointerIcon$HoverEffect;->playSound(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1774
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "token":J
    :cond_9
    :goto_3
    monitor-exit v6

    .line 1779
    return v10

    .line 1723
    .end local v0    # "bNeedPlaySound":Z
    :cond_a
    :try_start_5
    sget-boolean v5, Landroid/view/PointerIcon;->mResolutionChangedForSpenIcon:Z

    if-nez v5, :cond_4

    .line 1724
    const-string/jumbo v5, "PointerIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setHoveringSpenCustomIcon IconType is same."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/view/PointerIcon;->mIconType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v6

    .line 1725
    return v9

    .line 1728
    :cond_b
    :try_start_6
    sget-boolean v5, Landroid/view/PointerIcon;->mResolutionChangedForSpenIcon:Z

    if-eqz v5, :cond_5

    .line 1729
    const/4 v5, 0x0

    sput-boolean v5, Landroid/view/PointerIcon;->mResolutionChangedForSpenIcon:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1709
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1755
    .restart local v0    # "bNeedPlaySound":Z
    :cond_c
    :try_start_7
    sget-object v5, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v7, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    .line 1756
    .local v4, "uspLevel":I
    const/4 v5, 0x3

    if-le v4, v5, :cond_8

    .line 1757
    const/4 v0, 0x0

    goto :goto_1

    .line 1765
    .end local v4    # "uspLevel":I
    :cond_d
    const-string/jumbo v5, "PointerIcon"

    const-string/jumbo v7, "HoverEffect instance already exist"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1771
    .restart local v2    # "token":J
    :catch_0
    move-exception v1

    .line 1772
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v5, "PointerIcon"

    const-string/jumbo v7, "setPointerIcon , Exception is occurred during playSound"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1774
    :try_start_9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 1773
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 1774
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1773
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public static setUseLargeIcons(Z)V
    .locals 1
    .param p0, "use"    # Z

    .prologue
    .line 666
    sput-boolean p0, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    .line 667
    sget-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 665
    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    const/4 v1, 0x0

    .line 955
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 956
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_1
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3

    .line 959
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 861
    if-ne p0, p1, :cond_0

    .line 862
    return v4

    .line 865
    :cond_0
    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/view/PointerIcon;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 869
    check-cast v0, Landroid/view/PointerIcon;

    .line 870
    .local v0, "otherIcon":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    iget v2, v0, Landroid/view/PointerIcon;->mType:I

    if-ne v1, v2, :cond_1

    .line 871
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v2, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v1, v2, :cond_3

    .line 872
    :cond_1
    return v3

    .line 866
    .end local v0    # "otherIcon":Landroid/view/PointerIcon;
    :cond_2
    return v3

    .line 875
    .restart local v0    # "otherIcon":Landroid/view/PointerIcon;
    :cond_3
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v1, :cond_6

    .line 876
    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_4

    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v2, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 877
    :cond_4
    return v3

    .line 876
    :cond_5
    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    .line 880
    :cond_6
    return v4
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    return v0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 761
    if-nez p1, :cond_0

    .line 762
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 765
    :cond_0
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 766
    :cond_1
    return-object p0

    .line 769
    :cond_2
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 770
    .local v0, "result":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 771
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 772
    return-object v0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 782
    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    .line 781
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 844
    :try_start_0
    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    if-eqz v1, :cond_0

    .line 847
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v1, :cond_0

    .line 849
    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 850
    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 851
    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
