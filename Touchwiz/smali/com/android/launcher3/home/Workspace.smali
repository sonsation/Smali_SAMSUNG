.class public Lcom/android/launcher3/home/Workspace;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/LauncherTransitionable;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/common/base/view/Insettable;
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# static fields
.field private static final BIND_NONCURRENT_PAGES:I = 0x1

.field private static final BIND_NOTHING:I = 0x0

.field public static final EXTRA_FESTIVALPAGE_SCREEN_ID:J = -0x1f5L

.field public static final EXTRA_PLUS_SCREEN_ID:J = -0x191L

.field private static final EXTRA_TOUCH_SLOP_SCALE_RATIO_OVERVIEW_STATE:F = 1.6f

.field public static final EXTRA_ZEROPAGE_SCREEN_ID:J = -0x12dL

.field protected static final FADE_EMPTY_SCREEN_DURATION:I = 0x96

.field private static final FADE_HOME_ICON_DURATION:I = 0x12c

.field private static final PAGE_REMOVE_POPUP_DELAY:I = 0x12c

.field protected static final PINCH_DISTANCE_DELTA:I = 0x32

.field protected static final SNAP_OFF_EMPTY_SCREEN_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"


# instance fields
.field private mAdditionalCount:I

.field private final mBindPages:Ljava/lang/Runnable;

.field private mBindWidgetsRunnable:Ljava/lang/Runnable;

.field private mBindWidgetsState:I

.field mChildrenLayersEnabled:Z

.field private mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

.field private mDefaultHomeIcon:Landroid/view/View;

.field private mDefaultHomeScreenId:J

.field private mDefaultPage:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDownRawX:F

.field private mDownRawY:F

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mIsDefaultZeroPage:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mOverviewShrinkFactor:F

.field private mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private mRemoveScreenDialog:Landroid/app/AlertDialog;

