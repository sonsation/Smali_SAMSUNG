.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_DELAY_RESIZE:J = 0x64L

.field private static final DEFAULT_DELAY_RESIZE:J = 0x96L

.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonBrightness:F

.field private mButtonLightTimeout:J

.field private mDeferDepth:I

.field private mDisplayHasContent:Z

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mInLayout:Z

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mLayoutRepeatCount:I

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field private mObscured:Z

.field mObsuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field private final mPendingDestroyingSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredModeId:I

.field private mPreferredRefreshRate:F

.field private mScreenBrightness:F

.field private mScreenDimDuration:J

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private mSyswin:Z

.field private final mTmpContentRect:Landroid/graphics/Rect;

.field private final mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

.field private final mTmpStartRect:Landroid/graphics/Rect;

.field private mTraversalScheduled:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field private mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    .line 150
    iput-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 151
    iput-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 152
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    .line 154
    iput v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    .line 155
    iput v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    .line 156
    iput-wide v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    .line 158
    iput-wide v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenDimDuration:J

    .line 159
    iput-wide v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonLightTimeout:J

    .line 161
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    .line 167
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 175
    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 178
    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 180
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    .line 185
    iput-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 187
    iput-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    .line 193
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    invoke-direct {v0, v2}, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;-><init>(Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    .line 198
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 197
    return-void
.end method

.method private applySurfaceChangesTransaction(ZIII)V
    .locals 39
    .param p1, "recoveringMemory"    # Z
    .param p2, "numDisplays"    # I
    .param p3, "defaultDw"    # I
    .param p4, "defaultDh"    # I

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_0

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 675
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_1

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 678
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v4, :cond_2

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    .line 680
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 679
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    .line 682
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_3

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    .line 684
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 683
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    .line 687
    :cond_3
    const/16 v21, 0x0

    .line 689
    .local v21, "focusDisplayed":Z
    const/16 v18, 0x0

    .local v18, "displayNdx":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_44

    .line 690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/DisplayContent;

    .line 691
    .local v16, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v35, 0x0

    .line 692
    .local v35, "updateAllDrawn":Z
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v38

    .line 693
    .local v38, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v17

    .line 694
    .local v17, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 695
    .local v5, "displayId":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v19, v0

    .line 696
    .local v19, "dw":I
    move-object/from16 v0, v17

    iget v15, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 697
    .local v15, "dh":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v24, v0

    .line 698
    .local v24, "innerDw":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v23, v0

    .line 699
    .local v23, "innerDh":I
    if-eqz v5, :cond_1d

    .line 700
    const/16 v25, 0x0

    .line 703
    .local v25, "isDefaultDisplay":Z
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 704
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 705
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 708
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_4

    .line 709
    if-eqz v25, :cond_4

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->preApplyForceHidingPolicy()V

    .line 714
    :cond_4
    const/16 v29, 0x0

    .line 716
    .local v29, "repeats":I
    :goto_2
    add-int/lit8 v29, v29, 0x1

    .line 717
    const/4 v4, 0x6

    move/from16 v0, v29

    if-le v0, v4, :cond_1e

    .line 718
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Animation repeat aborted after too many iterations"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v4, 0x0

    move-object/from16 v0, v16

    iput-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 787
    :cond_5
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_6

    .line 788
    if-eqz v25, :cond_6

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->postApplyForceHidingPolicy()V

    .line 794
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    .line 795
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    .line 796
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/DisplayContent;->resetDimming()V

    .line 799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    const/16 v30, 0x0

    .line 801
    .local v30, "someoneLosingFocus":Z
    :goto_3
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v22, v4, -0x1

    .local v22, "i":I
    :goto_4
    if-ltz v22, :cond_42

    .line 802
    move-object/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/wm/WindowState;

    .line 803
    .local v36, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v31

    .line 804
    .local v31, "task":Lcom/android/server/wm/Task;
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-eq v4, v6, :cond_2d

    const/16 v28, 0x1

    .line 807
    .local v28, "obscuredChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 808
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-nez v4, :cond_7

    .line 809
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;)V

    .line 812
    :cond_7
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->applyDimLayerIfNeeded()V

    .line 814
    if-eqz v25, :cond_8

    if-eqz v28, :cond_8

    .line 815
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    .line 814
    if-eqz v4, :cond_8

    .line 815
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    .line 814
    if-eqz v4, :cond_8

    .line 819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 822
    :cond_8
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v37, v0

    .line 828
    .local v37, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 831
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    .line 832
    .local v27, "left":I
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    .line 833
    .local v34, "top":I
    if-eqz v31, :cond_2f

    .line 834
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 835
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v10

    .line 836
    :goto_6
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_9

    .line 837
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 844
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v4, :cond_a

    .line 845
    if-nez v5, :cond_a

    .line 846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 851
    :cond_a
    :try_start_0
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_33

    .line 852
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    .line 851
    if-eqz v4, :cond_33

    .line 865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v4, :cond_32

    .line 866
    if-eqz v31, :cond_32

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v26

    .line 868
    :goto_8
    if-nez v26, :cond_b

    .line 869
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move/from16 v0, v27

    move/from16 v1, v34

    invoke-interface {v4, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_b
    :goto_9
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 903
    .end local v27    # "left":I
    .end local v34    # "top":I
    :cond_c
    :goto_a
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 906
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_12

    .line 909
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowStateAnimator;->deferToPendingTransaction()V

    .line 912
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v14

    .line 913
    .local v14, "committed":Z
    if-eqz v25, :cond_f

    if-eqz v14, :cond_f

    .line 914
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v4, v6, :cond_d

    .line 919
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 921
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_d

    .line 922
    const-string/jumbo v4, "dream and commitFinishDrawingLocked true"

    .line 923
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 922
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 926
    :cond_d
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_f

    .line 927
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v4, :cond_e

    .line 928
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "First draw done in potential wallpaper target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 930
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 931
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_f

    .line 932
    const-string/jumbo v4, "wallpaper and commitFinishDrawingLocked true"

    .line 933
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 932
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 937
    :cond_f
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationStarting()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 983
    :cond_10
    :goto_b
    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 987
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_12

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 988
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v4

    .line 987
    if-eqz v4, :cond_12

    .line 990
    :cond_11
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->setupSurface()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    .line 998
    .end local v14    # "committed":Z
    :cond_12
    move-object/from16 v0, v36

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 999
    .local v11, "atoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v4, :cond_13

    if-eqz v11, :cond_13

    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_13

    .line 1000
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateWindows: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1001
    const-string/jumbo v7, " isOnScreen="

    .line 1000
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1001
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v7

    .line 1000
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1001
    const-string/jumbo v7, " allDrawn="

    .line 1000
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1001
    iget-boolean v7, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1000
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1002
    const-string/jumbo v7, " freezingScreen="

    .line 1000
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1002
    iget-object v7, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    .line 1000
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_13
    if-eqz v11, :cond_1b

    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v4, :cond_14

    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-eqz v4, :cond_14

    .line 1005
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    .line 1004
    if-eqz v4, :cond_1b

    .line 1006
    :cond_14
    iget-wide v6, v11, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-eqz v4, :cond_15

    .line 1007
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v6, v4

    iput-wide v6, v11, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    .line 1008
    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 1009
    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 1010
    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    .line 1011
    const/4 v4, 0x0

    iput-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1013
    :cond_15
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1014
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v4, :cond_16

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_17

    .line 1015
    :cond_16
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Eval win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": isDrawn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1016
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v7

    .line 1015
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1017
    const-string/jumbo v7, ", isAnimationSet="

    .line 1015
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1017
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v7

    .line 1015
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-nez v4, :cond_17

    .line 1019
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not displayed: s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1020
    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1021
    const-string/jumbo v7, " pv="

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1021
    move-object/from16 v0, v36

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1022
    const-string/jumbo v7, " mDrawState="

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1022
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v7

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1023
    const-string/jumbo v7, " ah="

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1023
    move-object/from16 v0, v36

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1024
    const-string/jumbo v7, " th="

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1024
    iget-boolean v7, v11, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1025
    const-string/jumbo v7, " a="

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1025
    move-object/from16 v0, v37

    iget-boolean v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 1019
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_17
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_3e

    .line 1029
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1030
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 1031
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1032
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    .line 1033
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v4, :cond_18

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_19

    .line 1034
    :cond_18
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tokenMayBeDrawn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1035
    const-string/jumbo v7, " w="

    .line 1034
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1035
    const-string/jumbo v7, " numInteresting="

    .line 1034
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1036
    iget v7, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 1034
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1037
    const-string/jumbo v7, " freezingScreen="

    .line 1034
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1038
    iget-object v7, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    .line 1034
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1039
    const-string/jumbo v7, " mAppFreezing="

    .line 1034
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1039
    move-object/from16 v0, v36

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 1034
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_19
    const/16 v35, 0x1

    .line 1048
    :cond_1a
    :goto_c
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-nez v4, :cond_1b

    .line 1049
    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    move-result v4

    .line 1048
    if-eqz v4, :cond_1b

    .line 1050
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_1b

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1051
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 1052
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1067
    :cond_1b
    :goto_d
    if-eqz v25, :cond_1c

    if-eqz v30, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_1c

    .line 1068
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v4

    .line 1067
    if-eqz v4, :cond_1c

    .line 1069
    const/16 v21, 0x1

    .line 1072
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->updateResizingWindows(Lcom/android/server/wm/WindowState;)V

    .line 801
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_4

    .line 699
    .end local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v22    # "i":I
    .end local v25    # "isDefaultDisplay":Z
    .end local v28    # "obscuredChanged":Z
    .end local v29    # "repeats":I
    .end local v30    # "someoneLosingFocus":Z
    .end local v31    # "task":Lcom/android/server/wm/Task;
    .end local v36    # "w":Lcom/android/server/wm/WindowState;
    .end local v37    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1d
    const/16 v25, 0x1

    .restart local v25    # "isDefaultDisplay":Z
    goto/16 :goto_1

    .line 723
    .restart local v29    # "repeats":I
    :cond_1e
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_1f

    .line 724
    const-string/jumbo v4, "On entry to LockedInner"

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 723
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 726
    :cond_1f
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_20

    .line 727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()Z

    move-result v4

    .line 726
    if-eqz v4, :cond_20

    .line 728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 733
    :cond_20
    :goto_e
    if-eqz v25, :cond_22

    .line 734
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_22

    .line 735
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_21

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Computing new config from layout"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 737
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x12

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 742
    :cond_22
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_23

    .line 743
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 747
    :cond_23
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_24

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 754
    :cond_24
    const/4 v4, 0x4

    move/from16 v0, v29

    if-ge v0, v4, :cond_29

    .line 755
    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_28

    const/4 v4, 0x1

    .line 756
    :goto_f
    const/4 v6, 0x0

    .line 755
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V

    .line 763
    :goto_10
    const/4 v4, 0x0

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 765
    if-eqz v25, :cond_2b

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v19

    invoke-interface {v4, v0, v15}, Landroid/view/WindowManagerPolicy;->beginPostLayoutPolicyLw(II)V

    .line 767
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v22, v4, -0x1

    .restart local v22    # "i":I
    :goto_11
    if-ltz v22, :cond_2a

    .line 768
    move-object/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/wm/WindowState;

    .line 769
    .restart local v36    # "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_26

    .line 771
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_25

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v36

    invoke-interface {v4, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->applyForceHidingPolicy(Lcom/android/server/wm/WindowState;)V

    .line 775
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 776
    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 775
    move-object/from16 v0, v36

    invoke-interface {v4, v0, v6, v7}, Landroid/view/WindowManagerPolicy;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 767
    :cond_26
    add-int/lit8 v22, v22, -0x1

    goto :goto_11

    .line 729
    .end local v22    # "i":I
    .end local v36    # "w":Lcom/android/server/wm/WindowState;
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 730
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto/16 :goto_e

    .line 755
    :cond_28
    const/4 v4, 0x0

    goto :goto_f

    .line 758
    :cond_29
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Layout repeat skipped after too many iterations"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 779
    .restart local v22    # "i":I
    :cond_2a
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 780
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->finishPostLayoutPolicyLw()I

    move-result v6

    .line 779
    or-int/2addr v4, v6

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 781
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_2b

    const-string/jumbo v4, "after finishPostLayoutPolicyLw"

    .line 782
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 781
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 784
    .end local v22    # "i":I
    :cond_2b
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v4, :cond_5

    goto/16 :goto_2

    .line 799
    :cond_2c
    const/16 v30, 0x1

    .restart local v30    # "someoneLosingFocus":Z
    goto/16 :goto_3

    .line 804
    .restart local v22    # "i":I
    .restart local v31    # "task":Lcom/android/server/wm/Task;
    .restart local v36    # "w":Lcom/android/server/wm/WindowState;
    :cond_2d
    const/16 v28, 0x0

    .restart local v28    # "obscuredChanged":Z
    goto/16 :goto_5

    .line 834
    .restart local v27    # "left":I
    .restart local v34    # "top":I
    .restart local v37    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2e
    const/4 v10, 0x1

    .local v10, "adjustedForMinimizedDockOrIme":Z
    goto/16 :goto_6

    .line 833
    .end local v10    # "adjustedForMinimizedDockOrIme":Z
    :cond_2f
    const/4 v10, 0x0

    .restart local v10    # "adjustedForMinimizedDockOrIme":Z
    goto/16 :goto_6

    .line 837
    .end local v10    # "adjustedForMinimizedDockOrIme":Z
    :cond_30
    if-nez v10, :cond_9

    .line 838
    if-eqz v31, :cond_31

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->hasMovementAnimations()Z

    move-result v4

    .line 836
    if-eqz v4, :cond_9

    .line 839
    :cond_31
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v4, :cond_9

    .line 840
    move-object/from16 v0, v37

    move/from16 v1, v27

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setMoveAnimation(II)V

    goto/16 :goto_7

    .line 865
    :cond_32
    const/16 v26, 0x0

    .local v26, "isFreeformMoving":Z
    goto/16 :goto_8

    .line 873
    .end local v26    # "isFreeformMoving":Z
    :cond_33
    :try_start_1
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move/from16 v0, v27

    move/from16 v1, v34

    invoke-interface {v4, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 875
    :catch_0
    move-exception v20

    .local v20, "e":Landroid/os/RemoteException;
    goto/16 :goto_9

    .line 879
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v27    # "left":I
    .end local v34    # "top":I
    :cond_34
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/view/IWindowStateBridge;->hasMoved()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 881
    :try_start_2
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    .line 882
    .restart local v27    # "left":I
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    .line 884
    .restart local v34    # "top":I
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_37

    .line 885
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    .line 884
    if-eqz v4, :cond_37

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v4, :cond_36

    .line 887
    if-eqz v31, :cond_36

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v26

    .line 889
    :goto_12
    if-nez v26, :cond_35

    .line 890
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move/from16 v0, v27

    move/from16 v1, v34

    invoke-interface {v4, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 898
    .end local v27    # "left":I
    .end local v34    # "top":I
    :cond_35
    :goto_13
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    goto/16 :goto_a

    .line 886
    .restart local v27    # "left":I
    .restart local v34    # "top":I
    :cond_36
    const/16 v26, 0x0

    .restart local v26    # "isFreeformMoving":Z
    goto :goto_12

    .line 894
    .end local v26    # "isFreeformMoving":Z
    :cond_37
    :try_start_3
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move/from16 v0, v27

    move/from16 v1, v34

    invoke-interface {v4, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_13

    .line 896
    .end local v27    # "left":I
    .end local v34    # "top":I
    :catch_1
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto :goto_13

    .line 948
    .end local v20    # "e":Landroid/os/RemoteException;
    .restart local v14    # "committed":Z
    :cond_38
    const/4 v13, 0x0

    .line 951
    .local v13, "attachedWindowWillBeMoveAnimation":Z
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_39

    .line 952
    if-eqz v31, :cond_39

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v4

    .line 951
    if-eqz v4, :cond_39

    .line 953
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_39

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v4

    .line 951
    if-eqz v4, :cond_39

    .line 954
    move-object/from16 v0, v36

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 955
    .local v12, "attached":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v33

    .line 956
    .local v33, "tmpTask":Lcom/android/server/wm/Task;
    if-eqz v33, :cond_3b

    .line 957
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 958
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v32

    .line 959
    :goto_14
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_39

    .line 960
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 970
    .end local v12    # "attached":Lcom/android/server/wm/WindowState;
    .end local v33    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_39
    :goto_15
    if-nez v13, :cond_10

    .line 974
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->isWaitingForVirtualScreen(I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 975
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    goto/16 :goto_b

    .line 957
    .restart local v12    # "attached":Lcom/android/server/wm/WindowState;
    .restart local v33    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_3a
    const/16 v32, 0x1

    .local v32, "tmpAdjustedForMinimizedDockOrIme":Z
    goto :goto_14

    .line 956
    .end local v32    # "tmpAdjustedForMinimizedDockOrIme":Z
    :cond_3b
    const/16 v32, 0x0

    .restart local v32    # "tmpAdjustedForMinimizedDockOrIme":Z
    goto :goto_14

    .line 960
    .end local v32    # "tmpAdjustedForMinimizedDockOrIme":Z
    :cond_3c
    if-nez v32, :cond_39

    .line 961
    if-eqz v33, :cond_3d

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->hasMovementAnimations()Z

    move-result v4

    .line 959
    if-eqz v4, :cond_39

    .line 962
    :cond_3d
    iget-object v4, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v4, :cond_39

    .line 967
    const/4 v13, 0x1

    goto :goto_15

    .line 1043
    .end local v12    # "attached":Lcom/android/server/wm/WindowState;
    .end local v13    # "attachedWindowWillBeMoveAnimation":Z
    .end local v14    # "committed":Z
    .end local v33    # "tmpTask":Lcom/android/server/wm/Task;
    .restart local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3e
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x32

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1045
    const/4 v4, 0x1

    iput-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_c

    .line 1053
    :cond_3f
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    .line 1054
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v4, :cond_40

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_41

    .line 1055
    :cond_40
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tokenMayBeDrawnExcludingSaved: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1056
    const-string/jumbo v7, " w="

    .line 1055
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1056
    const-string/jumbo v7, " numInteresting="

    .line 1055
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1057
    iget v7, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 1055
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1058
    const-string/jumbo v7, " freezingScreen="

    .line 1055
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1059
    iget-object v7, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    .line 1055
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1060
    const-string/jumbo v7, " mAppFreezing="

    .line 1055
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1060
    move-object/from16 v0, v36

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 1055
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_41
    const/16 v35, 0x1

    goto/16 :goto_d

    .line 1075
    .end local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v28    # "obscuredChanged":Z
    .end local v31    # "task":Lcom/android/server/wm/Task;
    .end local v36    # "w":Lcom/android/server/wm/WindowState;
    .end local v37    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1076
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 1077
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 1078
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 1079
    const/4 v9, 0x1

    .line 1075
    invoke-virtual/range {v4 .. v9}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->stopDimmingIfNeeded()V

    .line 1083
    if-eqz v35, :cond_43

    .line 1084
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->updateAllDrawnLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 689
    :cond_43
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 1094
    .end local v5    # "displayId":I
    .end local v15    # "dh":I
    .end local v16    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v19    # "dw":I
    .end local v22    # "i":I
    .end local v23    # "innerDh":I
    .end local v24    # "innerDw":I
    .end local v25    # "isDefaultDisplay":Z
    .end local v29    # "repeats":I
    .end local v30    # "someoneLosingFocus":Z
    .end local v35    # "updateAllDrawn":Z
    .end local v38    # "windows":Lcom/android/server/wm/WindowList;
    :cond_44
    if-eqz v21, :cond_45

    .line 1095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1100
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal;->performTraversalInTransactionFromWindowManager()V

    .line 671
    return-void
.end method

.method private createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V
    .locals 22
    .param p1, "transit"    # I
    .param p2, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "openingLayer"    # I
    .param p4, "closingLayer"    # I

    .prologue
    .line 1968
    if-nez p2, :cond_1

    const/16 v18, 0x0

    .line 1969
    .local v18, "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :goto_0
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v3, :cond_2

    .line 1970
    :cond_0
    return-void

    .line 1968
    .end local v18    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v18, v0

    goto :goto_0

    .line 1972
    .restart local v18    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v3, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v19, v0

    .line 1973
    .local v19, "taskId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1974
    .local v20, "thumbnailHeader":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v3, v6, :cond_5

    .line 1975
    :cond_3
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No thumbnail header bitmap for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_4
    return-void

    .line 1980
    :cond_5
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v12, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1983
    .local v12, "dirty":Landroid/graphics/Rect;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    .line 1984
    .local v14, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v13

    .line 1985
    .local v13, "display":Landroid/view/Display;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    .line 1988
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v2, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 1989
    const-string/jumbo v4, "thumbnail anim"

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1990
    const/4 v7, -0x3

    const/4 v8, 0x4

    .line 1988
    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 1991
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {v13}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1992
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_6

    .line 1993
    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  THUMBNAIL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": CREATE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_6
    new-instance v16, Landroid/view/Surface;

    invoke-direct/range {v16 .. v16}, Landroid/view/Surface;-><init>()V

    .line 1998
    .local v16, "drawSurface":Landroid/view/Surface;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 1999
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v11

    .line 2000
    .local v11, "c":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2001
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 2002
    invoke-virtual/range {v16 .. v16}, Landroid/view/Surface;->release()V

    .line 2006
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionAspectScaled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2010
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v21

    .line 2011
    .local v21, "win":Lcom/android/server/wm/WindowState;
    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    .line 2013
    .local v4, "appRect":Landroid/graphics/Rect;
    :goto_1
    if-eqz v21, :cond_8

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 2018
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2019
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 2020
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v9, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v6, v20

    move/from16 v7, v19

    .line 2018
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;III)Landroid/view/animation/Animation;

    move-result-object v10

    .line 2021
    .local v10, "anim":Landroid/view/animation/Animation;
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    .line 2023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionScaleUp()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    .line 2022
    :goto_3
    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    .line 2028
    .end local v4    # "appRect":Landroid/graphics/Rect;
    .end local v21    # "win":Lcom/android/server/wm/WindowState;
    :goto_4
    const-wide/16 v6, 0x2710

    invoke-virtual {v10, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 2029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2031
    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 2032
    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 2033
    move-object/from16 v0, v18

    iput-object v10, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    .line 2034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    move/from16 v0, v19

    invoke-virtual {v3, v0, v6}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1967
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v13    # "display":Landroid/view/Display;
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v16    # "drawSurface":Landroid/view/Surface;
    :goto_5
    return-void

    .line 2012
    .restart local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .restart local v11    # "c":Landroid/graphics/Canvas;
    .restart local v13    # "display":Landroid/view/Display;
    .restart local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v16    # "drawSurface":Landroid/view/Surface;
    .restart local v21    # "win":Lcom/android/server/wm/WindowState;
    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    iget v3, v15, Landroid/view/DisplayInfo;->appWidth:I

    iget v6, v15, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v4    # "appRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 2013
    :cond_8
    const/4 v5, 0x0

    .local v5, "insets":Landroid/graphics/Rect;
    goto :goto_2

    .line 2023
    .end local v5    # "insets":Landroid/graphics/Rect;
    .restart local v10    # "anim":Landroid/view/animation/Animation;
    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    .line 2025
    .end local v4    # "appRect":Landroid/graphics/Rect;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v21    # "win":Lcom/android/server/wm/WindowState;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2026
    iget v6, v15, Landroid/view/DisplayInfo;->appWidth:I

    iget v7, v15, Landroid/view/DisplayInfo;->appHeight:I

    .line 2025
    move/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailScaleAnimationLocked(IIILandroid/graphics/Bitmap;)Landroid/view/animation/Animation;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .restart local v10    # "anim":Landroid/view/animation/Animation;
    goto :goto_4

    .line 2035
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v13    # "display":Landroid/view/Display;
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v16    # "drawSurface":Landroid/view/Surface;
    :catch_0
    move-exception v17

    .line 2036
    .local v17, "e":Landroid/view/Surface$OutOfResourcesException;
    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t allocate thumbnail/Canvas surface w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2037
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 2036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2037
    const-string/jumbo v7, " h="

    .line 2036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2037
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 2036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2038
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    goto :goto_5
.end method

.method private handleAppTransitionReadyLocked(Lcom/android/server/wm/WindowList;)I
    .locals 28
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v10

    .line 1359
    .local v10, "appsCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/wm/WindowSurfacePlacer;->transitionGoodToGo(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1360
    const/4 v3, 0x0

    return v3

    .line 1362
    :cond_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "**** GOOD TO GO"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v3, v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->checkAppTransitionForForceHiding(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v4

    .line 1367
    .local v4, "transit":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v3, :cond_2

    .line 1368
    const/4 v4, -0x1

    .line 1370
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v3, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 1371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v25, 0xd

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 1377
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 1381
    const/4 v9, 0x0

    .line 1382
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v11, -0x1

    .line 1383
    .local v11, "bestAnimLayer":I
    const/4 v14, 0x0

    .line 1384
    .local v14, "fullscreenAnim":Z
    const/16 v22, 0x0

    .line 1387
    .local v22, "voiceInteraction":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->getLowerWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 1389
    .local v7, "lowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->getUpperWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 1391
    .local v8, "upperWallpaperTarget":Lcom/android/server/wm/WindowState;
    const/4 v5, 0x0

    .line 1392
    .local v5, "openingAppHasWallpaper":Z
    const/4 v6, 0x0

    .line 1395
    .local v6, "closingAppHasWallpaper":Z
    if-nez v7, :cond_6

    .line 1396
    const/16 v21, 0x0

    .local v21, "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    const/16 v16, 0x0

    .line 1413
    .end local v21    # "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 1414
    .local v13, "closingAppsCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int v10, v13, v3

    .line 1415
    const/4 v15, 0x0

    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "voiceInteraction":Z
    .local v15, "i":I
    :goto_1
    if-ge v15, v10, :cond_a

    .line 1417
    if-ge v15, v13, :cond_7

    .line 1418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/AppWindowToken;

    .line 1419
    .local v24, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1420
    :cond_3
    const/4 v6, 0x1

    .line 1429
    :cond_4
    :goto_2
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    or-int v22, v22, v3

    .line 1431
    .local v22, "voiceInteraction":Z
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v3, :cond_9

    .line 1432
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v23

    .line 1433
    .local v23, "ws":Lcom/android/server/wm/WindowState;
    if-eqz v23, :cond_5

    .line 1434
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1435
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 1436
    const/4 v14, 0x1

    .line 1415
    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v23    # "ws":Lcom/android/server/wm/WindowState;
    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1398
    .end local v13    # "closingAppsCount":I
    .end local v15    # "i":I
    .end local v24    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v22, "voiceInteraction":Z
    :cond_6
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    .line 1399
    .local v16, "lowerWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v21, v0

    .local v21, "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_0

    .line 1423
    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "lowerWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    .end local v21    # "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    .end local v22    # "voiceInteraction":Z
    .restart local v13    # "closingAppsCount":I
    .restart local v15    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sub-int v25, v15, v13

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/AppWindowToken;

    .line 1424
    .restart local v24    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_8

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1425
    :cond_8
    const/4 v5, 0x1

    goto :goto_2

    .line 1438
    .local v22, "voiceInteraction":Z
    :cond_9
    if-nez v14, :cond_5

    .line 1439
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v23

    .line 1440
    .restart local v23    # "ws":Lcom/android/server/wm/WindowState;
    if-eqz v23, :cond_5

    .line 1441
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v3, v11, :cond_5

    .line 1442
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1443
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_3

    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "voiceInteraction":Z
    .end local v23    # "ws":Lcom/android/server/wm/WindowState;
    .end local v24    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_a
    move-object/from16 v3, p0

    .line 1449
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToWallpaper(IZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v4

    .line 1456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1457
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1458
    const-string/jumbo v25, "Animations disallowed by keyguard or dream."

    .line 1457
    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_b
    const/4 v9, 0x0

    .line 1462
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->processApplicationsAnimatingInPlace(I)V

    .line 1464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 1465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v9, v1, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget-object v0, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v18, v0

    .line 1467
    .local v18, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget v0, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    move/from16 v19, v0

    .line 1469
    .local v19, "topClosingLayer":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v4, v9, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;

    move-result-object v20

    .line 1472
    .local v20, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    if-nez v20, :cond_f

    const/16 v17, 0x0

    .line 1474
    :goto_4
    if-nez v18, :cond_10

    const/4 v12, 0x0

    .line 1477
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move-object/from16 v26, v0

    .line 1477
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v3, v0, v12, v1, v2}, Lcom/android/server/wm/AppTransition;->goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1484
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_d

    .line 1485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->clearFreeformTransit(Landroid/util/ArraySet;)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->clearFreeformTransit(Landroid/util/ArraySet;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const-string/jumbo v25, "handle_transit_done"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v3, v0, v1, v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 1490
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v3, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 1499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1502
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v25, 0x2

    .line 1503
    const/16 v26, 0x1

    .line 1502
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    .line 1506
    const/4 v3, 0x3

    return v3

    .line 1473
    :cond_f
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v17, v0

    .local v17, "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_4

    .line 1475
    .end local v17    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_10
    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .local v12, "closingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_5

    .line 1500
    .end local v12    # "closingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    goto :goto_6
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .locals 14
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "layerAndToken"    # Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v9

    .line 1596
    .local v9, "appsCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_8

    .line 1597
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 1604
    .local v2, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->markSavedSurfaceExiting()V

    .line 1606
    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1607
    .local v8, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Now closing app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 1609
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 1610
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 1611
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p2

    move v5, p1

    move/from16 v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 1613
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1617
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1618
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1621
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_3

    .line 1624
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 1626
    if-eqz p2, :cond_6

    .line 1627
    const/4 v12, -0x1

    .line 1628
    .local v12, "layer":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 1629
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 1630
    .local v13, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v1, v12, :cond_2

    .line 1631
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1628
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1622
    .end local v11    # "j":I
    .end local v12    # "layer":I
    .end local v13    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleRemoveStartingWindowLocked(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_1

    .line 1634
    .restart local v11    # "j":I
    .restart local v12    # "layer":I
    :cond_4
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_5

    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    if-le v12, v1, :cond_6

    .line 1635
    :cond_5
    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 1636
    move-object/from16 v0, p4

    iput v12, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    .line 1639
    .end local v11    # "j":I
    .end local v12    # "layer":I
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1640
    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    .line 1596
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1593
    .end local v2    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v8    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_8
    return-void
.end method

.method private handleNotObscuredLocked(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;)V
    .locals 10
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "dispInfo"    # Landroid/view/DisplayInfo;

    .prologue
    .line 1791
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1792
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1793
    .local v0, "attrFlags":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    .line 1794
    .local v2, "canBeSeen":Z
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1796
    .local v4, "privateflags":I
    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->isObscuringFullscreen(Landroid/view/DisplayInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x8b1

    if-eq v6, v7, :cond_1

    .line 1800
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-nez v6, :cond_0

    .line 1801
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    .line 1804
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    .line 1807
    :cond_1
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_10

    .line 1809
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1811
    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_11

    .line 1812
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 1813
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1819
    :cond_2
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 1820
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 1821
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    .line 1823
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 1824
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 1825
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    .line 1827
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_5

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    .line 1828
    iget-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 1829
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    .line 1832
    :cond_5
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_6

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    .line 1833
    iget-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenDimDuration:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 1834
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenDimDuration:J

    .line 1836
    :cond_6
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_7

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    .line 1837
    iget-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonLightTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    .line 1838
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    iput-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonLightTimeout:J

    .line 1840
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    invoke-interface {v6, v7, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->restoreFromForceUserActivityTimeout(ZLcom/android/server/wm/WindowState;)V

    .line 1844
    :cond_8
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1845
    .local v5, "type":I
    if-eqz v2, :cond_a

    .line 1846
    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_9

    .line 1847
    const/16 v6, 0x7da

    if-ne v5, v6, :cond_12

    .line 1853
    :cond_9
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    .line 1856
    :cond_a
    if-eqz v2, :cond_10

    .line 1859
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1860
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_13

    iget-boolean v6, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_13

    .line 1865
    const/16 v6, 0x7e7

    if-eq v5, v6, :cond_b

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_c

    .line 1866
    :cond_b
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 1868
    :cond_c
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 1875
    :cond_d
    :goto_2
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_e

    .line 1876
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_e

    .line 1877
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 1879
    :cond_e
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    if-nez v6, :cond_f

    .line 1880
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v6, :cond_f

    .line 1881
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 1883
    :cond_f
    const/high16 v6, 0x40000

    and-int/2addr v6, v4

    if-eqz v6, :cond_10

    .line 1884
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    .line 1790
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "type":I
    :cond_10
    return-void

    .line 1814
    :cond_11
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v6, :cond_2

    .line 1815
    const-string/jumbo v6, "DebugKeepScreenOn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleNotObscuredLocked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " was holding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1816
    const-string/jumbo v8, "screen wakelock but no longer has FLAG_KEEP_SCREEN_ON!!! called by"

    .line 1815
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1817
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    .line 1815
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1848
    .restart local v5    # "type":I
    :cond_12
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_9

    .line 1850
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v7, 0x10000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_a

    goto/16 :goto_1

    .line 1869
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_13
    if-eqz v3, :cond_d

    .line 1870
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v6, :cond_14

    .line 1871
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-eqz v6, :cond_d

    const/16 v6, 0x7d9

    if-ne v5, v6, :cond_d

    .line 1873
    :cond_14
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    goto/16 :goto_2
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;
    .locals 20
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "topClosingLayer"    # I

    .prologue
    .line 1511
    const/16 v16, 0x0

    .line 1512
    .local v16, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 1513
    .local v12, "appsCount":I
    const/4 v13, 0x0

    .end local v16    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_e

    .line 1514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 1515
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v11, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1516
    .local v11, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Now opening app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_0
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    if-nez v4, :cond_1

    .line 1519
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 1520
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 1522
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 1524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1525
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move/from16 v8, p1

    move/from16 v10, p3

    .line 1524
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1531
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1532
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 1534
    iget-object v4, v11, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1535
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v19

    .line 1536
    .local v19, "windowsCount":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_3

    .line 1537
    iget-object v6, v11, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1539
    :cond_3
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1540
    const-string/jumbo v6, ">>> OPEN TRANSACTION handleAppTransitionReadyLocked()"

    .line 1539
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_4
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1543
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1545
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1546
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1547
    const-string/jumbo v6, "<<< CLOSE TRANSACTION handleAppTransitionReadyLocked()"

    .line 1546
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v6, v4, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, v4, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 1551
    const/16 v17, 0x0

    .line 1552
    .local v17, "topOpeningLayer":I
    if-eqz p2, :cond_c

    .line 1553
    const/4 v15, -0x1

    .line 1554
    .local v15, "layer":I
    const/4 v14, 0x0

    :goto_2
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v14, v4, :cond_a

    .line 1555
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowState;

    .line 1565
    .local v18, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v4, :cond_6

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v4, :cond_9

    .line 1576
    :cond_6
    :goto_3
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v4, v15, :cond_7

    .line 1577
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v15, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1554
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1544
    .end local v15    # "layer":I
    .end local v17    # "topOpeningLayer":I
    .end local v18    # "win":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v4

    .line 1545
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1546
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1547
    const-string/jumbo v7, "<<< CLOSE TRANSACTION handleAppTransitionReadyLocked()"

    .line 1546
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_8
    throw v4

    .line 1566
    .restart local v15    # "layer":I
    .restart local v17    # "topOpeningLayer":I
    .restart local v18    # "win":Lcom/android/server/wm/WindowState;
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 1574
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_3

    .line 1580
    .end local v18    # "win":Lcom/android/server/wm/WindowState;
    :cond_a
    if-eqz v16, :cond_b

    if-lez v15, :cond_c

    .line 1581
    :cond_b
    move-object/from16 v16, v5

    .line 1582
    .local v16, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move/from16 v17, v15

    .line 1585
    .end local v15    # "layer":I
    .end local v16    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1586
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p4

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    .line 1513
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1589
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v11    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v14    # "j":I
    .end local v17    # "topOpeningLayer":I
    .end local v19    # "windowsCount":I
    :cond_e
    return-object v16
.end method

.method private maybeUpdateTransitToWallpaper(IZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 10
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z
    .param p4, "lowerWallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p5, "upperWallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/16 v9, 0x12d

    const/16 v8, 0x12c

    const/4 v7, 0x0

    .line 1709
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1711
    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1712
    const/4 v1, 0x0

    .line 1713
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 1714
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 1715
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New wallpaper target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1717
    const-string/jumbo v6, ", oldWallpaper="

    .line 1716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1718
    const-string/jumbo v6, ", lower target="

    .line 1716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1719
    const-string/jumbo v6, ", upper target="

    .line 1716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1720
    const-string/jumbo v6, ", openingApps="

    .line 1716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1721
    const-string/jumbo v6, ", closingApps="

    .line 1716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1715
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v7, v4, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    .line 1725
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_3

    .line 1726
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getFreeformRelaunchAnimState()I

    move-result v4

    if-nez v4, :cond_1

    .line 1727
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getSplitRelaunchAnimState()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1728
    :cond_1
    return p1

    .line 1712
    .end local v0    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    :cond_2
    move-object v1, v3

    .local v1, "oldWallpaper":Lcom/android/server/wm/WindowState;
    goto :goto_0

    .line 1733
    .end local v1    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .restart local v0    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    :cond_3
    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    .line 1734
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_4

    .line 1735
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Wallpaper animation!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 1748
    :goto_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1749
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New transit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1748
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_5
    :goto_2
    return p1

    .line 1740
    :pswitch_0
    const/16 p1, 0xe

    .line 1741
    goto :goto_1

    .line 1745
    :pswitch_1
    const/16 p1, 0xf

    .line 1746
    goto :goto_1

    .line 1750
    :cond_6
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1765
    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1766
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1765
    if-eqz v4, :cond_9

    .line 1768
    if-eq p1, v8, :cond_9

    .line 1769
    if-eq p1, v9, :cond_9

    .line 1772
    if-eqz p1, :cond_9

    .line 1776
    const/16 p1, 0xd

    .line 1777
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New transit into wallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1779
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1778
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1777
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1751
    :cond_8
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1752
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1750
    if-eqz v4, :cond_7

    .line 1754
    if-eq p1, v8, :cond_7

    .line 1755
    if-eq p1, v9, :cond_7

    .line 1758
    if-eqz p1, :cond_7

    .line 1761
    const/16 p1, 0xc

    .line 1762
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1763
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New transit away from wallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1764
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1763
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1762
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1781
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    goto/16 :goto_2

    .line 1736
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performSurfacePlacementInner(Z)V
    .locals 31
    .param p1, "recoveringMemory"    # Z

    .prologue
    .line 314
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v27, :cond_0

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "performSurfacePlacementInner: entry. Called by "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 315
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v29

    .line 314
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    const/16 v23, 0x0

    .line 320
    .local v23, "updateInputWindowsNeeded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    .line 323
    const/16 v28, 0x3

    const/16 v29, 0x0

    .line 322
    invoke-virtual/range {v27 .. v29}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v23

    .line 327
    .end local v23    # "updateInputWindowsNeeded":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 328
    .local v18, "numDisplays":I
    const/4 v13, 0x0

    .local v13, "displayNdx":I
    :goto_0
    move/from16 v0, v18

    if-ge v13, v0, :cond_3

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 330
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    .local v17, "i":I
    :goto_1
    if-ltz v17, :cond_2

    .line 331
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowToken;

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 330
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 328
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 335
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    add-int/lit8 v19, v27, -0x1

    .local v19, "stackNdx":I
    :goto_2
    if-ltz v19, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/TaskStack;

    .line 337
    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 339
    .local v15, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v15}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v27

    add-int/lit8 v22, v27, -0x1

    .local v22, "tokenNdx":I
    :goto_3
    if-ltz v22, :cond_4

    .line 340
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/AppWindowToken;

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    .line 339
    add-int/lit8 v22, v22, -0x1

    goto :goto_3

    .line 335
    :cond_4
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 344
    .end local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v22    # "tokenNdx":I
    :cond_5
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 345
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 346
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    .line 347
    const/high16 v27, -0x40800000    # -1.0f

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    .line 348
    const/high16 v27, -0x40800000    # -1.0f

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    .line 349
    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    .line 351
    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenDimDuration:J

    .line 352
    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonLightTimeout:J

    .line 354
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 355
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 359
    .local v6, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 360
    .local v8, "defaultInfo":Landroid/view/DisplayInfo;
    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 361
    .local v7, "defaultDw":I
    iget v5, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 363
    .local v5, "defaultDh":I
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v27, :cond_6

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 364
    const-string/jumbo v28, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    .line 363
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_6
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 367
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v7, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->applySurfaceChangesTransaction(ZIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 372
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v27, :cond_7

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 373
    const-string/jumbo v28, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    .line 372
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_7
    :goto_4
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v9

    .line 381
    .local v9, "defaultWindows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 382
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wm/WindowSurfacePlacer;->handleAppTransitionReadyLocked(Lcom/android/server/wm/WindowList;)I

    move-result v28

    or-int v27, v27, v28

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 383
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v27, :cond_8

    .line 384
    const-string/jumbo v27, "after handleAppTransitionReadyLocked"

    .line 385
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 388
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    move/from16 v27, v0

    if-nez v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 395
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    move-result v28

    .line 395
    or-int v27, v27, v28

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 397
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v27, :cond_9

    .line 398
    const-string/jumbo v27, "after handleAnimStopAndXitionLock"

    .line 399
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 404
    :cond_9
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->handleScreenFreezeAnimationReady()I

    move-result v28

    or-int v27, v27, v28

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 408
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    if-nez v27, :cond_a

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v27

    if-eqz v27, :cond_10

    .line 421
    :cond_a
    :goto_5
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    .line 423
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 424
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v27, :cond_b

    .line 425
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Wallpaper may change!  Adjusting"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_b
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 427
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v27, :cond_c

    const-string/jumbo v27, "WallpaperMayChange"

    .line 428
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 431
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    .line 434
    const/16 v29, 0x0

    .line 433
    invoke-virtual/range {v27 .. v29}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 435
    const/16 v23, 0x1

    .line 436
    .restart local v23    # "updateInputWindowsNeeded":Z
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 440
    .end local v23    # "updateInputWindowsNeeded":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 441
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 442
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v27, :cond_e

    const-string/jumbo v27, "mLayoutNeeded"

    .line 443
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 446
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    .restart local v17    # "i":I
    :goto_6
    if-ltz v17, :cond_17

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 448
    .local v26, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 446
    :goto_7
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    .line 368
    .end local v9    # "defaultWindows":Lcom/android/server/wm/WindowList;
    .end local v17    # "i":I
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v14

    .line 369
    .local v14, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Unhandled exception in Window Manager"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 372
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v27, :cond_7

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 373
    const-string/jumbo v28, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    .line 372
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 370
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v27

    .line 371
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 372
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v28, :cond_f

    sget-object v28, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 373
    const-string/jumbo v29, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    .line 372
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_f
    throw v27

    .line 416
    .restart local v9    # "defaultWindows":Lcom/android/server/wm/WindowList;
    :cond_10
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 417
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v27, :cond_a

    .line 418
    const-string/jumbo v27, "after animateAwayWallpaperLocked"

    .line 419
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 453
    .restart local v17    # "i":I
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_11
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_12

    .line 454
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    .line 459
    :cond_12
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x200

    move/from16 v27, v0

    if-eqz v27, :cond_13

    .line 460
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xf0

    move/from16 v27, v0

    const/16 v28, 0x10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    if-eqz v27, :cond_13

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v27

    if-eqz v27, :cond_14

    .line 474
    :cond_13
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_7

    .line 464
    :cond_14
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDelayedResize:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 465
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Skip resize window in delayed resizing"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 467
    :cond_15
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-eqz v27, :cond_16

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Set delayed resize for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_16
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDelayedResize:Z

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->postDelayedResize(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_7

    .line 478
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_17
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 479
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "With display frozen, orientationChangeComplete="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 478
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1a

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    move/from16 v27, v0

    if-eqz v27, :cond_19

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v27, v0

    const/16 v28, 0xb

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 486
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 490
    :cond_1a
    const/16 v25, 0x0

    .line 491
    .local v25, "wallpaperDestroyed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 492
    if-lez v17, :cond_1e

    .line 494
    :cond_1b
    add-int/lit8 v17, v17, -0x1

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 496
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 500
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 501
    const/16 v25, 0x1

    .line 503
    :cond_1d
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurface()V

    .line 504
    if-gtz v17, :cond_1b

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 509
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_1e
    const/4 v13, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v13, v0, :cond_21

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 511
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 512
    .local v16, "exitingTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    :goto_9
    if-ltz v17, :cond_20

    .line 513
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowToken;

    .line 514
    .local v21, "token":Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    move/from16 v27, v0

    if-nez v27, :cond_1f

    .line 515
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 516
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    move/from16 v27, v0

    const/16 v28, 0x7dd

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1f

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->removeWallpaperToken(Lcom/android/server/wm/WindowToken;)V

    .line 512
    :cond_1f
    add-int/lit8 v17, v17, -0x1

    goto :goto_9

    .line 509
    .end local v21    # "token":Lcom/android/server/wm/WindowToken;
    :cond_20
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 524
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v16    # "exitingTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    add-int/lit8 v19, v27, -0x1

    :goto_a
    if-ltz v19, :cond_28

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/TaskStack;

    .line 526
    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 528
    .restart local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v15}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    :goto_b
    if-ltz v17, :cond_27

    .line 529
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/AppWindowToken;

    .line 530
    .local v20, "token":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    move/from16 v27, v0

    if-nez v27, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_23

    .line 528
    :cond_22
    :goto_c
    add-int/lit8 v17, v17, -0x1

    goto :goto_b

    .line 531
    :cond_23
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_24

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v27

    .line 530
    if-eqz v27, :cond_22

    .line 535
    :cond_24
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 536
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 537
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v27, :cond_25

    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v27, :cond_26

    :cond_25
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 538
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "performLayout: App token exiting now removed"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 537
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_26
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/AppWindowToken;->removeAppFromTaskLocked()V

    goto :goto_c

    .line 524
    .end local v20    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_27
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_a

    .line 544
    .end local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    :cond_28
    if-eqz v25, :cond_29

    .line 545
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 546
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 549
    :cond_29
    const/4 v13, 0x0

    :goto_d
    move/from16 v0, v18

    if-ge v13, v0, :cond_2b

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 551
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v0, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    if-eqz v27, :cond_2a

    .line 552
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v10, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 549
    :cond_2a
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 557
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v27, v0

    if-nez v27, :cond_2e

    .line 561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpg-float v27, v27, v28

    if-ltz v27, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_3a

    .line 562
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromWindowManager(I)V

    .line 567
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpg-float v27, v27, v28

    if-ltz v27, :cond_2d

    .line 568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_3b

    .line 569
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setButtonBrightnessOverrideFromWindowManager(I)V

    .line 574
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 575
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    move-wide/from16 v28, v0

    .line 574
    invoke-virtual/range {v27 .. v29}, Landroid/os/PowerManagerInternal;->setUserActivityTimeoutOverrideFromWindowManager(J)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 578
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenDimDuration:J

    move-wide/from16 v28, v0

    .line 577
    invoke-virtual/range {v27 .. v29}, Landroid/os/PowerManagerInternal;->setScreenDimDurationOverrideFromWindowManager(J)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 580
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonLightTimeout:J

    move-wide/from16 v28, v0

    .line 579
    invoke-virtual/range {v27 .. v29}, Landroid/os/PowerManagerInternal;->setButtonTimeoutOverrideFromWindowManager(J)V

    .line 584
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2f

    .line 585
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    .line 589
    const-string/jumbo v28, "SUSTAINED_PERF"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3c

    const-string/jumbo v27, "on"

    .line 588
    :goto_10
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    move/from16 v27, v0

    if-eqz v27, :cond_34

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    move/from16 v27, v0

    if-nez v27, :cond_30

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 596
    const-string/jumbo v28, "theater_mode_on"

    const/16 v29, 0x0

    .line 595
    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-nez v27, :cond_33

    .line 597
    :cond_30
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v27, :cond_31

    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v27, :cond_32

    .line 598
    :cond_31
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Turning screen on after layout!"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isWakeupPreventionPackage(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_33

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v27, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 605
    const-string/jumbo v30, "android.server.wm:TURN_ON"

    .line 604
    invoke-virtual/range {v27 .. v30}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 608
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 611
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_36

    .line 612
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v27, :cond_35

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Performing post-rotate rotation"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v27, v0

    const/16 v28, 0x12

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 620
    :cond_36
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    if-nez v27, :cond_3f

    .line 621
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    move/from16 v27, v0

    if-eqz v27, :cond_37

    iget-boolean v0, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3e

    .line 626
    :cond_37
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 627
    .local v4, "N":I
    if-lez v4, :cond_42

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_38

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    add-int/lit8 v28, v4, 0xa

    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 631
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 633
    new-instance v12, Lcom/android/server/wm/DisplayContentList;

    invoke-direct {v12}, Lcom/android/server/wm/DisplayContentList;-><init>()V

    .line 634
    .local v12, "displayList":Lcom/android/server/wm/DisplayContentList;
    const/16 v17, 0x0

    :goto_13
    move/from16 v0, v17

    if-ge v0, v4, :cond_41

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    aget-object v24, v27, v17

    .line 636
    .local v24, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    .line 637
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    .line 638
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v10, :cond_39

    invoke-virtual {v12, v10}, Lcom/android/server/wm/DisplayContentList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_40

    .line 634
    :cond_39
    :goto_14
    add-int/lit8 v17, v17, 0x1

    goto :goto_13

    .line 564
    .end local v4    # "N":I
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    .end local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 565
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowSurfacePlacer;->toBrightnessOverride(F)I

    move-result v28

    .line 564
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromWindowManager(I)V

    goto/16 :goto_e

    .line 571
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowSurfacePlacer;->toBrightnessOverride(F)I

    move-result v28

    .line 571
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setButtonBrightnessOverrideFromWindowManager(I)V

    goto/16 :goto_f

    .line 589
    :cond_3c
    const-string/jumbo v27, "off"

    goto/16 :goto_10

    .line 616
    :cond_3d
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    goto/16 :goto_11

    .line 622
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    move/from16 v27, v0

    if-nez v27, :cond_37

    .line 623
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    goto/16 :goto_12

    .line 639
    .restart local v4    # "N":I
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    .restart local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_40
    invoke-virtual {v12, v10}, Lcom/android/server/wm/DisplayContentList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 643
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_41
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "displayContent$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_42

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 644
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v27, v0

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 645
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v10, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_15

    .line 650
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v11    # "displayContent$iterator":Ljava/util/Iterator;
    .end local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    add-int/lit8 v13, v27, -0x1

    :goto_16
    if-ltz v13, :cond_43

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/DisplayContent;->checkForDeferredActions()V

    .line 650
    add-int/lit8 v13, v13, -0x1

    goto :goto_16

    .line 654
    :cond_43
    if-eqz v23, :cond_44

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 657
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked()V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyPendingSurfaces()V

    .line 666
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v27, :cond_45

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 667
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "performSurfacePlacementInner exit: animating="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 666
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_45
    return-void
.end method

.method private performSurfacePlacementLoop()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x20

    const/4 v8, 0x0

    .line 234
    iget-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v5, :cond_1

    .line 235
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 236
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Recursive call!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_0
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 239
    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    .line 238
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 243
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v5, :cond_2

    .line 247
    return-void

    .line 250
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v5, :cond_3

    .line 252
    return-void

    .line 255
    :cond_3
    const-string/jumbo v5, "wmLayout"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 256
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 258
    const/4 v2, 0x0

    .line 259
    .local v2, "recoveringMemory":Z
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 260
    const/4 v2, 0x1

    .line 262
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 263
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 264
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_0

    .line 267
    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    :cond_4
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 269
    .local v3, "tmp":Ljava/lang/Object;
    monitor-enter v3

    .line 271
    const-wide/16 v6, 0xfa

    :try_start_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    .line 278
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_5
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementInner(Z)V

    .line 280
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 282
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 283
    iget v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v6, 0x6

    if-ge v5, v6, :cond_7

    .line 284
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 293
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_9

    .line 302
    :cond_6
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 233
    return-void

    .line 272
    .restart local v3    # "tmp":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 269
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 286
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_7
    :try_start_2
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Performed 6 layouts in a row. Skipping"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 297
    :catch_1
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/RuntimeException;
    iput-boolean v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 299
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unhandled exception while laying out windows"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 290
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_8
    const/4 v5, 0x0

    :try_start_3
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_2

    .line 294
    :cond_9
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 295
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .locals 8
    .param p1, "transit"    # I

    .prologue
    .line 1941
    const/16 v5, 0x11

    if-ne p1, v5, :cond_2

    .line 1943
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1944
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 1943
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->findFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1945
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_2

    .line 1946
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1947
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1948
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_0

    .line 1949
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Now animating app in place "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 1951
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 1952
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/wm/WindowManagerService;->updateTokenInPlaceLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1953
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1955
    iget-object v5, v1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1956
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1957
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1958
    iget-object v6, v1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1957
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1960
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v6, v5, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, v5, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 1961
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    .line 1940
    .end local v0    # "N":I
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v2    # "j":I
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    return-void
.end method

.method private static toBrightnessOverride(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 1937
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private transitionGoodToGo(I)Z
    .locals 11
    .param p1, "appsCount"    # I

    .prologue
    const/16 v10, 0x2f

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1646
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1647
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Checking "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " opening apps (frozen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1648
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 1647
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1648
    const-string/jumbo v8, " timeout="

    .line 1647
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1649
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v8}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v8

    .line 1647
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1649
    const-string/jumbo v8, ")..."

    .line 1647
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1646
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_0
    const/4 v2, 0x3

    .line 1651
    .local v2, "reason":I
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1652
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_8

    .line 1653
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 1654
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1655
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Check opening app="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": allDrawn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1656
    iget-boolean v8, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1655
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1656
    const-string/jumbo v8, " startingDisplayed="

    .line 1655
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1657
    iget-boolean v8, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1655
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1657
    const-string/jumbo v8, " startingMoved="

    .line 1655
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1658
    iget-boolean v8, v4, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 1655
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1658
    const-string/jumbo v8, " isRelaunching()="

    .line 1655
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1659
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v8

    .line 1655
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1654
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1662
    return v9

    .line 1665
    :cond_2
    iget-boolean v0, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1666
    .local v0, "drawnBeforeRestoring":Z
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->restoreSavedSurfaces()V

    .line 1668
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_3

    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v6, :cond_4

    .line 1678
    :cond_3
    :goto_1
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v6, :cond_7

    .line 1679
    if-eqz v0, :cond_6

    const/4 v2, 0x2

    .line 1652
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1668
    :cond_4
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_3

    .line 1670
    if-le p1, v5, :cond_5

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-nez v6, :cond_5

    .line 1671
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->noWindowWhenHiddenRequested:Z

    .line 1670
    if-eqz v6, :cond_5

    .line 1672
    sget-object v6, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for app transition which has no main window"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1675
    :cond_5
    return v9

    .line 1680
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1682
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 1687
    .end local v0    # "drawnBeforeRestoring":Z
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_8
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1688
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isFetchingAppTransitionSpecs=true"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_9
    return v9

    .line 1693
    :cond_a
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1694
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v3

    .line 1695
    .local v3, "wallpaperReady":Z
    :goto_3
    if-eqz v3, :cond_c

    .line 1696
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v10, v2, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1697
    return v5

    .end local v3    # "wallpaperReady":Z
    :cond_b
    move v3, v5

    .line 1693
    goto :goto_3

    .line 1699
    .restart local v3    # "wallpaperReady":Z
    :cond_c
    return v9

    .line 1701
    .end local v1    # "i":I
    .end local v3    # "wallpaperReady":Z
    :cond_d
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v10, v2, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1702
    return v5
.end method

.method private updateAllDrawnLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 12
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v11, 0x1

    .line 1893
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1894
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_7

    .line 1895
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1896
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_6

    .line 1897
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v6, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1898
    .local v6, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "tokenNdx":I
    :goto_2
    if-ltz v5, :cond_5

    .line 1899
    invoke-virtual {v6, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .line 1900
    .local v7, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v8, :cond_1

    .line 1901
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 1902
    .local v0, "numInteresting":I
    if-lez v0, :cond_1

    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    if-lt v8, v0, :cond_1

    .line 1903
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v8, :cond_0

    .line 1904
    sget-object v8, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "allDrawn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1905
    const-string/jumbo v10, " interesting="

    .line 1904
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1906
    const-string/jumbo v10, " drawn="

    .line 1904
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1906
    iget v10, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    .line 1904
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_0
    iput-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1910
    iput-boolean v11, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1911
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1912
    iget-object v9, v7, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    .line 1911
    const/16 v10, 0x20

    invoke-virtual {v8, v10, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1915
    .end local v0    # "numInteresting":I
    :cond_1
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-nez v8, :cond_3

    .line 1916
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 1917
    .restart local v0    # "numInteresting":I
    if-lez v0, :cond_3

    .line 1918
    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    if-lt v8, v0, :cond_3

    .line 1919
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v8, :cond_2

    .line 1920
    sget-object v8, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "allDrawnExcludingSaved: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1921
    const-string/jumbo v10, " interesting="

    .line 1920
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1922
    const-string/jumbo v10, " drawn="

    .line 1920
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1922
    iget v10, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    .line 1920
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :cond_2
    iput-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    .line 1924
    iput-boolean v11, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1925
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1926
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1898
    .end local v0    # "numInteresting":I
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    .line 1927
    .restart local v0    # "numInteresting":I
    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1896
    .end local v0    # "numInteresting":I
    .end local v7    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1894
    .end local v5    # "tokenNdx":I
    .end local v6    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 1890
    .end local v3    # "taskNdx":I
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_7
    return-void
.end method


# virtual methods
.method continueLayout()V
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 214
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-gtz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 212
    :cond_0
    return-void
.end method

.method copyAnimToLayoutParamsLocked()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2043
    const/4 v1, 0x0

    .line 2045
    .local v1, "doRequest":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v0, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 2046
    .local v0, "bulkUpdateParams":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 2047
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    .line 2048
    const/4 v1, 0x1

    .line 2050
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 2051
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 2052
    const/4 v1, 0x1

    .line 2054
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 2055
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    .line 2056
    const/4 v1, 0x1

    .line 2058
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_6

    .line 2059
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 2067
    :cond_3
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    .line 2068
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 2070
    :cond_4
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_5

    .line 2071
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    .line 2074
    :cond_5
    return v1

    .line 2061
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 2062
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 2063
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_3

    .line 2064
    const/4 v1, 0x1

    goto :goto_0
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pendingLayoutChanges"    # I

    .prologue
    .line 306
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 307
    sget-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    const-string/jumbo v2, ", mPendingLayoutChanges = 0x"

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    return-void
.end method

.method deferLayout()V
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 205
    return-void
.end method

.method destroyAfterTransaction(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    return-void
.end method

.method destroyPendingSurfaces()V
    .locals 2

    .prologue
    .line 2097
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2098
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 2097
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2100
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2096
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2104
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTraversalScheduled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2105
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHoldScreenWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2106
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mObsuringWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2103
    return-void
.end method

.method isInLayout()Z
    .locals 1

    .prologue
    .line 1104
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method final performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V
    .locals 24
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "initial"    # Z
    .param p3, "updateInputWindows"    # Z

    .prologue
    .line 1109
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    if-nez v2, :cond_0

    .line 1110
    return-void

    .line 1112
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1113
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v23

    .line 1114
    .local v23, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1116
    .local v3, "isDefaultDisplay":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    .line 1117
    .local v14, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1118
    .local v4, "dw":I
    iget v5, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1120
    .local v5, "dh":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_1

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/InputConsumerImpl;->layout(II)V

    .line 1124
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_2

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/InputConsumerImpl;->layout(II)V

    .line 1128
    :cond_2
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    .line 1131
    .local v10, "N":I
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 1132
    sget-object v2, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "-------------------------------------"

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    sget-object v2, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performLayout: needed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1134
    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1134
    const-string/jumbo v7, " dw="

    .line 1133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1134
    const-string/jumbo v7, " dh="

    .line 1133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 1140
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    const/4 v8, 0x0

    .line 1139
    invoke-interface/range {v2 .. v9}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(ZIIIIZI)V

    .line 1146
    if-eqz v3, :cond_4

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->getSystemDecorLayerLw()I

    move-result v6

    iput v6, v2, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1152
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    invoke-interface {v2, v6}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->resize(Landroid/graphics/Rect;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v18, v2, 0x1

    .line 1156
    .local v18, "seq":I
    if-gez v18, :cond_5

    const/16 v18, 0x0

    .line 1157
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v18

    iput v0, v2, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 1159
    const/4 v13, 0x0

    .line 1163
    .local v13, "behindDream":Z
    const/16 v21, -0x1

    .line 1164
    .local v21, "topAttached":I
    const/16 v17, 0x0

    .line 1165
    .local v17, "inHorizontalModeBeginLayout":Z
    add-int/lit8 v16, v10, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_18

    .line 1166
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 1171
    .local v22, "win":Lcom/android/server/wm/WindowState;
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v6}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1172
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v15

    .line 1175
    :goto_1
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_b

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isStatusBarSViewCover()Z

    move-result v2

    .line 1175
    if-eqz v2, :cond_b

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v6}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v19

    .line 1180
    :goto_2
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v2, :cond_c

    .line 1205
    :cond_7
    :goto_3
    if-eqz v15, :cond_11

    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-nez v2, :cond_11

    .line 1206
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->setInsetsChanged()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1207
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1165
    :cond_9
    :goto_4
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 1171
    :cond_a
    const/4 v15, 0x1

    .local v15, "gone":Z
    goto :goto_1

    .line 1175
    .end local v15    # "gone":Z
    :cond_b
    const/16 v19, 0x0

    .local v19, "skipLayout":Z
    goto :goto_2

    .line 1181
    .end local v19    # "skipLayout":Z
    :cond_c
    sget-object v2, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "1ST PASS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1182
    const-string/jumbo v7, ": gone="

    .line 1181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1182
    const-string/jumbo v7, " mHaveFrame="

    .line 1181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1182
    move-object/from16 v0, v22

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 1181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1183
    const-string/jumbo v7, " mLayoutAttached="

    .line 1181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1183
    move-object/from16 v0, v22

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 1181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1184
    const-string/jumbo v7, " screen changed="

    .line 1181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1184
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v7

    .line 1181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1186
    .local v11, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v15, :cond_e

    sget-object v6, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  GONE: mViewVisibility="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1187
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 1186
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1187
    const-string/jumbo v7, " mRelayoutCalled="

    .line 1186
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1188
    move-object/from16 v0, v22

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 1186
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1188
    const-string/jumbo v7, " hidden="

    .line 1186
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1189
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 1186
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1189
    const-string/jumbo v7, " hiddenRequested="

    .line 1186
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1190
    if-eqz v11, :cond_d

    iget-boolean v2, v11, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 1186
    :goto_5
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1191
    const-string/jumbo v7, " mAttachedHidden="

    .line 1186
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1191
    move-object/from16 v0, v22

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 1186
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1190
    :cond_d
    const/4 v2, 0x0

    goto :goto_5

    .line 1192
    :cond_e
    sget-object v6, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  VIS: mViewVisibility="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1193
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 1192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1193
    const-string/jumbo v7, " mRelayoutCalled="

    .line 1192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1194
    move-object/from16 v0, v22

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 1192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1194
    const-string/jumbo v7, " hidden="

    .line 1192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1195
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 1192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1195
    const-string/jumbo v7, " hiddenRequested="

    .line 1192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1196
    if-eqz v11, :cond_f

    iget-boolean v2, v11, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 1192
    :goto_6
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1197
    const-string/jumbo v7, " mAttachedHidden="

    .line 1192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1197
    move-object/from16 v0, v22

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 1192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1196
    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    .line 1208
    .end local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_10
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_11

    .line 1210
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v2, v6

    if-eqz v2, :cond_16

    .line 1214
    :cond_11
    :goto_7
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v2, :cond_17

    .line 1215
    if-eqz p2, :cond_12

    .line 1217
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1219
    :cond_12
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v2, v6, :cond_13

    .line 1223
    const/4 v13, 0x1

    .line 1225
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1226
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 1250
    if-nez v19, :cond_14

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v6}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1255
    :cond_14
    move/from16 v0, v18

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1258
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v20

    .line 1259
    .local v20, "task":Lcom/android/server/wm/Task;
    if-eqz v20, :cond_15

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Task;->isValid()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1260
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 1262
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds(Z)V

    .line 1266
    :cond_15
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  LAYOUT: mFrame="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1268
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1268
    const-string/jumbo v7, " mContainingFrame="

    .line 1267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1269
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 1267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1269
    const-string/jumbo v7, " mDisplayFrame="

    .line 1267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1270
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1266
    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1212
    .end local v20    # "task":Lcom/android/server/wm/Task;
    :cond_16
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_9

    .line 1213
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    .line 1205
    if-eqz v2, :cond_9

    goto/16 :goto_7

    .line 1272
    :cond_17
    if-gez v21, :cond_9

    move/from16 v21, v16

    goto/16 :goto_4

    .line 1277
    .end local v22    # "win":Lcom/android/server/wm/WindowState;
    :cond_18
    const/4 v12, 0x0

    .line 1283
    .local v12, "attachedBehindDream":Z
    move/from16 v16, v21

    .end local v12    # "attachedBehindDream":Z
    :goto_8
    if-ltz v16, :cond_20

    .line 1284
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 1286
    .restart local v22    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v2, :cond_1f

    .line 1287
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_19

    sget-object v2, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "2ND PASS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mHaveFrame="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mViewVisibility="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1289
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 1288
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1289
    const-string/jumbo v7, " mRelayoutCalled="

    .line 1288
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1289
    move-object/from16 v0, v22

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 1288
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1287
    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_19
    if-eqz v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v6}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1283
    :cond_1a
    :goto_9
    add-int/lit8 v16, v16, -0x1

    goto :goto_8

    .line 1298
    :cond_1b
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v6, 0x8

    if-eq v2, v6, :cond_1c

    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v2, :cond_1d

    .line 1299
    :cond_1c
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1298
    if-eqz v2, :cond_1a

    .line 1300
    :cond_1d
    if-eqz p2, :cond_1e

    .line 1302
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1304
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1305
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v6}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1330
    move/from16 v0, v18

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1331
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  LAYOUT: mFrame="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mContainingFrame="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1333
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 1332
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1333
    const-string/jumbo v7, " mDisplayFrame="

    .line 1332
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1333
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1332
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1331
    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1335
    :cond_1f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v2, v6, :cond_1a

    .line 1339
    move v12, v13

    .local v12, "attachedBehindDream":Z
    goto/16 :goto_9

    .line 1344
    .end local v12    # "attachedBehindDream":Z
    .end local v22    # "win":Lcom/android/server/wm/WindowState;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 1345
    if-eqz p3, :cond_21

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1349
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()V

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1108
    return-void
.end method

.method final performSurfacePlacement()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v1, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x6

    .line 225
    .local v0, "loopCount":I
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 226
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 227
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 228
    add-int/lit8 v0, v0, -0x1

    .line 229
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v1, :cond_2

    if-gtz v0, :cond_1

    .line 230
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    .line 219
    return-void
.end method

.method public postDelayedResize(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowSurfacePlacer$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowSurfacePlacer$1;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;Lcom/android/server/wm/WindowState;)V

    .line 2151
    const-wide/16 v2, 0x96

    .line 2116
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2113
    return-void
.end method

.method requestTraversal()V
    .locals 2

    .prologue
    .line 2078
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    .line 2079
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 2080
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2077
    :cond_0
    return-void
.end method