.field private mRestartZeroPage:Z

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCell:[I

.field private mTempVisiblePagesRange:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWidgetsToBind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

.field private mXDown:F

.field private mYDown:F

.field private mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 134
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mTempCell:[I

    .line 138
    iput-boolean v6, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    .line 140
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    .line 144
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 161
    iput-object v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    .line 166
    iput v5, p0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    .line 168
    iput-object v4, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 169
    iput-boolean v5, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    .line 171
    new-instance v2, Lcom/android/launcher3/home/Workspace$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$1;-><init>(Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mBindPages:Ljava/lang/Runnable;

    .line 181
    iput v5, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsState:I

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    .line 183
    new-instance v2, Lcom/android/launcher3/home/Workspace$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$2;-><init>(Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsRunnable:Ljava/lang/Runnable;

    move-object v2, p1

    .line 210
    check-cast v2, Lcom/android/launcher3/Launcher;

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 213
    .local v1, "res":Landroid/content/res/Resources;
    iput-boolean v5, p0, Lcom/android/launcher3/home/Workspace;->mFadeInAdjacentScreens:Z

    .line 214
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 216
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    new-instance v2, Lcom/android/launcher3/home/ZeroPageController;

    invoke-direct {v2, p1, p0}, Lcom/android/launcher3/home/ZeroPageController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    .line 220
    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setupShrinkFactor()V

    .line 224
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    .line 226
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-gez v2, :cond_1

    .line 227
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default Page Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput v5, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    .line 229
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;I)V

    .line 232
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-direct {p0, v2, v6}, Lcom/android/launcher3/home/Workspace;->updateHomeDefaultZeroPageKey(IZ)V

    .line 236
    :cond_2
    const v2, 0x7f0a00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mPageSpacing:I

    .line 237
    invoke-virtual {p0, p0}, Lcom/android/launcher3/home/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 238
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 240
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->initWorkspace()V

    .line 242
    new-instance v2, Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v3, p0}, Lcom/android/launcher3/home/WorkspaceDragController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    .line 245
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 247
    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mHintPageWidth:I

    .line 248
    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mHintPageLeftZone:I

    .line 249
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mHintPageLeftZone:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mHintPageRightZone:I

    .line 250
    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mTranslatePagesOffset:F

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/Workspace;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->bindWidgetsAfterConfigChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/Workspace;IILjava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Runnable;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/Workspace;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->showRemoveScreenPopup()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/Workspace;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/Workspace;->removeScreenWithItem(ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/home/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/launcher3/home/Workspace;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/launcher3/home/Workspace;->mFirstLayout:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/Workspace;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/launcher3/home/Workspace;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/util/LongArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/Workspace;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/Workspace;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/ZeroPageController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/Workspace;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/Workspace;->setCustomFlagOnChild(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method private addCustomLayout(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 9
    .param p1, "child"    # Lcom/android/launcher3/home/WorkspaceCellLayout;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1877
    new-instance v3, Lcom/android/launcher3/home/Workspace$12;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/Workspace$12;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 1885
    .local v3, "alignTopClickListner":Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/android/launcher3/home/Workspace$13;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/Workspace$13;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 1893
    .local v0, "alignBottomClickListner":Landroid/view/View$OnClickListener;
    new-instance v4, Lcom/android/launcher3/home/Workspace$14;

    invoke-direct {v4, p0}, Lcom/android/launcher3/home/Workspace$14;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 1910
    .local v4, "pageDeleteClickListner":Landroid/view/View$OnClickListener;
    invoke-virtual {p1, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addAlignLayoutTop(Landroid/view/View$OnClickListener;)V

    .line 1911
    invoke-virtual {p1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addAlignLayoutBottom(Landroid/view/View$OnClickListener;)V

    .line 1912
    invoke-virtual {p1, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addPageDeleteBtn(Landroid/view/View$OnClickListener;)V

    .line 1914
    invoke-virtual {p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1915
    .local v2, "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1916
    .local v1, "alignLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v8, v7}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    goto :goto_0

    .line 1918
    .end local v1    # "alignLayout":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v8, v7}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 1919
    return-void
.end method

.method private backgroundAlphaThreshold(F)F
    .locals 4
    .param p1, "r"    # F

    .prologue
    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, "pivotA":F
    const v1, 0x3e99999a    # 0.3f

    .line 1111
    .local v1, "pivotB":F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1112
    const/4 v2, 0x0

    .line 1116
    :goto_0
    return v2

    .line 1113
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1114
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1116
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private bindWidgetsAfterConfigChange()V
    .locals 2

    .prologue
    .line 2720
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsState:I

    if-nez v1, :cond_1

    .line 2737
    :cond_0
    :goto_0
    return-void

    .line 2723
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2724
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsState:I

    goto :goto_0

    .line 2734
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2735
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->createAndBindWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 2736
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private canDeleteScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2203
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2204
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 2206
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2204
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 2206
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private changePlusPageColorFilterForBg(Z)V
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    .line 2239
    const-wide/16 v2, -0x191

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2240
    .local v0, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v0, :cond_0

    .line 2241
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 2243
    :cond_0
    return-void
.end method

.method private checkAlignButtonEnabled(I)V
    .locals 6
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v5, 0x1

    .line 2062
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2063
    .local v2, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2064
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, v5, v5, p1}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZI)Z

    move-result v1

    .line 2065
    .local v1, "canAlignTop":Z
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZI)Z

    move-result v0

    .line 2066
    .local v0, "canAlignBottom":Z
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setEnabledOnAlignButton(ZZ)V

    .line 2068
    .end local v0    # "canAlignBottom":Z
    .end local v1    # "canAlignTop":Z
    :cond_0
    return-void
.end method

.method private checkVisibilityOfPageDeleteBtn()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2119
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2120
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2121
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getPageDeleteBtn(I)Landroid/view/View;

    move-result-object v0

    .line 2122
    .local v0, "pageDeleteBtn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2123
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->isEmptyPage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 2124
    .local v1, "visibility":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 2125
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 2129
    .end local v0    # "pageDeleteBtn":Landroid/view/View;
    .end local v1    # "visibility":I
    :cond_0
    return-void

    .line 2123
    .restart local v0    # "pageDeleteBtn":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1224
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    .line 1225
    .local v2, "screenCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1226
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1227
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1229
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1230
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    return-void
.end method

.method private createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;
    .locals 5
    .param p1, "screenId"    # J
    .param p3, "insertIndex"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1701
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040065

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1704
    .local v0, "newScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1705
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1706
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1707
    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setSoundEffectsEnabled(Z)V

    .line 1709
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->addCustomLayout(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 1711
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1712
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1713
    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;I)V

    .line 1715
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1716
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 1717
    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    .line 1718
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled()V

    .line 1721
    :cond_0
    return-object v0
.end method

.method private disableLayoutTransitions()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 334
    return-void
.end method

.method private enableChildrenCache(II)V
    .locals 6
    .param p1, "fromPage"    # I
    .param p2, "toPage"    # I

    .prologue
    const/4 v5, 0x1

    .line 1205
    if-le p1, p2, :cond_0

    .line 1206
    move v3, p1

    .line 1207
    .local v3, "temp":I
    move p1, p2

    .line 1208
    move p2, v3

    .line 1211
    .end local v3    # "temp":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    .line 1213
    .local v2, "screenCount":I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1214
    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1216
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 1217
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1218
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1219
    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1221
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    return-void
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1270
    iget-boolean v10, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v10, :cond_3

    .line 1271
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    .line 1272
    .local v7, "screenCount":I
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v10}, Lcom/android/launcher3/home/Workspace;->getVisiblePages([I)V

    .line 1273
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v5, v10, v9

    .line 1274
    .local v5, "leftScreen":I
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v6, v10, v8

    .line 1275
    .local v6, "rightScreen":I
    if-ne v5, v6, :cond_0

    .line 1277
    add-int/lit8 v10, v7, -0x1

    if-ge v6, v10, :cond_1

    .line 1278
    add-int/lit8 v6, v6, 0x1

    .line 1284
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v12, -0x12d

    invoke-virtual {v10, v12, v13}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1285
    .local v0, "customScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v12, -0x1f5

    invoke-virtual {v10, v12, v13}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1286
    .local v2, "festivalScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 1287
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1291
    .local v4, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eq v4, v0, :cond_2

    if-eq v4, v2, :cond_2

    if-gt v5, v3, :cond_2

    if-gt v3, v6, :cond_2

    .line 1292
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v1, v8

    .line 1293
    .local v1, "enableLayer":Z
    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->enableHardwareLayer(Z)V

    .line 1286
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1279
    .end local v0    # "customScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "enableLayer":Z
    .end local v2    # "festivalScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "i":I
    .end local v4    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    if-lez v5, :cond_0

    .line 1280
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .restart local v0    # "customScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v2    # "festivalScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v3    # "i":I
    .restart local v4    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    move v1, v9

    .line 1292
    goto :goto_2

    .line 1296
    .end local v0    # "customScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "festivalScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "i":I
    .end local v4    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v5    # "leftScreen":I
    .end local v6    # "rightScreen":I
    .end local v7    # "screenCount":I
    :cond_3
    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 330
    return-void
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V
    .locals 10
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 547
    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 548
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "backgroundAlpha"

    new-array v5, v9, [F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 550
    .local v1, "bgAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v6, -0xc9

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 552
    .local v2, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    new-instance v4, Lcom/android/launcher3/home/Workspace$6;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/home/Workspace$6;-><init>(Lcom/android/launcher3/home/Workspace;Lcom/android/launcher3/common/base/view/CellLayout;)V

    iput-object v4, p0, Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 563
    if-lez p2, :cond_1

    .line 564
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 565
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 566
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 567
    new-instance v4, Lcom/android/launcher3/home/Workspace$7;

    invoke-direct {v4, p0, p3}, Lcom/android/launcher3/home/Workspace$7;-><init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 578
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 585
    .end local v3    # "oa":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 581
    if-eqz p3, :cond_0

    .line 582
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private getPageDescription(IZ)Ljava/lang/String;
    .locals 12
    .param p1, "page"    # I
    .param p2, "needToSwipeAffordance"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1589
    const-string v3, ""

    .line 1590
    .local v3, "pageDescription":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v1

    .line 1591
    .local v1, "delta":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v6

    sub-int v9, v6, v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    sub-int v2, v9, v6

    .line 1592
    .local v2, "lastPage":I
    add-int/lit8 v6, p1, 0x1

    sub-int v0, v6, v1

    .line 1594
    .local v0, "currentPage":I
    if-eqz p2, :cond_0

    .line 1595
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    const v9, 0x7f0900c5

    .line 1596
    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1599
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    .line 1600
    .local v4, "screenId":J
    const-wide/16 v10, -0x191

    cmp-long v6, v4, v10

    if-nez v6, :cond_2

    .line 1601
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09000d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1602
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09000e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1620
    :goto_1
    return-object v6

    .end local v0    # "currentPage":I
    .end local v2    # "lastPage":I
    .end local v4    # "screenId":J
    :cond_1
    move v6, v8

    .line 1591
    goto :goto_0

    .line 1603
    .restart local v0    # "currentPage":I
    .restart local v2    # "lastPage":I
    .restart local v4    # "screenId":J
    :cond_2
    const-wide/16 v10, -0x12d

    cmp-long v6, v4, v10

    if-nez v6, :cond_3

    .line 1604
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ZeroPageController;->getAppName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1605
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ZeroPageController;->getAppName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1609
    :cond_3
    if-lez v2, :cond_4

    .line 1610
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1611
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090033

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    .line 1610
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1613
    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v6, v1

    if-ne v0, v6, :cond_5

    .line 1614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090032

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_2
    move-object v6, v3

    .line 1620
    goto :goto_1

    .line 1615
    :cond_5
    if-ne v0, v2, :cond_4

    .line 1616
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09005b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private getPageIndexToStart()I
    .locals 2

    .prologue
    .line 447
    const-wide/16 v0, -0x12d

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCustomContentPage(J)Z
    .locals 11
    .param p1, "screenId"    # J

    .prologue
    const-wide/16 v8, -0x12d

    const-wide/16 v6, -0x191

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 436
    cmp-long v1, p1, v8

    if-nez v1, :cond_2

    .line 437
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    move v0, v2

    .line 443
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    .line 437
    goto :goto_0

    .line 438
    :cond_2
    cmp-long v1, p1, v6

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method private initWorkspace()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    iput v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    .line 302
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setWillNotDraw(Z)V

    .line 303
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setClipChildren(Z)V

    .line 304
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setClipToPadding(Z)V

    .line 305
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 307
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->setMinScale(F)V

    .line 308
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->setupLayoutTransition()V

    .line 310
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 311
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setWallpaperDimension()V

    .line 315
    return-void
.end method

.method private insertPage(II)J
    .locals 6
    .param p1, "currentIndex"    # I
    .param p2, "targetIndex"    # I

    .prologue
    .line 2403
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v2

    .line 2404
    .local v2, "newId":J
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    .line 2406
    .local v0, "currentPage":I
    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-gt p2, v4, :cond_0

    .line 2407
    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    .line 2410
    :cond_0
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher3/home/Workspace;->createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-result-object v1

    .line 2412
    .local v1, "newScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/Workspace;->startAlphaAnimation(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 2414
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2415
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    .line 2418
    :cond_1
    if-le v0, p1, :cond_2

    .line 2419
    add-int/lit8 v0, v0, 0x1

    .line 2423
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2424
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    .line 2425
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    .line 2428
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    .line 2429
    return-wide v2
.end method

.method private isCurrentTransitionEffectDefault()Z
    .locals 1

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getCurrentTransitionEffect()Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2518
    const/4 v0, 0x1

    .line 2520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastScreen(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2199
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeItemsOnScreen(J)V
    .locals 11
    .param p1, "screenId"    # J

    .prologue
    .line 588
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v8, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 589
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 590
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 591
    .local v3, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v6, "moveToAppsItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v7, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 595
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 597
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 600
    .local v5, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v8, :cond_2

    iget v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 603
    :cond_0
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 605
    .restart local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 610
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v8, v7, v6}, Lcom/android/launcher3/home/HomeController;->removeItemsOnScreen(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 611
    return-void
.end method

.method private removeScreenWithItem(ZZ)V
    .locals 1
    .param p1, "onlyScreen"    # Z
    .param p2, "updateModel"    # Z

    .prologue
    .line 1930
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/home/Workspace;->removeScreenWithItem(IZZ)V

    .line 1931
    return-void
.end method

.method private setCustomFlagOnChild(ZZ)V
    .locals 3
    .param p1, "needCustomLayout"    # Z
    .param p2, "needRequestLayout"    # Z

    .prologue
    .line 1470
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    .line 1471
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1472
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1473
    .local v0, "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    .line 1475
    if-eqz p2, :cond_0

    .line 1476
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->requestLayout()V

    .line 1471
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1480
    .end local v0    # "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_1
    return-void
.end method

.method private setupLayoutTransition()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 319
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 323
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 324
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 325
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 326
    return-void
.end method

.method private showRemoveScreenPopup()V
    .locals 3

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 2746
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900ae

    .line 2747
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900af

    new-instance v2, Lcom/android/launcher3/home/Workspace$21;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$21;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 2748
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/launcher3/home/Workspace$20;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$20;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 2760
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/Workspace$19;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/Workspace$19;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 2767
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2774
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    .line 2776
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2777
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0xc

    .line 2778
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 2779
    return-void
.end method

.method private snapToScreenId(JLjava/lang/Runnable;)V
    .locals 1
    .param p1, "screenId"    # J
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1008
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/home/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    .line 1009
    return-void
.end method

.method private startAlphaAnimation(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 4
    .param p1, "target"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1841
    const-string v1, "backgroundAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1842
    .local v0, "bgAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1843
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1844
    return-void

    .line 1841
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;IZ)V
    .locals 6
    .param p1, "page"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "pageNo"    # I
    .param p3, "show"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    .line 1392
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    .line 1394
    .local v1, "state":I
    if-eq v1, v0, :cond_0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 1395
    invoke-virtual {p1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    .line 1396
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setImportantForAccessibility(I)V

    .line 1398
    invoke-direct {p0, p2, v2}, Lcom/android/launcher3/home/Workspace;->getPageDescription(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1408
    :goto_0
    return-void

    .line 1400
    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    move v0, v2

    .line 1403
    .local v0, "accessible":I
    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    .line 1404
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setImportantForAccessibility(I)V

    .line 1405
    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1406
    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0
.end method

.method private updateChildrenLayersEnabled(ZZ)V
    .locals 9
    .param p1, "force"    # Z
    .param p2, "show"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1251
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    if-eqz p2, :cond_2

    move v4, v5

    .line 1252
    .local v4, "small":Z
    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v3

    .line 1254
    .local v3, "isSwitching":Z
    if-nez p1, :cond_0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v1, v5

    .line 1256
    .local v1, "enableChildrenLayers":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v5, :cond_1

    .line 1257
    iput-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    .line 1258
    iget-boolean v5, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v5, :cond_4

    .line 1259
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1267
    :cond_1
    return-void

    .end local v1    # "enableChildrenLayers":Z
    .end local v3    # "isSwitching":Z
    .end local v4    # "small":Z
    :cond_2
    move v4, v6

    .line 1251
    goto :goto_0

    .restart local v3    # "isSwitching":Z
    .restart local v4    # "small":Z
    :cond_3
    move v1, v6

    .line 1254
    goto :goto_1

    .line 1261
    .restart local v1    # "enableChildrenLayers":Z
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1262
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1263
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->enableHardwareLayer(Z)V

    .line 1261
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private updateDefaultHome()V
    .locals 8

    .prologue
    .line 2027
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ge v2, v3, :cond_1

    .line 2028
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(I)V

    .line 2029
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    .line 2036
    :cond_0
    :goto_0
    return-void

    .line 2030
    :cond_1
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne v2, v3, :cond_0

    .line 2031
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    .line 2032
    .local v1, "preDefaultPage":I
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    .line 2033
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    const-wide/16 v6, -0x191

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v0, v3, v2

    .line 2034
    .local v0, "newDefaultPage":I
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHome(II)V

    goto :goto_0

    .line 2033
    .end local v0    # "newDefaultPage":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateDefaultHomeIcon(I)V
    .locals 5
    .param p1, "currentPage"    # I

    .prologue
    .line 1989
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1991
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1993
    .local v1, "selectTTS":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1995
    .local v0, "defaultDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1996
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->setHoverPopupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1997
    return-void

    .line 1989
    .end local v0    # "defaultDescription":Ljava/lang/String;
    .end local v1    # "selectTTS":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1992
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateDragExtraPageAlphaValue(II)V
    .locals 4
    .param p1, "screenCenter"    # I
    .param p2, "rightScreen"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1097
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1098
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1099
    .local v0, "child":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 1100
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    .line 1101
    .local v1, "scrollProgress":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 1102
    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 1106
    .end local v0    # "child":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "scrollProgress":F
    :cond_0
    return-void
.end method

.method private updateDragPageAlphaValues(III)V
    .locals 6
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 1075
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_3

    .line 1076
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1077
    .local v1, "child":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 1079
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 1075
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1081
    :cond_1
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1082
    .local v3, "scrollProgress":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1084
    .local v0, "alpha":F
    instance-of v4, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v4, :cond_2

    move-object v4, v1

    .line 1085
    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->isPageFullVIStarted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1086
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_1

    .line 1089
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_1

    .line 1094
    .end local v0    # "alpha":F
    .end local v1    # "child":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "scrollProgress":F
    :cond_3
    return-void
.end method

.method private updateHomeDefaultZeroPageKey(IZ)V
    .locals 6
    .param p1, "defaultPage"    # I
    .param p2, "init"    # Z

    .prologue
    .line 1659
    const/4 v0, 0x0

    .line 1662
    .local v0, "isDefaultZeroPage":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1663
    const/4 v0, 0x1

    .line 1664
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1665
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090128

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    .line 1664
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1668
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mIsDefaultZeroPage:Z

    if-eq v0, v1, :cond_2

    .line 1669
    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher3/home/Workspace;->mIsDefaultZeroPage:Z

    .line 1670
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "zeropage_default_home"

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1672
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 1674
    :cond_2
    return-void
.end method

.method private updateNormalPageAlphaValues(III)V
    .locals 5
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1072
    :cond_0
    return-void

    .line 1060
    :cond_1
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 1061
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1062
    .local v1, "child":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_2

    .line 1063
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 1064
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1065
    .local v3, "scrollProgress":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/Workspace;->backgroundAlphaThreshold(F)F

    move-result v0

    .line 1066
    .local v0, "alpha":F
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 1060
    .end local v0    # "alpha":F
    .end local v3    # "scrollProgress":F
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1068
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_1
.end method

.method private updatePageAlphaValues(III)V
    .locals 2
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1047
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->updateNormalPageAlphaValues(III)V

    goto :goto_0

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1049
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/home/Workspace;->updateDragExtraPageAlphaValue(II)V

    goto :goto_0

    .line 1051
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->updateDragPageAlphaValues(III)V

    goto :goto_0
.end method


# virtual methods
.method abortBindWidgetsAfterConfigChange()V
    .locals 1

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2741
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsState:I

    .line 2742
    return-void
.end method

.method addExtraEmptyScreen()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0xc9

    .line 460
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(J)J

    .line 462
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addExtraEmptyScreenOnDrag()V
    .locals 4

    .prologue
    const-wide/16 v2, -0xc9

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 454
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(J)J

    .line 457
    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 1196
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_1

    .line 1197
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1202
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    :goto_0
    return-void

    .line 1199
    .restart local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addNewWorkspaceScreen()J
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 1793
    iget-object v5, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1795
    const-string v5, "Launcher.Workspace"

    const-string v6, "    - workspace loading, skip"

    invoke-static {v5, v6, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1796
    const-wide/16 v2, -0x1

    .line 1824
    :goto_0
    return-wide v2

    .line 1799
    :cond_0
    const-wide/16 v6, -0x191

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 1801
    .local v0, "insertIndex":I
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v2

    .line 1803
    .local v2, "newId":J
    invoke-direct {p0, v2, v3, v0}, Lcom/android/launcher3/home/Workspace;->createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-result-object v1

    .line 1805
    .local v1, "newScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/Workspace;->startAlphaAnimation(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1808
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1809
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    .line 1812
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1813
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    .line 1814
    invoke-virtual {p0, v4, v4}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZ)V

    .line 1818
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    .line 1819
    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v6, 0x7f090079

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/Talk;->say(I)V

    .line 1820
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1821
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900fc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v8

    .line 1822
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v4, 0x2

    :cond_3
    sub-int v4, v8, v4

    int-to-long v8, v4

    .line 1820
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method addWidgetsToBind(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2706
    return-void
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1039
    :cond_0
    return-void
.end method

.method public autoAlignItems(Z)V
    .locals 6
    .param p1, "upward"    # Z

    .prologue
    .line 1856
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->checkNeedDisplayAutoalignDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1857
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher3/home/HomeController;Z)V

    .line 1859
    const/4 v0, 0x0

    .line 1864
    .local v0, "checkPopup":I
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901bb

    .line 1865
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1866
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0900fe

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1867
    :goto_1
    int-to-long v4, v0

    .line 1864
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1868
    return-void

    .line 1861
    .end local v0    # "checkPopup":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZ)Z

    .line 1862
    const/4 v0, 0x1

    .restart local v0    # "checkPopup":I
    goto :goto_0

    .line 1866
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1867
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0900fd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 259
    check-cast p1, Lcom/android/launcher3/home/HomeController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    .line 261
    return-void
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    .line 1300
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1301
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1302
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    .line 1303
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1304
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1305
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->buildHardwareLayer()V

    .line 1303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1308
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1309
    return-void
.end method

.method public callRefreshLiveIcon()V
    .locals 3

    .prologue
    .line 2865
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2871
    :cond_0
    return-void

    .line 2868
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2869
    .local v0, "screen":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->callRefreshLiveIcon()V

    goto :goto_0
.end method

.method protected canOverScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2577
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method changeColorForBg(Z)V
    .locals 10
    .param p1, "whiteBg"    # Z

    .prologue
    .line 2210
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    .line 2214
    .local v5, "pageCount":I
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v9, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 2216
    const/4 v3, 0x0

    .local v3, "currentPage":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2217
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2218
    .local v1, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 2219
    .local v2, "clItems":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2220
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 2221
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2222
    .local v7, "v":Landroid/view/View;
    instance-of v8, v7, Lcom/android/launcher3/common/view/IconView;

    if-eqz v8, :cond_0

    .line 2223
    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {v7, p1}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    .line 2220
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2226
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v8

    if-ne v3, v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v1, v9, v8, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImageResource(IZZ)V

    .line 2227
    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->changeColorForBg(Z)V

    .line 2216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2226
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 2230
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v2    # "clItems":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v4    # "j":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/Workspace;->changePlusPageColorFilterForBg(Z)V

    .line 2232
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v6

    .line 2233
    .local v6, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    if-eqz v6, :cond_4

    .line 2234
    invoke-virtual {v6, p1}, Lcom/android/launcher3/common/view/PageIndicator;->changeColorForBg(Z)V

    .line 2236
    :cond_4
    return-void
.end method

.method checkAlignButtonEnabled()V
    .locals 1

    .prologue
    .line 2058
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled(I)V

    .line 2059
    return-void
.end method

.method public checkNeedDisplayAutoalignDialog()Z
    .locals 4

    .prologue
    .line 1871
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1872
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1871
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1873
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "com.sec.android.app.launcher.showdialog.prefs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method checkVisibilityOfCustomLayout(I)V
    .locals 3
    .param p1, "nextIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2112
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2113
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1, v2, v1, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 2114
    invoke-virtual {p0, v2, v2, v1, p1}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 2116
    :cond_0
    return-void
.end method

.method commitExtraEmptyScreen()J
    .locals 8

    .prologue
    const-wide/16 v6, -0xc9

    .line 620
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    const-string v4, "Launcher.Workspace"

    const-string v5, "    - workspace loading, skip"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 623
    const-wide/16 v2, -0x1

    .line 646
    :goto_0
    return-wide v2

    .line 626
    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    .line 627
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 628
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 629
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 631
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v2

    .line 632
    .local v2, "newId":J
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 633
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    .line 644
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v5, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v4

    add-int/2addr v4, v1

    .line 640
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v5

    .line 639
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    goto :goto_1
.end method

.method createAndBindWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeBindController;->bindAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 2702
    return-void
.end method

.method createCustomPlusPage()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x191

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1725
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1726
    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040065

    invoke-virtual {v7, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1728
    .local v3, "customScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v7, 0x4

    invoke-virtual {v3, v7, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1729
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    .line 1730
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200da

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "addBtn":Landroid/graphics/drawable/Drawable;
    move-object v7, v0

    .line 1732
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1733
    .local v1, "b":Landroid/graphics/Bitmap;
    const/high16 v7, 0x42c80000    # 100.0f

    .line 1734
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 1735
    .local v4, "overviewShrinkFactorReverse":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v5, v7

    .line 1736
    .local v5, "sizeX":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v6, v7

    .line 1738
    .local v6, "sizeY":I
    invoke-static {v1, v5, v6, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1739
    .local v2, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "addBtn":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v0, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1741
    .restart local v0    # "addBtn":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1742
    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setForegroundGravity(I)V

    .line 1744
    new-instance v7, Lcom/android/launcher3/home/Workspace$11;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/Workspace$11;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v3, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1757
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v12, v13, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1758
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1759
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1760
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/launcher3/common/view/PageIndicator;->setPlusPage(Z)V

    .line 1762
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    invoke-virtual {p0, v3, v7}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;I)V

    .line 1764
    invoke-virtual {v3, v11}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    .line 1766
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1767
    invoke-direct {p0, v11}, Lcom/android/launcher3/home/Workspace;->changePlusPageColorFilterForBg(Z)V

    .line 1769
    :cond_1
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/android/launcher3/home/Workspace;->mXDown:F

    sub-float v2, v7, v8

    .line 812
    .local v2, "deltaX":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 813
    .local v0, "absDeltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/android/launcher3/home/Workspace;->mYDown:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 815
    .local v1, "absDeltaY":F
    const/4 v7, 0x0

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    .line 827
    :goto_0
    return v7

    .line 817
    :cond_0
    div-float v4, v1, v0

    .line 818
    .local v4, "slope":F
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 820
    .local v5, "theta":F
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v7

    if-eqz v7, :cond_3

    const v6, 0x3fcccccd    # 1.6f

    .line 822
    .local v6, "touchSlopScale":F
    :goto_1
    iget v7, p0, Lcom/android/launcher3/home/Workspace;->mTouchSlop:I

    int-to-float v7, v7

    mul-float v3, v7, v6

    .line 823
    .local v3, "scaledTouchSlop":F
    cmpl-float v7, v0, v3

    if-gtz v7, :cond_1

    cmpl-float v7, v1, v3

    if-lez v7, :cond_2

    .line 824
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->cancelCurrentPageLongPress()V

    .line 827
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 820
    .end local v3    # "scaledTouchSlop":F
    .end local v6    # "touchSlopScale":F
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    .line 832
    move v0, p2

    .line 833
    .local v0, "adjustedTouchSlopScale":F
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    const/high16 v1, 0x40200000    # 2.5f

    mul-float v0, p2, v1

    .line 838
    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)Z

    move-result v1

    return v1

    .line 835
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    const v1, 0x3fcccccd    # 1.6f

    mul-float v0, p2, v1

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1508
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 1509
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1683
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    :cond_0
    const/4 v0, 0x0

    .line 730
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1241
    iget-boolean v0, p0, Lcom/android/launcher3/home/Workspace;->mUpdateOnlyCurrentPage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/home/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 1242
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    const-string v0, "Launcher.Workspace"

    const-string v1, "drawChild, mUpdateOnlyCurrentPage && !mIsPageMoving && !currentPage => draw skip!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v0, 0x0

    .line 1247
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;ZI)V
    .locals 1
    .param p2, "postRunnable"    # Ljava/lang/Runnable;
    .param p3, "fromOther"    # Z
    .param p4, "fullCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 2598
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/home/WorkspaceDragController;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;ZI)V

    .line 2599
    return-void
.end method

.method estimateItemPosition(Lcom/android/launcher3/common/base/view/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 6
    .param p1, "cl"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "hCell"    # I
    .param p3, "vCell"    # I
    .param p4, "hSpan"    # I
    .param p5, "vSpan"    # I

    .prologue
    .line 291
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, "r":Landroid/graphics/Rect;
    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 292
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 293
    return-object v5
.end method

.method public estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I
    .locals 9
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const v3, 0x7fffffff

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 275
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 276
    .local v7, "size":[I
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 279
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/Workspace;->estimateItemPosition(Lcom/android/launcher3/common/base/view/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v6

    .line 280
    .local v6, "r":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    aput v0, v7, v2

    .line 281
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v7, v8

    .line 286
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v6    # "r":Landroid/graphics/Rect;
    :goto_0
    return-object v7

    .line 284
    :cond_0
    aput v3, v7, v2

    .line 285
    aput v3, v7, v8

    goto :goto_0
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 1625
    const-string v0, "container"

    const-string v1, "homescreen"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    const-string v0, "container_page"

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1627
    return-void
.end method

.method public findWidgetView(Landroid/content/ComponentName;)Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .locals 12
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v9, 0x0

    .line 2491
    if-nez p1, :cond_0

    move-object v8, v9

    .line 2513
    :goto_0
    return-object v8

    .line 2495
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v7

    .line 2496
    .local v7, "pageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_3

    .line 2497
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2498
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 2499
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2501
    .local v0, "childCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v0, :cond_2

    .line 2502
    invoke-virtual {v2, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2503
    .local v8, "v":Landroid/view/View;
    instance-of v10, v8, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v10, :cond_1

    .line 2504
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2505
    .local v5, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v3, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2506
    .local v3, "compareCn":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2507
    check-cast v8, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    goto :goto_0

    .line 2501
    .end local v3    # "compareCn":Landroid/content/ComponentName;
    .end local v5    # "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2496
    .end local v8    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v6    # "j":I
    :cond_3
    move-object v8, v9

    .line 2513
    goto :goto_0
.end method

.method getAdditionPageCount()I
    .locals 1

    .prologue
    .line 2285
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    return v0
.end method

.method public getAlignLayoutList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2071
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2072
    .local v1, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    .local v0, "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    if-eqz v1, :cond_0

    .line 2074
    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2076
    :cond_0
    return-object v0
.end method

.method public getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1583
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 1584
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1585
    .local v0, "needToSwipeAffordance":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/home/Workspace;->getPageDescription(IZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1584
    .end local v0    # "needToSwipeAffordance":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCurrentPageOffsetFromCustomContent()I
    .locals 2

    .prologue
    .line 1500
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCustomPageCount()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2838
    const-wide/16 v4, -0x12d

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-wide/16 v4, -0x191

    .line 2839
    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 2840
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    .line 2838
    goto :goto_0

    :cond_1
    move v3, v2

    .line 2839
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2840
    goto :goto_2
.end method

.method public getDefaultPage()I
    .locals 1

    .prologue
    .line 1655
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    return v0
.end method

.method public getDownRawXY()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 2484
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2485
    .local v0, "down":Landroid/graphics/Point;
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDownRawX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2486
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDownRawY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2487
    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/home/WorkspaceDragController;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    return-object v0
.end method

.method getIconView(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .locals 12
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v8, 0x0

    .line 2786
    if-nez p1, :cond_1

    move-object v7, v8

    .line 2819
    :cond_0
    :goto_0
    return-object v7

    .line 2790
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v6

    .line 2792
    .local v6, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_7

    .line 2793
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2794
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_2

    .line 2795
    const-string v9, "Launcher.Workspace"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIconView(), getChildAt( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") return null object"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 2796
    goto :goto_0

    .line 2798
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 2800
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_6

    .line 2801
    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2803
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v9, :cond_4

    .line 2804
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2805
    .local v4, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2800
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2808
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v9, :cond_3

    .line 2809
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 2810
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v9, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2811
    .restart local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto/16 :goto_0

    .line 2792
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "v":Landroid/view/View;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 2818
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v5    # "j":I
    :cond_7
    const-string v9, "Launcher.Workspace"

    const-string v10, "getIconView(), Could\'t find app icon"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 2819
    goto/16 :goto_0
.end method

.method getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J
    .locals 4
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 656
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v2

    .line 659
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method protected getNearestHoverOverPageIndex()I
    .locals 4

    .prologue
    .line 1829
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNearestHoverOverPageIndex()I

    move-result v0

    .line 1831
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x191

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x12d

    .line 1832
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x1f5

    .line 1833
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1834
    :cond_0
    const/4 v0, -0x1

    .line 1836
    .end local v0    # "index":I
    :cond_1
    return v0
.end method

.method public getPageDeleteBtn()Landroid/view/View;
    .locals 3

    .prologue
    .line 2089
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2090
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v1, 0x0

    .line 2091
    .local v1, "pageDeleteBtn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2092
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v1

    .line 2094
    :cond_0
    return-object v1
.end method

.method public getPageDeleteBtn(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2080
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2081
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v1, 0x0

    .line 2082
    .local v1, "pageDeleteBtn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2083
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v1

    .line 2085
    :cond_0
    return-object v1
.end method

.method getPageIndexForScreenId(J)I
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, "settings":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageDescription(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 7
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v6, 0x1

    .line 1551
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    .line 1552
    .local v2, "screenId":J
    const-wide/16 v4, -0xc9

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/16 v4, -0x191

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1553
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    .line 1554
    .local v0, "count":I
    if-le v0, v6, :cond_5

    .line 1555
    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 1574
    .end local v0    # "count":I
    :goto_0
    return-object v1

    .line 1557
    :cond_1
    const-wide/16 v4, -0x1f5

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1558
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    .line 1559
    .restart local v0    # "count":I
    if-le v0, v6, :cond_5

    .line 1560
    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->FESTIVAL:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_0

    .line 1562
    .end local v0    # "count":I
    :cond_2
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne p1, v1, :cond_3

    .line 1563
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    .line 1564
    .restart local v0    # "count":I
    if-lez v0, :cond_5

    .line 1565
    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->HOME:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_0

    .line 1567
    .end local v0    # "count":I
    :cond_3
    const-wide/16 v4, -0x12d

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    .line 1568
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    .line 1569
    .restart local v0    # "count":I
    if-lez v0, :cond_5

    .line 1570
    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_0

    .line 1574
    .end local v0    # "count":I
    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    goto :goto_0
.end method

.method public getRestorePage()I
    .locals 1

    .prologue
    .line 1851
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mRestorePage:I

    return v0
.end method

.method getScreenIdForPageIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 667
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 670
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method getScreenOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 651
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    return-object v0
.end method

.method public getSupportCustomPageCount()I
    .locals 1

    .prologue
    .line 2845
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method public getZeroPageSwitchLayout()Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    .line 2098
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2099
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v1, 0x0

    .line 2100
    .local v1, "zeroPageSwitchLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 2101
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 2103
    :cond_0
    return-object v1
.end method

.method hasExtraEmptyScreen()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 614
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    .line 615
    .local v0, "nScreens":I
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v2

    sub-int/2addr v0, v2

    .line 616
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v4, -0xc9

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasTargetView()Z
    .locals 4

    .prologue
    .line 2602
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    .line 2603
    .local v2, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2604
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2605
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->hasTargetView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2606
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->hasTargetView()Z

    move-result v3

    .line 2609
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_1
    return v3

    .line 2603
    .restart local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2609
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hideDefaultHomeIcon()V
    .locals 1

    .prologue
    .line 2048
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon(Z)V

    .line 2049
    return-void
.end method

.method hideDefaultHomeIcon(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 2055
    :cond_0
    return-void
.end method

.method initDefaultHomeIcon()V
    .locals 3

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1966
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f110094

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    .line 1967
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->HOME_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1968
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/home/Workspace$15;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/Workspace$15;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1979
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 1982
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1985
    :cond_1
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    .line 1986
    return-void
.end method

.method insertAdditionalPageAndMoveItems(IILjava/util/List;)V
    .locals 28
    .param p1, "currentIndex"    # I
    .param p2, "targetIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2353
    .local p3, "againMoveItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;>;"
    const-string v7, "Launcher.Workspace"

    const-string v8, "insertAdditionalPageAndMoveItems()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/home/Workspace;->insertPage(II)J

    move-result-wide v26

    .line 2356
    .local v26, "screenID":J
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2357
    .local v20, "currentCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2358
    .local v4, "targetCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    .line 2359
    move-object/from16 v22, p3

    .line 2360
    .local v22, "moveItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;>;"
    const/4 v5, 0x0

    .line 2361
    .local v5, "cellX":I
    const/4 v6, 0x0

    .line 2363
    .local v6, "cellY":I
    const/16 v24, 0x1

    .line 2364
    .local v24, "previousSpanY":I
    invoke-virtual {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupiedCells()V

    .line 2366
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/Pair;

    .line 2367
    .local v23, "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2368
    .local v21, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2370
    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v7, v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountX()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 2371
    const/4 v5, 0x0

    .line 2372
    add-int v6, v6, v24

    .line 2375
    :cond_0
    const/4 v7, 0x2

    new-array v9, v7, [I

    .line 2376
    .local v9, "tmpXY":[I
    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->findNearestVacantAreaWithCell(IIII[IZ)V

    .line 2379
    const/4 v7, 0x0

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/4 v7, 0x1

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 2380
    const/4 v7, 0x0

    aget v7, v9, v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2381
    const/4 v7, 0x1

    aget v7, v9, v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2384
    :cond_1
    move-object/from16 v0, v21

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_2

    .line 2385
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v7, v21

    check-cast v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v11, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v21

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 2393
    :goto_1
    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v5, v7

    .line 2395
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v24, v0

    .line 2396
    goto/16 :goto_0

    .line 2389
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v23

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v21

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1

    .line 2397
    .end local v9    # "tmpXY":[I
    .end local v21    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v23    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    .line 2398
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 2399
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    .line 2400
    return-void
.end method

.method insertNewWorkspaceScreen(J)J
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method insertNewWorkspaceScreen(JI)J
    .locals 5
    .param p1, "screenId"    # J
    .param p3, "insertIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 406
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->removeCustomFestivalPage()V

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    if-le p3, v1, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result p3

    .line 416
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-result-object v0

    .line 418
    .local v0, "newScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 423
    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 425
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 426
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 427
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->createCustomFestivalPage()V

    .line 430
    :cond_4
    return-wide p1
.end method

.method insertNewWorkspaceScreenBeforeEmptyScreen(J)J
    .locals 5
    .param p1, "screenId"    # J

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 392
    .local v0, "insertIndex":I
    if-gez v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x191

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 395
    :cond_0
    if-gez v0, :cond_1

    .line 396
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 398
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v2

    return-wide v2
.end method

.method insertPageAndMoveItems(II)V
    .locals 29
    .param p1, "currentIndex"    # I
    .param p2, "targetIndex"    # I

    .prologue
    .line 2293
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/home/Workspace;->insertPage(II)J

    move-result-wide v26

    .line 2295
    .local v26, "screenID":J
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2296
    .local v21, "currentCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2297
    .local v4, "targetCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    .line 2298
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    move-object/from16 v23, v0

    .line 2299
    .local v23, "moveItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;>;"
    const/4 v5, 0x0

    .line 2300
    .local v5, "cellX":I
    const/4 v6, 0x0

    .line 2301
    .local v6, "cellY":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2303
    .local v20, "againMoveItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;>;"
    const/16 v25, 0x1

    .line 2304
    .local v25, "previousSpanY":I
    invoke-virtual {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupiedCells()V

    .line 2306
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    .line 2307
    .local v24, "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2308
    .local v22, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2310
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v7, v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountX()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 2311
    const/4 v5, 0x0

    .line 2312
    add-int v6, v6, v25

    .line 2315
    :cond_0
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v7, v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountY()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 2316
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2318
    :cond_1
    const/4 v7, 0x2

    new-array v9, v7, [I

    .line 2319
    .local v9, "tmpXY":[I
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->findNearestVacantAreaWithCell(IIII[IZ)V

    .line 2322
    const/4 v7, 0x0

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    const/4 v7, 0x1

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 2323
    const/4 v7, 0x0

    aget v7, v9, v7

    move-object/from16 v0, v22

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2324
    const/4 v7, 0x1

    aget v7, v9, v7

    move-object/from16 v0, v22

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2327
    :cond_2
    move-object/from16 v0, v22

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_3

    .line 2328
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v7, v22

    check-cast v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v11, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v22

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v22

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 2336
    :goto_1
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v5, v7

    .line 2338
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v25, v0

    goto/16 :goto_0

    .line 2332
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v24

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    move-object/from16 v0, v22

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v22

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1

    .line 2342
    .end local v9    # "tmpXY":[I
    .end local v22    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v24    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    :cond_4
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 2343
    add-int/lit8 v7, p1, 0x1

    add-int/lit8 v8, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/launcher3/home/Workspace;->insertAdditionalPageAndMoveItems(IILjava/util/List;)V

    .line 2346
    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 2347
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    .line 2348
    return-void
.end method

.method public isEmptyPage(I)Z
    .locals 2
    .param p1, "pageIndex"    # I

    .prologue
    .line 2476
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2477
    .local v0, "indexPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2478
    const/4 v1, 0x1

    .line 2480
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isNormalState()Z
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v0

    return v0
.end method

.method isOverviewState()Z
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPinchZoomState()Z
    .locals 2

    .prologue
    .line 2434
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScreenGridState()Z
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v0

    return v0
.end method

.method protected isScrollableToZeroPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 939
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 940
    invoke-static {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isSelectState()Z
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    return v0
.end method

.method public isTouchActive()Z
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleGridPanel()Z
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isVisibleGridPanel()Z

    move-result v0

    return v0
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1483
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 1484
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 1485
    return-void
.end method

.method public moveToDefaultScreen(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1546
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    .line 1547
    return-void
.end method

.method moveToScreen(IZ)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1533
    if-eqz p2, :cond_1

    .line 1534
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 1539
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1540
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1541
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1543
    :cond_0
    return-void

    .line 1536
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected notifyPageChange(III)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "scrollX"    # I
    .param p3, "pageCount"    # I

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2832
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    .line 2834
    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "scrollX"    # I
    .param p5, "pageCount"    # I

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2825
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    .line 2827
    :cond_0
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 0

    .prologue
    .line 920
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    .line 921
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1127
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onAttachedToWindow()V

    .line 1129
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1130
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->computeScroll()V

    .line 1131
    return-void
.end method

.method onChangeChildState()V
    .locals 0

    .prologue
    .line 2107
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->checkVisibilityOfPageDeleteBtn()V

    .line 2108
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled()V

    .line 2109
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 338
    instance-of v2, p2, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v2, :cond_0

    .line 339
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A Workspace can only have CellLayout children."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v1

    .line 344
    .local v1, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkers()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 346
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 347
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 348
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    .end local v1    # "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    :cond_1
    move-object v0, p2

    .line 353
    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 354
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setClickable(Z)V

    .line 355
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    .line 356
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 357
    return-void
.end method

.method protected onConfigurationChangedIfNeeded()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2634
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onConfigurationChangedIfNeeded()V

    .line 2636
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2638
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setupShrinkFactor()V

    .line 2639
    iget v7, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setMinScale(F)V

    .line 2641
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2642
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v7, 0x7f0a0045

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2643
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2645
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2646
    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v7

    int-to-float v3, v7

    .line 2648
    .local v3, "pageIndicatorMarginBottomNormal":F
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2649
    iget v7, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 2650
    iget v7, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 2651
    const v7, 0x7f0a0028

    .line 2652
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v7, v7

    .line 2651
    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 2653
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2654
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    const v8, 0x7f0a002b

    .line 2655
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    .line 2654
    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    .line 2672
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    .line 2673
    .local v2, "pageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 2674
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2675
    .local v6, "workspaceCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-virtual {v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->onConfigurationChangedIfNeeded()V

    .line 2673
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2658
    .end local v0    # "i":I
    .end local v2    # "pageCount":I
    .end local v6    # "workspaceCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2659
    const v7, 0x7f0b000b

    .line 2660
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v5, v7, v8

    .line 2661
    .local v5, "screengridShrinkFactor":F
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 2662
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 2663
    const v7, 0x7f0a0029

    .line 2664
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v7, v7

    .line 2663
    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 2665
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2666
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    const v8, 0x7f0a002c

    .line 2667
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    .line 2666
    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    goto :goto_0

    .line 2678
    .end local v5    # "screengridShrinkFactor":F
    .restart local v0    # "i":I
    .restart local v2    # "pageCount":I
    :cond_2
    const v7, 0x7f0a00af

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/home/Workspace;->mHintPageWidth:I

    .line 2679
    const v7, 0x7f0a00ae

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/home/Workspace;->mHintPageLeftZone:I

    .line 2680
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p0, Lcom/android/launcher3/home/Workspace;->mHintPageLeftZone:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/launcher3/home/Workspace;->mHintPageRightZone:I

    .line 2681
    const v7, 0x7f0a00b0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/launcher3/home/Workspace;->mTranslatePagesOffset:F

    .line 2683
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isShowingHintPages()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2684
    invoke-virtual {p0, v9}, Lcom/android/launcher3/home/Workspace;->showHintPages(Z)V

    .line 2687
    :cond_3
    const v7, 0x7f0a00b2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setPageSpacing(I)V

    .line 2688
    iput-boolean v9, p0, Lcom/android/launcher3/home/Workspace;->mFirstLayout:Z

    .line 2689
    new-instance v7, Lcom/android/launcher3/home/Workspace$18;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/Workspace$18;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2698
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1134
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onDetachedFromWindow()V

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1136
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1178
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1181
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1182
    return-void
.end method

.method public onEndReordering()V
    .locals 6

    .prologue
    .line 1335
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onEndReordering()V

    .line 1337
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1358
    :goto_0
    return-void

    .line 1342
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1343
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    .line 1344
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1345
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1346
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1349
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    .line 1351
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    iget-wide v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1352
    iget-wide v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(I)V

    .line 1353
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    .line 1357
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->enableLayoutTransitions()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 735
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 736
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/view/DragLayer;->isResizeFrameArea(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 805
    :goto_0
    return v4

    .line 739
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    .line 740
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->setScrollForceBlock()V

    .line 741
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-string v6, "2"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    move v4, v5

    .line 742
    goto :goto_0

    .line 747
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getHomeContainer()Lcom/android/launcher3/home/HomeContainer;

    move-result-object v1

    .line 748
    .local v1, "homeContainer":Lcom/android/launcher3/home/HomeContainer;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 805
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 750
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mXDown:F

    .line 751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mYDown:F

    .line 752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mDownRawX:F

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mDownRawY:F

    goto :goto_1

    .line 757
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 758
    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 759
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setLeftScroll(Z)V

    .line 764
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 765
    :cond_4
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->isMultiTouch()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 766
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->cancelCurrentPageLongPress()V

    .line 768
    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-eqz v6, :cond_5

    .line 769
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->snapToDestination()V

    .line 772
    :cond_5
    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    .line 774
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v4

    if-nez v4, :cond_2

    .line 775
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->getPinchDelta()I

    move-result v2

    .line 776
    .local v2, "pinchDelta":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v6, 0x32

    if-le v4, v6, :cond_2

    .line 777
    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    or-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    .line 778
    if-lez v2, :cond_8

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 779
    const-string v4, "Launcher.Workspace"

    const-string v6, "enter Overview by pinch zoom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 781
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 782
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    const v6, 0x7f0901bf

    .line 783
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f090151

    .line 784
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    .line 782
    invoke-virtual {v4, v6, v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_6
    :goto_3
    move v4, v5

    .line 788
    goto/16 :goto_0

    .line 761
    .end local v2    # "pinchDelta":I
    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setLeftScroll(Z)V

    goto/16 :goto_2

    .line 785
    .restart local v2    # "pinchDelta":I
    :cond_8
    if-gez v2, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 786
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_3

    .line 796
    .end local v2    # "pinchDelta":I
    :pswitch_3
    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-nez v4, :cond_2

    .line 797
    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 798
    .local v0, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_2

    .line 799
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 748
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 1450
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(ZZ)V

    .line 1451
    if-eqz p3, :cond_3

    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1452
    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->removeCustomPage(I)V

    .line 1455
    :cond_0
    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1456
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/Workspace$10;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/Workspace$10;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1465
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->pageEndMoving()V

    .line 1467
    :cond_3
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 10
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1412
    if-eqz p3, :cond_2

    .line 1413
    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    .line 1414
    .local v2, "internalStateFrom":I
    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v3

    .line 1415
    .local v3, "internalStateTo":I
    if-ne v2, v4, :cond_0

    if-eq v3, v7, :cond_1

    :cond_0
    if-ne v2, v7, :cond_4

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    .line 1417
    :cond_1
    if-ne v3, v7, :cond_3

    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->setCustomFlagOnChild(ZZ)V

    .line 1438
    .end local v2    # "internalStateFrom":I
    .end local v3    # "internalStateTo":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    .line 1440
    invoke-direct {p0, v5, p3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(ZZ)V

    .line 1441
    return-void

    .restart local v2    # "internalStateFrom":I
    .restart local v3    # "internalStateTo":I
    :cond_3
    move v4, v5

    .line 1417
    goto :goto_0

    .line 1418
    :cond_4
    if-ne v2, v7, :cond_2

    if-ne v3, v4, :cond_2

    .line 1419
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    .line 1420
    .local v0, "currentPage":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1421
    .local v1, "duration":I
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1422
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 1423
    if-eqz p2, :cond_5

    .line 1424
    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    goto :goto_1

    .line 1426
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_2

    .line 1428
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x191

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    .line 1429
    if-eqz p2, :cond_8

    .line 1430
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    goto :goto_1

    .line 1432
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    goto :goto_1
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 1446
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2526
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->onLayout(ZIIII)V

    .line 2527
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->onLayout(Landroid/view/ViewGroup;ZIIII)V

    .line 2530
    :cond_0
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .prologue
    .line 842
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    .line 843
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 844
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->onPageBeginMoving()V

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mNextPage:I

    if-eq v0, v1, :cond_1

    .line 849
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 852
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 853
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mNextPage:I

    if-eq v0, v1, :cond_2

    .line 854
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    .line 858
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 861
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    .line 862
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 863
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->onPageEndMoving()V

    .line 866
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 867
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 872
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 873
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 876
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->forceTouchMove()V

    .line 879
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    .line 881
    .local v2, "page":I
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 882
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 883
    iput-object v4, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 886
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    .line 887
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 888
    iput-object v4, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 891
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 892
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->notifyCaptureIfNecessary()V

    .line 895
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 896
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 897
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 900
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    .line 908
    :cond_6
    :goto_1
    return-void

    .line 869
    .end local v2    # "page":I
    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->clearChildrenCache()V

    goto :goto_0

    .line 901
    .restart local v2    # "page":I
    :cond_8
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 902
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    .line 903
    .local v1, "dragMgr":Lcom/android/launcher3/common/drag/DragManager;
    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->isInScrollArea()Z

    move-result v3

    if-nez v3, :cond_6

    .line 904
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 905
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->startPageFullVI()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1151
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPause()V

    .line 1152
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1154
    iput-object v3, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->closeZeroPageDownloadDialog()V

    .line 1161
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->cancelScroll()V

    .line 1163
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    if-eqz v0, :cond_2

    .line 1164
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "start_from_zeropage"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    const-string v2, "start_from_zeropage"

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 1167
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestartZeroPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ZPEN"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1171
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/GSIMLogging;->setZeroPageStartTime()V

    .line 1174
    :cond_2
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 1189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1140
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onResume()V

    .line 1143
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->hasWallpaperChangedSinceLastCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setWallpaperDimension()V

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1147
    return-void
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    .prologue
    .line 911
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    .line 912
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    .prologue
    .line 915
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    .line 916
    return-void
.end method

.method public onStartReordering()V
    .locals 2

    .prologue
    .line 1327
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onStartReordering()V

    .line 1329
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->disableLayoutTransitions()V

    .line 1330
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    .line 1331
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 685
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    .line 687
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    .line 689
    .local v3, "y":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 690
    .local v1, "homeIconRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 692
    if-nez v0, :cond_0

    .line 693
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 694
    const/4 v4, 0x0

    .line 702
    .end local v1    # "homeIconRect":Landroid/graphics/Rect;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return v4

    .line 699
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 700
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    .line 702
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 708
    return-void
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1312
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mTempCell:[I

    .line 1313
    .local v8, "position":[I
    invoke-virtual {p0, v8}, Lcom/android/launcher3/home/Workspace;->getLocationOnScreen([I)V

    .line 1315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1316
    .local v7, "pointerIndex":I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1317
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1319
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    .line 1319
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1323
    return-void

    .line 1320
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x1

    .line 711
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->onWindowVisibilityChanged(I)V

    .line 712
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    if-nez v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    .line 714
    .local v0, "offset":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    .line 715
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_0

    .line 716
    iput-boolean v2, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    .line 722
    .end local v0    # "offset":Landroid/graphics/Point;
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    if-nez p1, :cond_0

    .line 720
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    goto :goto_0
.end method

.method protected overScroll(I)V
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_1

    if-lez p1, :cond_2

    .line 2538
    :cond_0
    :goto_0
    return-void

    .line 2534
    :cond_1
    if-ltz p1, :cond_0

    .line 2536
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->overScroll(I)V

    goto :goto_0
.end method

.method public pageEndMoving()V
    .locals 0

    .prologue
    .line 2625
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    .line 2626
    return-void
.end method

.method removeAllWorkspaceScreens()V
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->disableLayoutTransitions()V

    .line 371
    const-wide/16 v0, -0x12d

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->removeCustomZeroPage(Z)V

    .line 375
    :cond_0
    const-wide/16 v0, -0x191

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->removeCustomPlusPage()V

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->removeAllViews()V

    .line 381
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 385
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->enableLayoutTransitions()V

    .line 386
    return-void
.end method

.method removeCustomPlusPage()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x191

    .line 1772
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 1773
    .local v1, "customScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v1, :cond_0

    .line 1774
    const-string v2, "Launcher.Workspace"

    const-string v3, "Expected custom plus page to exist"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1790
    :goto_0
    return-void

    .line 1778
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    .line 1780
    .local v0, "currentIndex":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1781
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    .line 1784
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1785
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1786
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1787
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/PageIndicator;->setPlusPage(Z)V

    .line 1789
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method removeExtraEmptyScreen()V
    .locals 2

    .prologue
    .line 468
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    .line 469
    return-void
.end method

.method removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V
    .locals 7
    .param p1, "onComplete"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    const/16 v6, 0x190

    .line 501
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    const-string v2, "Launcher.Workspace"

    const-string v3, "removeExtraEmptyScreenDelayed - workspace loading, skip"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    if-lez p2, :cond_2

    .line 507
    new-instance v2, Lcom/android/launcher3/home/Workspace$4;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/home/Workspace$4;-><init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V

    int-to-long v4, p2

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 517
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v4, -0xc9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 518
    .local v0, "emptyIndex":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 519
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v6}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    .line 520
    const/16 v2, 0x96

    invoke-direct {p0, v6, v2, p1}, Lcom/android/launcher3/home/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    goto :goto_0

    .line 523
    :cond_3
    new-instance v1, Lcom/android/launcher3/home/Workspace$5;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/Workspace$5;-><init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V

    .line 531
    .local v1, "r":Ljava/lang/Runnable;
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 534
    :cond_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 540
    .end local v0    # "emptyIndex":I
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_5
    if-eqz p1, :cond_0

    .line 541
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method removeExtraEmptyScreenOnDrop(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    const-string v1, "Launcher.Workspace"

    const-string v2, "removeExtraEmptyScreenOnDrop - workspace loading, skip"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    new-instance v0, Lcom/android/launcher3/home/Workspace$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/Workspace$3;-><init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V

    .line 490
    .local v0, "r":Ljava/lang/Runnable;
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 493
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 495
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_3
    if-eqz p1, :cond_0

    .line 496
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public removeScreenWithItem(IZZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "onlyScreen"    # Z
    .param p3, "updateModel"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1934
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1935
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-nez v0, :cond_1

    .line 1962
    :cond_0
    :goto_0
    return-void

    .line 1939
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 1941
    .local v2, "screenId":J
    if-nez p2, :cond_2

    .line 1942
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->removeItemsOnScreen(J)V

    .line 1944
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1945
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1946
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    .line 1948
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHome()V

    .line 1951
    if-eqz p3, :cond_3

    .line 1952
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    .line 1955
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1956
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 1957
    const/4 v1, 0x0

    invoke-virtual {p0, v5, v1, v5, p1}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 1958
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/Workspace;->isLastScreen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1959
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon()V

    goto :goto_0
.end method

.method removeTempPage(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 5
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 2269
    .local v2, "screenId":J
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 2271
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 2272
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2273
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    .line 2275
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    if-lt v1, v0, :cond_0

    .line 2276
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    .line 2279
    :cond_0
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ge v0, v1, :cond_1

    .line 2280
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    .line 2282
    :cond_1
    return-void
.end method

.method resetAdditionalPageCount()V
    .locals 1

    .prologue
    .line 2289
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    .line 2290
    return-void
.end method

.method public resetTouchState()V
    .locals 1

    .prologue
    .line 2629
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    .line 2630
    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2583
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->isCurrentTransitionEffectDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2584
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    .line 2589
    :cond_0
    :goto_0
    return-void

    .line 2586
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->reset(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected resetTransitionEffectForInvisiblePage(Landroid/view/View;)V
    .locals 0
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 2593
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->resetTransitionEffect(Landroid/view/View;)V

    .line 2594
    return-void
.end method

.method restoreInstanceStateForChild(I)V
    .locals 3
    .param p1, "child"    # I

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1513
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1515
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 1516
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 1519
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    return-void
.end method

.method restoreInstanceStateForRemainingPages()V
    .locals 4

    .prologue
    .line 1522
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    .line 1523
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1524
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1525
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->restoreInstanceStateForChild(I)V

    .line 1523
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1528
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1529
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 1530
    return-void
.end method

.method protected screenScrolled(III)V
    .locals 1
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 1122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->updatePageAlphaValues(III)V

    .line 1123
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getVisiblePages([I)V

    .line 1124
    return-void
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->canScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1689
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollBy(II)V

    .line 1691
    :cond_1
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getMaxScrollX()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 1696
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 1698
    :cond_1
    return-void
.end method

.method setAlphaWithVisibility(Landroid/view/View;IZ)V
    .locals 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2438
    if-nez p1, :cond_0

    .line 2473
    :goto_0
    return-void

    .line 2442
    :cond_0
    if-nez p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2443
    .local v0, "alpha":F
    :goto_1
    if-eqz p3, :cond_3

    .line 2444
    const-string v4, "alpha"

    new-array v5, v6, [F

    aput v3, v5, v7

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2445
    .local v1, "alphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2446
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 2447
    new-array v3, v6, [F

    aput v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 2451
    if-nez p2, :cond_2

    .line 2452
    new-instance v2, Lcom/android/launcher3/home/Workspace$16;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/home/Workspace$16;-><init>(Lcom/android/launcher3/home/Workspace;Landroid/view/View;I)V

    .line 2467
    .local v2, "listener":Landroid/animation/AnimatorListenerAdapter;
    :goto_2
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2468
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .end local v0    # "alpha":F
    .end local v1    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "listener":Landroid/animation/AnimatorListenerAdapter;
    :cond_1
    move v0, v3

    .line 2442
    goto :goto_1

    .line 2459
    .restart local v0    # "alpha":F
    .restart local v1    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_2
    new-instance v2, Lcom/android/launcher3/home/Workspace$17;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/home/Workspace$17;-><init>(Lcom/android/launcher3/home/Workspace;Landroid/view/View;I)V

    .restart local v2    # "listener":Landroid/animation/AnimatorListenerAdapter;
    goto :goto_2

    .line 2470
    .end local v1    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "listener":Landroid/animation/AnimatorListenerAdapter;
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2471
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method setDefaultPage(I)V
    .locals 1
    .param p1, "defaultPage"    # I

    .prologue
    .line 1634
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(IZ)V

    .line 1635
    return-void
.end method

.method setDefaultPage(IZ)V
    .locals 6
    .param p1, "defaultPage"    # I
    .param p2, "setPref"    # Z

    .prologue
    .line 1638
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-eq v1, p1, :cond_1

    .line 1639
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, p1, -0x1

    .line 1641
    .local v0, "defaultPageOnNormalState":I
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1642
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090128

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v0

    .line 1641
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1644
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1645
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->updateHomeDefaultZeroPageKey(IZ)V

    .line 1648
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;I)V

    .line 1651
    .end local v0    # "defaultPageOnNormalState":I
    :cond_1
    iput p1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    .line 1652
    return-void

    :cond_2
    move v0, p1

    .line 1639
    goto :goto_0
.end method

.method setDelayedResizeRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "addResizeFrame"    # Ljava/lang/Runnable;

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 1631
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 270
    return-void
.end method

.method public setRestorePage(I)V
    .locals 0
    .param p1, "restorePage"    # I

    .prologue
    .line 1847
    iput p1, p0, Lcom/android/launcher3/home/Workspace;->mRestorePage:I

    .line 1848
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 3
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 2613
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    .line 2614
    .local v2, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2615
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2616
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->setTargetView(Landroid/view/View;)V

    .line 2614
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2618
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    return-void
.end method

.method setVisibilityOnCustomLayout(ZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "checkVisibility"    # Z

    .prologue
    .line 2132
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZ)V

    .line 2133
    return-void
.end method

.method setVisibilityOnCustomLayout(ZZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "checkVisibility"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 2136
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 2137
    return-void
.end method

.method setVisibilityOnCustomLayout(ZZZI)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "checkVisibility"    # Z
    .param p3, "animate"    # Z
    .param p4, "pageIndex"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 2141
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2146
    .local v2, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v2, :cond_0

    .line 2150
    if-eqz p1, :cond_5

    .line 2151
    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2158
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2159
    .local v1, "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    const/4 v4, 0x0

    .line 2160
    .local v4, "updateAlignButtonState":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2161
    .local v0, "alignLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_3

    .line 2162
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-eqz p1, :cond_6

    move v6, v8

    :goto_3
    if-ne v10, v6, :cond_3

    .line 2163
    :cond_4
    if-eqz p1, :cond_7

    move v6, v7

    :goto_4
    invoke-virtual {p0, v0, v6, p3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 2164
    move v4, p1

    goto :goto_2

    .line 2152
    .end local v0    # "alignLayout":Landroid/widget/LinearLayout;
    .end local v1    # "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .end local v4    # "updateAlignButtonState":Z
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2153
    const-string v6, "Launcher.Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVisibilityOnCustomLayout : pageIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", indexOfChild(mCustomPage) = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2154
    invoke-virtual {p0, v10}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2153
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    goto :goto_1

    .restart local v0    # "alignLayout":Landroid/widget/LinearLayout;
    .restart local v1    # "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .restart local v4    # "updateAlignButtonState":Z
    :cond_6
    move v6, v7

    .line 2162
    goto :goto_3

    :cond_7
    move v6, v8

    .line 2163
    goto :goto_4

    .line 2169
    .end local v0    # "alignLayout":Landroid/widget/LinearLayout;
    :cond_8
    if-eqz v4, :cond_9

    .line 2170
    invoke-direct {p0, p4}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled(I)V

    .line 2173
    :cond_9
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 2174
    .local v5, "zeroPageSwitchLayout":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_b

    .line 2175
    if-eqz p2, :cond_a

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-eqz p1, :cond_f

    move v6, v8

    :goto_5
    if-ne v9, v6, :cond_b

    .line 2176
    :cond_a
    if-eqz p1, :cond_10

    move v6, v7

    :goto_6
    invoke-virtual {p0, v5, v6, p3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 2180
    :cond_b
    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->canDeleteScreen()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2181
    :cond_c
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v3

    .line 2182
    .local v3, "pageDeleteBtn":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2183
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0, p4}, Lcom/android/launcher3/home/Workspace;->isEmptyPage(I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 2184
    if-nez p1, :cond_0

    .line 2187
    const/4 p2, 0x1

    .line 2191
    :cond_d
    if-eqz p2, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz p1, :cond_11

    move v6, v8

    :goto_7
    if-ne v9, v6, :cond_0

    .line 2192
    :cond_e
    if-eqz p1, :cond_12

    :goto_8
    invoke-virtual {p0, v3, v7, p3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    goto/16 :goto_0

    .end local v3    # "pageDeleteBtn":Landroid/view/View;
    :cond_f
    move v6, v7

    .line 2175
    goto :goto_5

    :cond_10
    move v6, v8

    .line 2176
    goto :goto_6

    .restart local v3    # "pageDeleteBtn":Landroid/view/View;
    :cond_11
    move v6, v7

    .line 2191
    goto :goto_7

    :cond_12
    move v7, v8

    .line 2192
    goto :goto_8
.end method

.method protected setWallpaperDimension()V
    .locals 0

    .prologue
    .line 935
    return-void
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;)V
    .locals 3
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p2, "dragLayer"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 1492
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1494
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    .line 1495
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 1496
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/home/HomeController;)V

    .line 1497
    return-void
.end method

.method setupShrinkFactor()V
    .locals 2

    .prologue
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    .line 256
    return-void
.end method

.method showDefaultHomeIcon(Z)V
    .locals 4
    .param p1, "isCheck"    # Z

    .prologue
    .line 2039
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    const-wide/16 v2, -0x191

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2045
    :goto_0
    return-void

    .line 2043
    :cond_0
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    .line 2044
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    goto :goto_0
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1014
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    if-eq v0, p1, :cond_3

    .line 1017
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x12d

    .line 1018
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x191

    .line 1019
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 1020
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon()V

    .line 1025
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-eq v0, v4, :cond_3

    .line 1026
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    .line 1027
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2, v2, v3, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 1028
    invoke-virtual {p0, v3, v2, v3, p1}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 1031
    :cond_3
    return-void

    .line 1021
    :cond_4
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-eq v0, v4, :cond_2

    .line 1022
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    goto :goto_0
.end method

.method public snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 1000
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 1001
    return-void
.end method

.method protected snapToPage(IILjava/lang/Runnable;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 962
    :cond_0
    iput-object p3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 963
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    .line 964
    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 4
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 969
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 971
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    .line 973
    invoke-static {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    new-instance v0, Lcom/android/launcher3/home/Workspace$8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/Workspace$8;-><init>(Lcom/android/launcher3/home/Workspace;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 982
    :cond_0
    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 955
    const/16 v0, 0x3b6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/home/Workspace;->snapToPage(IILjava/lang/Runnable;)V

    .line 956
    return-void
.end method

.method public snapToPageImmediately(I)V
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 945
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageImmediately(I)V

    .line 946
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isNormalState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 948
    .local v0, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 949
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 952
    .end local v0    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8
    .param p1, "isPageIndicator"    # Z

    .prologue
    .line 2850
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2851
    .local v0, "method":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2852
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2853
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901c1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09018b

    .line 2854
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 2853
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2862
    :goto_1
    return-void

    .line 2850
    .end local v0    # "method":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2855
    .restart local v0    # "method":I
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 2856
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901bb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09012b

    .line 2857
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 2856
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 2859
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901bf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090164

    .line 2860
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 2859
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method snapToScreenId(J)V
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 1004
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    .line 1005
    return-void
.end method

.method public snapToZeroPageFromKeyEvent(I)V
    .locals 3
    .param p1, "whichPage"    # I

    .prologue
    const/4 v2, 0x0

    .line 985
    sget v0, Lcom/android/launcher3/home/Workspace;->PAGE_SNAP_ANIMATION_DURATION:I

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v2, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 986
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 988
    invoke-static {v0, v2}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    new-instance v0, Lcom/android/launcher3/home/Workspace$9;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/Workspace$9;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 997
    :cond_0
    return-void
.end method

.method public touchPageDeleteButton()V
    .locals 2

    .prologue
    .line 1922
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1923
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-nez v0, :cond_0

    .line 1927
    :goto_0
    return-void

    .line 1926
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->touchPageDeleteBtn()V

    goto :goto_0
.end method

.method updateAccessibilityFlags(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v1

    .line 1382
    .local v1, "total":I
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1383
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v2, v0, p1}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;IZ)V

    .line 1382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setImportantForAccessibility(I)V

    .line 1389
    return-void

    .line 1386
    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method

.method updateCheckBox(Z)V
    .locals 9
    .param p1, "visible"    # Z

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    .line 2247
    .local v5, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_5

    .line 2248
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2249
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 2250
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2251
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 2252
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2253
    .local v6, "v":Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_3

    .line 2254
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v7, v6

    .line 2255
    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v7, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->updateCheckBox(Z)V

    move-object v7, v6

    .line 2256
    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 2258
    :cond_1
    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v6    # "v":Landroid/view/View;
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 2251
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2259
    .restart local v6    # "v":Landroid/view/View;
    :cond_3
    instance-of v7, v6, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_2

    .line 2260
    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    .end local v6    # "v":Landroid/view/View;
    invoke-virtual {v6, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    goto :goto_2

    .line 2247
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2264
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v4    # "j":I
    :cond_5
    return-void
.end method

.method updateChildrenLayersEnabled(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 1236
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(ZZ)V

    .line 1237
    return-void
.end method

.method updateDefaultHome(II)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v4, 0x0

    .line 2012
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2013
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    const-wide/16 v2, -0x12d

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2024
    :goto_0
    return-void

    .line 2016
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(I)V

    .line 2017
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    .line 2018
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    .line 2019
    if-eq p1, p2, :cond_1

    .line 2020
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageBg(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 2022
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageBg(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 2023
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto :goto_0
.end method

.method updateDefaultHomePageBg(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 3
    .param p1, "child"    # Lcom/android/launcher3/home/WorkspaceCellLayout;

    .prologue
    .line 2006
    if-eqz p1, :cond_0

    .line 2007
    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 2009
    :cond_0
    return-void

    .line 2007
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateDefaultHomePageIndicator(I)V
    .locals 2
    .param p1, "to"    # I

    .prologue
    .line 2000
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/view/PageIndicator;->updateHomeMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    .line 2003
    :cond_0
    return-void
.end method

.method updateDefaultHomeScreenId(J)V
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 2782
    iput-wide p1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    .line 2783
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 6
    .param p1, "page"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "screenCenter"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2551
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 2573
    :cond_0
    :goto_0
    return-void

    .line 2555
    :cond_1
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v0

    .line 2556
    .local v0, "scrollProgress":F
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->isCurrentTransitionEffectDefault()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2557
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v4}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_3

    cmpl-float v1, v0, v3

    if-lez v1, :cond_4

    .line 2561
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->resetTransitionEffect(Landroid/view/View;)V

    goto :goto_0

    .line 2557
    :cond_3
    cmpg-float v1, v0, v3

    if-ltz v1, :cond_2

    .line 2559
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    goto :goto_0

    .line 2566
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7

    .line 2567
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->reset(Landroid/view/View;)V

    .line 2570
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-gt v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v1, v1, v5

    if-gt p2, v1, :cond_0

    .line 2571
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->transformPage(Landroid/view/View;F)V

    goto :goto_0
.end method
