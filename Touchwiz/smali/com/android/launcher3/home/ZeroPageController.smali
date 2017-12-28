.class public Lcom/android/launcher3/home/ZeroPageController;
.super Ljava/lang/Object;
.source "ZeroPageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;,
        Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;
    }
.end annotation


# static fields
.field private static final ACTION_INTENT_ACTIVE_ZEROPAGE:Ljava/lang/String; = "com.sec.android.intent.action.ACTIVE_ZERO_PAGE"

.field public static final ACTION_INTENT_SET_ZEROPAGE:Ljava/lang/String; = "com.sec.android.intent.action.SET_ZERO_PAGE"

.field private static final FROM_HOMEPAGE:I = 0x2

.field private static final FROM_ZEROPAGE:I = 0x1

.field private static final METADATA_ZEROPAGE:Ljava/lang/String; = "com.samsung.launcher.zeropage.metadata"

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x5dc

.field private static final MOVE_CONTINUE:I = 0x16

.field private static final MOVE_NONE:I = 0x0

.field private static final PAGE_SNAP_MOVING_RATIO:F = 0.33f

.field private static final PAGE_SNAP_VALUE_ANIMATION_DURATION:I = 0x12c

.field private static TAG:Ljava/lang/String; = null

.field private static final THREAD_EXIT_DELAY:I = 0xbb8

.field private static final TOKEN:[C

.field private static final TO_HOMEPAGE:I = 0x8

.field private static final TO_ZEROEPAGE:I = 0x4

.field public static final ZERO_PAGE_SCREEN_INDEX:I = -0x1

.field private static sActiveZeroPage:Z

.field private static sEnableZeroPage:Z

.field private static sSupportVirtualScreen:Z

.field private static sVirtualScreenAvailableChecked:Z

.field private static sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

.field public static sZeroPageCompName:Landroid/content/ComponentName;

.field private static sZeroPageDefaultOnOffState:Z


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppPrevResId:I

.field private mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

.field private mBezelSize:I

.field private mBezelSwipe:Z

.field private mDownX:I

.field private mInstalled:Z

.field private mInterval:J

.field private mIsFromZeroPageSetting:Z

.field private mLastDownX:I

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMaximumVelocity:I

.field private mMovedToVirtualScreen:Z

.field private mMovingState:I

.field private mPreValues:I

.field private mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mTouchDowned:Z

.field private mTouchSlop:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

.field private mVirtualScreenThread:Landroid/os/HandlerThread;

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;

.field private mZeroPageBgView:Landroid/widget/LinearLayout;

.field private mZeroPageBitmapHeight:I

.field private mZeroPageBitmapWidth:I

.field private mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

.field private mZeropageDownloadDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    const-class v0, Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.spage"

    const-string v2, "com.samsung.android.app.spage.main.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    .line 110
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    .line 111
    sput-boolean v4, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    .line 112
    sput-boolean v4, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageDefaultOnOffState:Z

    .line 159
    sput-boolean v3, Lcom/android/launcher3/home/ZeroPageController;->sSupportVirtualScreen:Z

    .line 160
    sput-boolean v3, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenAvailableChecked:Z

    .line 163
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher3/home/ZeroPageController;->TOKEN:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x69s
        0x6cs
        0x6fs
        0x76s
        0x65s
        0x7as
        0x65s
        0x72s
        0x6fs
        0x70s
        0x61s
        0x67s
        0x65s
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workspace"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    .line 131
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    .line 132
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    .line 133
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    .line 134
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    .line 136
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    .line 137
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 142
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    .line 143
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSize:I

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    .line 146
    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    .line 157
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    .line 168
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 169
    iput-object p2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 171
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->init()V

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/launcher3/home/ZeroPageController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/ZeroPageController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 96
    iget v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/launcher3/home/ZeroPageController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/launcher3/home/ZeroPageController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/ZeroPageController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/launcher3/home/ZeroPageController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/launcher3/home/ZeroPageController;IIZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # J

    .prologue
    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/ZeroPageController;->setOffsetMsg(IIZJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/ZeroPageController;IIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/ZeroPageController;->setOffset(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/util/alarm/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/ZeroPageController;Landroid/widget/Switch;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Landroid/widget/Switch;
    .param p2, "x2"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/ZeroPageController;->showZeroPageDownloadDialog(Landroid/widget/Switch;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/ZeroPageController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageBg(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/ZeroPageController;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->getPreviewFromPackageManager(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/ZeroPageController;Landroid/content/Context;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/launcher3/home/ZeroPageController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/launcher3/home/ZeroPageController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/ZeroPageController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->scaleBitmapIfNecessary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/common/drawable/FastBitmapDrawable;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/ZeroPageController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/ZeroPageController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePreviewId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/ZeroPageController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1031
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1034
    return-void
.end method

.method private addZeroPageSwitch(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 5
    .param p1, "zeroPageScreen"    # Lcom/android/launcher3/home/WorkspaceCellLayout;

    .prologue
    const/4 v4, 0x0

    .line 1226
    new-instance v0, Lcom/android/launcher3/home/ZeroPageController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/ZeroPageController$6;-><init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 1263
    .local v0, "ccl":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v4}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addZeroPageSwitch(Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1264
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 1265
    return-void
.end method

.method private animatePage(IIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "duration"    # I
    .param p3, "pageChanged"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 899
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_0

    .line 900
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 903
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 904
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 905
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 907
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 908
    .local v1, "widthPixels":I
    const/4 v0, 0x0

    .line 909
    .local v0, "values":I
    if-eqz p3, :cond_7

    .line 910
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_3

    .line 911
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_2

    neg-int v0, v1

    .line 933
    :goto_0
    iput v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    .line 935
    if-eqz p1, :cond_b

    if-ne p1, v0, :cond_b

    .line 936
    iput-boolean v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    .line 937
    iput v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    .line 985
    .end local v0    # "values":I
    .end local v1    # "widthPixels":I
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "values":I
    .restart local v1    # "widthPixels":I
    :cond_2
    move v0, v1

    .line 911
    goto :goto_0

    .line 913
    :cond_3
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 914
    const/4 v0, 0x0

    goto :goto_0

    .line 915
    :cond_4
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_5

    .line 916
    iget v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    goto :goto_0

    .line 918
    :cond_5
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_6

    neg-int v0, v1

    :goto_2
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 922
    :cond_7
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_8

    .line 923
    const/4 v0, 0x0

    goto :goto_0

    .line 925
    :cond_8
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_a

    .line 926
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_9

    neg-int v0, v1

    :goto_3
    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_3

    .line 928
    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    .line 941
    :cond_b
    iget-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_c

    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_c

    .line 942
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 945
    :cond_c
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v4

    aput v0, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 946
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 947
    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_d

    if-nez v0, :cond_d

    const-wide/16 v2, 0x0

    :goto_4
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 949
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$2;

    invoke-direct {v3, p0, p3}, Lcom/android/launcher3/home/ZeroPageController$2;-><init>(Lcom/android/launcher3/home/ZeroPageController;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 974
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    .line 975
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/ZeroPageController$3;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 983
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    .line 947
    :cond_d
    int-to-long v2, p2

    goto :goto_4
.end method

.method private bindVirtualScreen()V
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    .line 619
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->bindVirtualScreen()Z

    .line 621
    :cond_0
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1017
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1018
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1020
    :cond_0
    return-void
.end method

.method private cancelZeroPagePreviewTask()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->cancel(Z)Z

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    .line 335
    :cond_0
    return-void
.end method

.method private getPreviewFromPackageManager(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 312
    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    const/16 v5, 0x280

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 314
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 315
    .local v3, "res":Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPrevResId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 321
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewFromPackageManager(): NameNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 319
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getZeroPageActiveState(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getPreferences"    # Z

    .prologue
    const/4 v1, 0x0

    .line 562
    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v2, :cond_0

    .line 572
    :goto_0
    return v1

    .line 566
    :cond_0
    if-eqz p1, :cond_1

    .line 568
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 569
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "com.sec.android.app.launcher.zeropage.state.prefs"

    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageDefaultOnOffState:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    .line 572
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    goto :goto_0
.end method

.method private getZeroPageClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.zeropage.class.prefs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZeroPageContents(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 363
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v6

    if-nez v6, :cond_0

    .line 364
    sget-object v5, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v6, "not support virtual screen"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-object v4

    .line 367
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Launcher_ConfigZeroPageApp"

    invoke-virtual {v6, v7, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "cscFeatureZeroPageApp":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.spage"

    const-string v7, "com.samsung.android.app.spage.main.MainActivity"

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .local v4, "zeroPageContents":Landroid/content/ComponentName;
    if-nez v0, :cond_3

    .line 374
    sget-object v6, Lcom/android/launcher3/Utilities;->ZERO_PAGE_APP_LIST:[Landroid/content/ComponentName;

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v2, v6, v5

    .line 375
    .local v2, "name":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 376
    .local v1, "installed":Z
    if-eqz v1, :cond_2

    .line 377
    move-object v4, v2

    .line 391
    .end local v1    # "installed":Z
    .end local v2    # "name":Landroid/content/ComponentName;
    :cond_1
    :goto_2
    sget-object v5, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZeroPageContents : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    .restart local v1    # "installed":Z
    .restart local v2    # "name":Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 382
    .end local v1    # "installed":Z
    .end local v2    # "name":Landroid/content/ComponentName;
    :cond_3
    sget-object v6, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "csc zero page app is not null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 384
    .local v3, "zeroPageApp":Landroid/content/ComponentName;
    sget-object v6, Lcom/android/launcher3/Utilities;->ZERO_PAGE_APP_LIST:[Landroid/content/ComponentName;

    array-length v7, v6

    :goto_3
    if-ge v5, v7, :cond_1

    aget-object v2, v6, v5

    .line 385
    .restart local v2    # "name":Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 386
    move-object v4, v2

    .line 387
    goto :goto_2

    .line 384
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private getZeroPagePackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.zeropage.package.prefs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getZeroPagePreviewId(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1481
    const-string v1, "com.samsung.android.app.spage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1482
    const v0, 0x7f020029

    .line 1490
    .local v0, "previewId":I
    :goto_0
    return v0

    .line 1483
    .end local v0    # "previewId":I
    :cond_0
    const-string v1, "flipboard.boxer.app"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1484
    const v0, 0x7f02000a

    .restart local v0    # "previewId":I
    goto :goto_0

    .line 1485
    .end local v0    # "previewId":I
    :cond_1
    const-string v1, "com.ss.android.sdk.minusscreen.samsung"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1486
    const v0, 0x7f020100

    .restart local v0    # "previewId":I
    goto :goto_0

    .line 1488
    .end local v0    # "previewId":I
    :cond_2
    const v0, 0x7f0200fc

    .restart local v0    # "previewId":I
    goto :goto_0
.end method

.method private getZeroPageTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1467
    const-string v1, "com.ss.android.sdk.minusscreen.samsung"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1468
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1476
    .local v0, "title":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1469
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    const-string v1, "com.samsung.android.app.spage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1470
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/String;
    goto :goto_0

    .line 1471
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    const-string v1, "flipboard.boxer.app"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1472
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/String;
    goto :goto_0

    .line 1474
    .end local v0    # "title":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 400
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Launcher_ConfigZeroPageApp"

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "cscFeatureZeroPageApp":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Launcher_ConfigMagazineHome"

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "cscFeatureZeroPageEnable":Ljava/lang/String;
    const/4 v2, 0x0

    .line 403
    .local v2, "isDeletable":Z
    iput-boolean v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    .line 404
    const-string v5, "off"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_0
    sput-boolean v5, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageDefaultOnOffState:Z

    .line 406
    if-nez v0, :cond_6

    .line 407
    sget-object v8, Lcom/android/launcher3/Utilities;->ZERO_PAGE_APP_LIST:[Landroid/content/ComponentName;

    array-length v9, v8

    move v5, v7

    :goto_1
    if-ge v5, v9, :cond_0

    aget-object v3, v8, v5

    .line 408
    .local v3, "name":Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    .line 409
    iget-boolean v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    if-eqz v10, :cond_5

    .line 410
    sput-object v3, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    .line 426
    .end local v3    # "name":Landroid/content/ComponentName;
    :cond_0
    :goto_2
    sget-object v5, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.app.spage"

    const-string v10, "com.samsung.android.app.spage.main.MainActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 428
    const/4 v1, 0x0

    .line 429
    sput-boolean v6, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageDefaultOnOffState:Z

    .line 432
    :cond_1
    const-string v5, "disable"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v5

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    if-nez v5, :cond_2

    if-eqz v2, :cond_8

    .line 433
    :cond_2
    invoke-static {}, Lcom/android/launcher3/Utilities;->isGuest()Z

    move-result v5

    if-nez v5, :cond_8

    .line 434
    sput-boolean v6, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    .line 435
    sget-object v5, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-direct {p0, v5}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageAppMetadata(Landroid/content/ComponentName;)V

    .line 436
    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c6

    .line 437
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapWidth:I

    .line 438
    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c5

    .line 439
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapHeight:I

    .line 440
    iget-boolean v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    if-nez v5, :cond_3

    .line 441
    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    invoke-static {v5, v6}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    .line 446
    :cond_3
    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    sget-boolean v6, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    invoke-virtual {v5, v6}, Lcom/android/launcher3/LauncherAppState;->setEnableZeroPage(Z)V

    .line 447
    return-void

    :cond_4
    move v5, v7

    .line 404
    goto/16 :goto_0

    .line 407
    .restart local v3    # "name":Landroid/content/ComponentName;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 415
    .end local v3    # "name":Landroid/content/ComponentName;
    :cond_6
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 416
    .local v4, "zeroPageApp":Landroid/content/ComponentName;
    sget-object v8, Lcom/android/launcher3/Utilities;->ZERO_PAGE_APP_LIST:[Landroid/content/ComponentName;

    array-length v9, v8

    move v5, v7

    :goto_4
    if-ge v5, v9, :cond_0

    aget-object v3, v8, v5

    .line 417
    .restart local v3    # "name":Landroid/content/ComponentName;
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 418
    const/4 v2, 0x1

    .line 419
    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    .line 420
    sput-object v3, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 416
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 444
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "zeroPageApp":Landroid/content/ComponentName;
    :cond_8
    sput-boolean v7, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    goto :goto_3
.end method

.method public static isActiveZeroPage(Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getPreferences"    # Z

    .prologue
    .line 359
    sget-boolean v0, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableZeroPage()Z
    .locals 1

    .prologue
    .line 396
    sget-boolean v0, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    return v0
.end method

.method public static isMoving()Z
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadZeroPagePreviewBitmap()V
    .locals 2

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelZeroPagePreviewTask()V

    .line 326
    new-instance v0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;-><init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/ZeroPageController$1;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    return-void
.end method

.method private moveToVirtualScreen(I)V
    .locals 13
    .param p1, "x"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v12, -0x2ee

    const/16 v11, -0x5dc

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x1

    .line 854
    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 856
    .local v4, "widthPixels":I
    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/launcher3/home/ZeroPageController;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 857
    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v3, v7

    .line 858
    .local v3, "velocity":I
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v1, p1, v7

    .line 859
    .local v1, "offset":I
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_8

    if-lez v1, :cond_9

    .line 860
    :cond_0
    const/4 v1, 0x0

    .line 865
    :cond_1
    :goto_0
    const/16 v0, 0x2ee

    .line 866
    .local v0, "minSnapVelocity":I
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v7, :cond_3

    .line 867
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_c

    if-gt v3, v12, :cond_d

    .line 868
    :cond_2
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    .line 876
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 877
    .local v2, "pageChanged":Z
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v7, :cond_11

    .line 878
    iget v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    iget v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    :cond_4
    iget v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_5

    iget v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    :cond_5
    iget v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v5, v5, 0x16

    const/16 v6, 0x16

    if-ne v5, v6, :cond_7

    .line 883
    :cond_6
    const/4 v2, 0x1

    .line 895
    :cond_7
    :goto_2
    const/16 v5, 0x12c

    invoke-direct {p0, v1, v5, v2}, Lcom/android/launcher3/home/ZeroPageController;->animatePage(IIZ)V

    .line 896
    return-void

    .line 859
    .end local v0    # "minSnapVelocity":I
    .end local v2    # "pageChanged":Z
    :cond_8
    if-ltz v1, :cond_0

    .line 861
    :cond_9
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_a

    neg-int v7, v4

    if-ge v1, v7, :cond_1

    .line 862
    :goto_3
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_b

    neg-int v1, v4

    :goto_4
    goto :goto_0

    .line 861
    :cond_a
    if-le v1, v4, :cond_1

    goto :goto_3

    :cond_b
    move v1, v4

    .line 862
    goto :goto_4

    .line 867
    .restart local v0    # "minSnapVelocity":I
    :cond_c
    const/16 v7, 0x2ee

    if-ge v3, v7, :cond_2

    .line 869
    :cond_d
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_f

    const/16 v7, 0x2ee

    if-lt v3, v7, :cond_10

    .line 870
    :cond_e
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto :goto_1

    .line 869
    :cond_f
    if-le v3, v12, :cond_e

    .line 872
    :cond_10
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    or-int/lit8 v7, v7, 0x16

    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto :goto_1

    .line 886
    .restart local v2    # "pageChanged":Z
    :cond_11
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_14

    .line 887
    const/16 v7, 0x5dc

    if-ge v3, v7, :cond_13

    if-le v3, v11, :cond_12

    neg-int v7, v1

    int-to-float v7, v7

    int-to-float v8, v4

    mul-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_13

    :cond_12
    move v2, v5

    :goto_5
    goto :goto_2

    :cond_13
    move v2, v6

    goto :goto_5

    .line 890
    :cond_14
    if-le v3, v11, :cond_16

    const/16 v7, 0x5dc

    if-ge v3, v7, :cond_15

    int-to-float v7, v1

    int-to-float v8, v4

    mul-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_16

    :cond_15
    move v2, v5

    :goto_6
    goto :goto_2

    :cond_16
    move v2, v6

    goto :goto_6
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1041
    :cond_0
    return-void
.end method

.method private removeMsg()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->removeMsg()V

    .line 1047
    :cond_0
    return-void
.end method

.method private resetOffset()V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    new-instance v1, Lcom/android/launcher3/home/ZeroPageController$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/ZeroPageController$4;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->post(Ljava/lang/Runnable;)Z

    .line 1012
    return-void
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1023
    iput-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    .line 1024
    iput-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    .line 1025
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->releaseVelocityTracker()V

    .line 1026
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    .line 1027
    return-void
.end method

.method private scaleBitmapIfNecessary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 297
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "scaleBitmapIfNecessary() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 299
    :cond_0
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "scaleBitmapIfNecessary(): scaling bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapWidth:I

    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapHeight:I

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .local v0, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eq p1, v0, :cond_1

    .line 303
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    :cond_1
    move-object p1, v0

    .line 307
    .end local v0    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-object p1
.end method

.method private setOffset(IIZ)Z
    .locals 3
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "force"    # Z

    .prologue
    .line 635
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffset - offsetX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->setOffset(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOffsetMsg(IIZJ)V
    .locals 4
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "force"    # Z
    .param p4, "interval"    # J

    .prologue
    .line 640
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOffsetMsg - offsetX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 642
    .local v0, "options":Landroid/os/Bundle;
    const-string v1, "offsetX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    const-string v1, "force"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    const-string v1, "interval"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 645
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->setOffsetHandler(Landroid/os/Bundle;)V

    .line 648
    :cond_0
    return-void
.end method

.method public static setZeroPageActiveState(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    .line 537
    return-void
.end method

.method static setZeroPageActiveState(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "active"    # Z

    .prologue
    .line 540
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setZeroPageActiveState, active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v2, :cond_0

    .line 559
    :goto_0
    return-void

    .line 546
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.ACTIVE_ZERO_PAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 548
    const-string v2, "active"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 552
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 551
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 552
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 553
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.sec.android.app.launcher.zeropage.state.prefs"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 554
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 555
    sput-boolean p1, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    .line 556
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0901ea

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    if-eqz v2, :cond_1

    const-string v2, "1"

    .line 556
    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_1
    const-string v2, "0"

    goto :goto_1
.end method

.method private setZeroPageClassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 526
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 527
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.sec.android.app.launcher.zeropage.class.prefs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 528
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 529
    return-void
.end method

.method private setZeroPagePackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 517
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.sec.android.app.launcher.zeropage.package.prefs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 518
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 519
    return-void
.end method

.method private showZeroPageDownloadDialog(Landroid/widget/Switch;Z)V
    .locals 8
    .param p1, "zeroPageSwitch"    # Landroid/widget/Switch;
    .param p2, "isSwitch"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1494
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1495
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v3, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1496
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1498
    .local v2, "zeropage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1499
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900f0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1498
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1501
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/home/ZeroPageController$7;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher3/home/ZeroPageController$7;-><init>(Lcom/android/launcher3/home/ZeroPageController;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1510
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/home/ZeroPageController$8;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/launcher3/home/ZeroPageController$8;-><init>(Lcom/android/launcher3/home/ZeroPageController;ZLandroid/widget/Switch;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1520
    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$9;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/launcher3/home/ZeroPageController$9;-><init>(Lcom/android/launcher3/home/ZeroPageController;ZLandroid/widget/Switch;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1530
    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$10;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/ZeroPageController$10;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    .line 1538
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 1539
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1540
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1541
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1544
    :cond_0
    return-void
.end method

.method private startActivityInVirtualScreen(Landroid/content/Context;ZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "changeActivity"    # Z
    .param p3, "created"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 576
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivityInVirtualScreen - changeActivity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", created = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-nez v4, :cond_0

    .line 580
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v5, "startActivityInVirtualScreen - return by sVirtualScreenManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_0
    return-void

    .line 584
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 585
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 586
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    const-string v4, "fromHome"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 588
    const-string v4, "fingerSwipe"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    const-string v4, "supportRtl"

    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 591
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 592
    .local v3, "realMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 593
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 595
    new-instance v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    invoke-direct {v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;-><init>()V

    .line 596
    .local v2, "params":Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_3

    .line 597
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    .line 603
    :goto_1
    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_BASE_ACTIVITY:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 604
    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_ZEROPAGE_POLICY:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 606
    if-eqz p2, :cond_1

    .line 607
    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_CLEAR_TASKS:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 610
    :cond_1
    if-eqz p3, :cond_2

    .line 611
    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_RECREATE_VIRTUALSCREEN:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 614
    :cond_2
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I

    goto :goto_0

    .line 600
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v5, v8, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    goto :goto_1
.end method

.method public static supportVirtualScreen()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 348
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenAvailableChecked:Z

    if-nez v1, :cond_0

    .line 349
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 350
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    new-instance v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;-><init>()V

    .line 352
    .local v0, "virtualScreen":Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isFeatureEnabled(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sSupportVirtualScreen:Z

    .line 353
    sput-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenAvailableChecked:Z

    .line 355
    :cond_0
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sSupportVirtualScreen:Z

    return v1
.end method

.method private updateZeroPageAppMetadata(Landroid/content/ComponentName;)V
    .locals 14
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 451
    :try_start_0
    iget-object v11, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 452
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/16 v11, 0x280

    invoke-virtual {v7, p1, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 454
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    const-string v11, "com.samsung.launcher.zeropage.metadata"

    invoke-virtual {v4, v7, v11}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 455
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v6, :cond_2

    .line 456
    sget-object v11, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v12, "parser is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSetToZeroPage()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 458
    if-eqz p1, :cond_1

    .line 459
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPagePackageName(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageClassName(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 462
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, "name":Ljava/lang/String;
    sget-boolean v11, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u200f"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    iput-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;

    .line 464
    sput-object p1, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    .line 465
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPrevResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 513
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 473
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 474
    .local v2, "depth":I
    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    .line 475
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v2, :cond_6

    :cond_4
    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    .line 476
    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 480
    const/4 v11, 0x0

    const-string v12, "apptitle"

    const/4 v13, 0x0

    invoke-interface {v6, v11, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 481
    .local v1, "appnameStrId":I
    const/4 v11, 0x0

    const-string v12, "preview"

    const/4 v13, 0x0

    invoke-interface {v6, v11, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 482
    .local v8, "previewResId":I
    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v9

    .line 484
    .local v9, "res":Landroid/content/res/Resources;
    if-eqz v9, :cond_3

    .line 485
    if-eqz v8, :cond_5

    .line 486
    :try_start_2
    iput v8, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPrevResId:I

    .line 488
    :cond_5
    if-nez v1, :cond_7

    const/4 v11, 0x0

    .line 490
    :goto_2
    iput-object v11, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 492
    :catch_0
    move-exception v3

    .line 493
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 496
    .end local v1    # "appnameStrId":I
    .end local v2    # "depth":I
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v8    # "previewResId":I
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "type":I
    :catch_1
    move-exception v3

    .line 497
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 511
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPagePackageName(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageClassName(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    .restart local v1    # "appnameStrId":I
    .restart local v2    # "depth":I
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "previewResId":I
    .restart local v9    # "res":Landroid/content/res/Resources;
    .restart local v10    # "type":I
    :cond_7
    :try_start_5
    sget-boolean v11, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v11, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u200f"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 489
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 490
    :cond_8
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v11

    goto :goto_2

    .line 498
    .end local v1    # "appnameStrId":I
    .end local v2    # "depth":I
    .end local v8    # "previewResId":I
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "type":I
    :catch_2
    move-exception v3

    .line 499
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 503
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v3

    .line 504
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v11, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ZeroApp doesn\'t have Metadata : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-boolean v11, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    if-nez v11, :cond_6

    .line 506
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 507
    .restart local v5    # "name":Ljava/lang/String;
    sget-boolean v11, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v11, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u200f"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "name":Ljava/lang/String;
    :cond_9
    iput-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;

    goto :goto_3

    .line 500
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v3

    .line 501
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3
.end method

.method private updateZeroPageBg(ZZ)V
    .locals 6
    .param p1, "isChecked"    # Z
    .param p2, "whiteBg"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    .line 1318
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v4, -0x12d

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1319
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/ZeroPageController;->changeColorForBg(Z)V

    .line 1321
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 1324
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 1325
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1327
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 1321
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1325
    goto :goto_1
.end method


# virtual methods
.method canScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1144
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method changeColorForBg(Z)V
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v2, -0x12d

    .line 1331
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1332
    .local v0, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v0, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1334
    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1333
    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImageResource(IZZ)V

    .line 1336
    :cond_0
    return-void

    .line 1334
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeZeroPage(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x1

    .line 1429
    sput-object p1, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    .line 1430
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageAppMetadata(Landroid/content/ComponentName;)V

    .line 1432
    invoke-virtual {p0}, Lcom/android/launcher3/home/ZeroPageController;->unBindVirtualScreen()V

    .line 1433
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 1434
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    .line 1435
    return-void
.end method

.method public checkHiddenDirectory()V
    .locals 5

    .prologue
    .line 1591
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->TOKEN:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1592
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1593
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/launcher3/LauncherFeature;->setSupportSetToZeroPage(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 1593
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1595
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1596
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception on checkHiddenDirectory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public closeZeroPageDownloadDialog()V
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    .line 1551
    :cond_0
    return-void
.end method

.method createCustomZeroPage(Z)V
    .locals 18
    .param p1, "force"    # Z

    .prologue
    .line 1148
    sget-boolean v3, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v3, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1152
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1153
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040065

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1155
    .local v2, "zeroPageScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getDesiredHeight()I

    move-result v8

    .line 1157
    .local v8, "originHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v3

    const-wide/16 v4, -0x12d

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v16, -0x12d

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    .line 1163
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    .line 1166
    :cond_2
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCellDimensions(IIII)V

    .line 1167
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setGridSize(II)V

    .line 1168
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    .line 1170
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/ZeroPageController;->addZeroPageSwitch(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 1171
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v13

    .line 1173
    .local v13, "zeroPageSwitch":Landroid/widget/Switch;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1174
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v6, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-direct {v6, v3, v4, v5, v7}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    .line 1176
    .local v6, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    .line 1177
    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/android/launcher3/home/ZeroPageController$5;-><init>(Lcom/android/launcher3/home/ZeroPageController;Landroid/widget/Switch;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    const/high16 v3, 0x42c80000    # 100.0f

    const v4, 0x7f0b0003

    .line 1191
    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v9, v3, v4

    .line 1192
    .local v9, "overviewShrinkFactorReverse":F
    const v3, 0x7f0a00bc

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v14, v3

    .line 1194
    .local v14, "zeroPageSwitchHeight":I
    const v3, 0x7f10000f

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v11, v3, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    .line 1195
    .local v10, "reduction":F
    int-to-float v3, v8

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v10

    mul-float/2addr v3, v4

    int-to-float v4, v14

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v12, v3, 0x2

    .line 1196
    .local v12, "topAndBottomMargin":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v6, v3, v14, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->setMargins(IIII)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v12, v5, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    .line 1203
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->loadZeroPagePreviewBitmap()V

    .line 1205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;I)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1210
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    .line 1209
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(IZ)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v3

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageBg(ZZ)V

    .line 1213
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v3

    const/16 v4, -0x3e9

    if-eq v3, v4, :cond_3

    .line 1217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    .line 1222
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    goto/16 :goto_0

    .line 1219
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1220
    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 662
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 663
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->isNormalState()Z

    move-result v2

    if-nez v2, :cond_2

    .line 664
    :cond_0
    const/16 v16, 0x0

    .line 850
    :cond_1
    :goto_0
    return v16

    .line 667
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 668
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "isSwitchingState restore"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    .line 670
    const/16 v16, 0x0

    goto :goto_0

    .line 673
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->hasMessages()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 674
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    if-eqz v2, :cond_5

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    .line 676
    const/16 v16, 0x0

    goto :goto_0

    .line 679
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v10, v2, 0xff

    .line 680
    .local v10, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v21, v0

    .line 682
    .local v21, "x":I
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageBezelSwipe()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 683
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSize:I

    move/from16 v0, v21

    if-gt v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 684
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_6

    .line 685
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "Bezel swipe detected for virtual screen"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    .line 690
    :cond_6
    const/4 v13, 0x0

    .line 691
    .local v13, "endMoving":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 692
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 693
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    if-eqz v2, :cond_e

    .line 694
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/ZeroPageController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->getScrollForPage(I)I

    move-result v18

    .line 697
    .local v18, "scrollWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v11, 0x1

    .line 698
    .local v11, "animating":Z
    :goto_1
    if-nez v11, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-nez v2, :cond_14

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 699
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_14

    .line 700
    :cond_a
    const/4 v14, 0x1

    .line 702
    .local v14, "movedToSecondPage":Z
    :goto_2
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_b

    if-eqz v11, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_d

    if-nez v14, :cond_d

    .line 704
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 705
    const/16 v17, 0x0

    .line 706
    .local v17, "reversed":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    move/from16 v19, v0

    .line 708
    .local v19, "values":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    .line 709
    const/16 v17, 0x1

    .line 711
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelAnimation()V

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    .line 713
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    .line 714
    if-eqz v17, :cond_15

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    .line 723
    .end local v17    # "reversed":Z
    .end local v19    # "values":I
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    .line 724
    .local v20, "widthPixels":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    sub-int v2, v21, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 726
    .local v12, "deltaX":I
    packed-switch v10, :pswitch_data_0

    .line 839
    .end local v11    # "animating":Z
    .end local v12    # "deltaX":I
    .end local v14    # "movedToSecondPage":Z
    .end local v18    # "scrollWidth":I
    .end local v20    # "widthPixels":I
    :cond_e
    :goto_5
    const/4 v2, 0x1

    if-eq v10, v2, :cond_f

    const/4 v2, 0x3

    if-eq v10, v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 842
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getVisible()Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    if-eq v10, v2, :cond_10

    const/4 v2, 0x3

    if-ne v10, v2, :cond_11

    :cond_10
    if-eqz v13, :cond_35

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v2, v21, v2

    if-gez v2, :cond_35

    :cond_11
    const/16 v16, 0x1

    .line 846
    .local v16, "result":Z
    :goto_6
    if-eqz v16, :cond_1

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->resetTouchState()V

    goto/16 :goto_0

    .line 697
    .end local v16    # "result":Z
    .restart local v18    # "scrollWidth":I
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 699
    .restart local v11    # "animating":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 700
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v18

    if-gt v2, v0, :cond_a

    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 714
    .restart local v14    # "movedToSecondPage":Z
    .restart local v17    # "reversed":Z
    .restart local v19    # "values":I
    :cond_15
    const/4 v2, 0x2

    goto/16 :goto_3

    .line 716
    .end local v19    # "values":I
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_17

    .line 717
    const/16 v17, 0x1

    .line 719
    :cond_17
    if-eqz v17, :cond_18

    const/4 v2, 0x2

    :goto_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto/16 :goto_4

    :cond_18
    const/4 v2, 0x1

    goto :goto_7

    .line 728
    .end local v17    # "reversed":Z
    .restart local v12    # "deltaX":I
    .restart local v20    # "widthPixels":I
    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    .line 729
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    .line 730
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    goto/16 :goto_5

    .line 734
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_19

    .line 735
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "dispatchTouchEvent - skipped wrong touch move event on virtual screen"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 739
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-eqz v2, :cond_25

    .line 740
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v21

    if-ge v2, v0, :cond_1a

    .line 741
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    .line 744
    :cond_1a
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    .line 746
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v3, v21, v2

    .line 747
    .local v3, "offset":I
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1f

    if-lez v3, :cond_20

    .line 748
    :cond_1b
    const/4 v3, 0x0

    .line 753
    :cond_1c
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    if-nez v2, :cond_1d

    .line 754
    if-eqz v3, :cond_1d

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_1d

    .line 756
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->setScrollX(I)V

    .line 760
    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_24

    const/4 v5, 0x1

    :goto_b
    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/ZeroPageController;->setOffsetMsg(IIZJ)V

    .line 761
    if-nez v3, :cond_e

    .line 762
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    .line 763
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto/16 :goto_5

    .line 740
    .end local v3    # "offset":I
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v21

    if-le v2, v0, :cond_1a

    goto :goto_8

    .line 747
    .restart local v3    # "offset":I
    :cond_1f
    if-ltz v3, :cond_1b

    .line 749
    :cond_20
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_21

    move/from16 v0, v20

    neg-int v2, v0

    if-ge v3, v2, :cond_1c

    .line 750
    :goto_c
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_22

    move/from16 v0, v20

    neg-int v3, v0

    :goto_d
    goto :goto_9

    .line 749
    :cond_21
    move/from16 v0, v20

    if-le v3, v0, :cond_1c

    goto :goto_c

    :cond_22
    move/from16 v3, v20

    .line 750
    goto :goto_d

    .line 754
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 755
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_1d

    goto :goto_a

    .line 760
    :cond_24
    const/4 v5, 0x0

    goto :goto_b

    .line 766
    .end local v3    # "offset":I
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_28

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v21

    if-ge v2, v0, :cond_28

    .line 767
    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    .line 768
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    .line 769
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->resetOffset()V

    goto/16 :goto_5

    .line 766
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v21

    if-gt v2, v0, :cond_26

    .line 773
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchSlop:I

    if-lt v12, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 774
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isHorizontalScoll()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 775
    :cond_29
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    .line 776
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    .line 778
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageBezelSwipe()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 779
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    if-eqz v2, :cond_2c

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->unBindVirtualScreen()V

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->pageEndMoving()V

    .line 788
    :cond_2a
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_2f

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->updateBixbyHomeEnterCount()V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 792
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901bf

    .line 793
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 794
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090130

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Page Scroll"

    .line 792
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v2, :cond_2b

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    invoke-virtual {v2}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->initPreOffset()V

    .line 798
    :cond_2b
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_2d

    const/4 v2, -0x1

    :goto_f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v4}, Lcom/android/launcher3/home/ZeroPageController;->setOffset(IIZ)Z

    goto/16 :goto_5

    .line 784
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    goto :goto_e

    .line 798
    :cond_2d
    const/4 v2, 0x1

    goto :goto_f

    :cond_2e
    const/4 v4, 0x0

    goto :goto_10

    .line 800
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v15

    .line 801
    .local v15, "point":Landroid/graphics/Point;
    if-eqz v15, :cond_e

    .line 802
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    iget v4, v15, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    .line 803
    iget v5, v15, Landroid/graphics/Point;->x:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_30

    const/4 v7, 0x1

    :goto_11
    const-wide/16 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/ZeroPageController;->setOffsetMsg(IIZJ)V

    goto/16 :goto_5

    :cond_30
    const/4 v7, 0x0

    goto :goto_11

    .line 811
    .end local v15    # "point":Landroid/graphics/Point;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    if-nez v2, :cond_31

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_31

    .line 812
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "dispatchTouchEvent - skipped wrong touch up event on virtual screen"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 816
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-eqz v2, :cond_32

    .line 817
    const/4 v13, 0x1

    .line 818
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->moveToVirtualScreen(I)V

    .line 827
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->resetTouchState()V

    goto/16 :goto_5

    .line 820
    :cond_32
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_33

    .line 821
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->moveToVirtualScreen(I)V

    goto :goto_12

    .line 823
    :cond_33
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    goto :goto_12

    .line 831
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    goto/16 :goto_5

    .line 842
    .end local v11    # "animating":Z
    .end local v12    # "deltaX":I
    .end local v14    # "movedToSecondPage":Z
    .end local v18    # "scrollWidth":I
    .end local v20    # "widthPixels":I
    :cond_34
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v2, v21, v2

    if-gtz v2, :cond_11

    :cond_35
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 726
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public enterZeroPageSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1374
    iput-boolean v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    .line 1375
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 1376
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 1377
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon()V

    .line 1380
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    .line 1381
    return-void
.end method

.method getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method getOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    .line 656
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    .line 658
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMessages()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1050
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    .line 1051
    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentZeroPage()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1421
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1422
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    .line 1421
    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    const-wide/16 v4, -0x12d

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1423
    const/4 v0, 0x1

    .line 1425
    :cond_0
    return v0
.end method

.method onDestroy()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 345
    :cond_1
    return-void
.end method

.method onZeroPageActiveChanged(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 1570
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/home/ZeroPageController$11;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/ZeroPageController$11;-><init>(Lcom/android/launcher3/home/ZeroPageController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1587
    return-void
.end method

.method removeCustomZeroPage(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const-wide/16 v8, -0x12d

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1268
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v1, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 1273
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1274
    iput-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    .line 1277
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1278
    .local v0, "zeroPageScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_3

    .line 1279
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "removeZeroPageContentPage - Expected custom zero page to exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1282
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 1283
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1284
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1286
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    .line 1287
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelZeroPagePreviewTask()V

    .line 1290
    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1291
    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 1290
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(IZ)V

    .line 1293
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    .line 1294
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    .line 1295
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 1299
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v1

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_9

    .line 1300
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    .line 1305
    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    if-eqz v1, :cond_6

    .line 1306
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1307
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1309
    :cond_5
    iput-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    .line 1312
    :cond_6
    if-nez p1, :cond_0

    .line 1313
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 1282
    goto/16 :goto_1

    :cond_8
    move v1, v3

    .line 1290
    goto :goto_2

    .line 1302
    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    goto :goto_3
.end method

.method public restoreOffset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 988
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v1, "restoreOffset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelAnimation()V

    .line 991
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    .line 992
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->resetTouchState()V

    .line 993
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    .line 994
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    .line 995
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    .line 996
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->resetOffset()V

    .line 998
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "start_from_zeropage"

    .line 999
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "start_from_zeropage"

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 1003
    :cond_0
    return-void
.end method

.method setOffset(II)Z
    .locals 3
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 630
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffset - offsetX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->setOffset(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setup()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 176
    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v2, :cond_0

    .line 212
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "VirtualScreenThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    .line 181
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 182
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 183
    new-instance v2, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;-><init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/ZeroPageController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    .line 185
    new-instance v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    .line 188
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v3, "DeX mode - do not startActivityInVirtualScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    :goto_1
    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 198
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/ZeroPageController$1;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 206
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 207
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mTouchSlop:I

    .line 208
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMaximumVelocity:I

    .line 210
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 211
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a01b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSize:I

    goto :goto_0

    .line 191
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 193
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    goto :goto_1
.end method

.method public startDownloadZeroPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1555
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "samsungapps://ProductDetail/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1557
    .local v1, "zeroPageUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1558
    const-string v2, "type"

    const-string v3, "cover"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1561
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1563
    .end local v1    # "zeroPageUri":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public startZeroPage()V
    .locals 10

    .prologue
    .line 1384
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "launch zeropage Activity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :try_start_0
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->getDisplayIdByPackage(Ljava/lang/String;)I

    move-result v0

    .line 1387
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 1388
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1389
    .local v8, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const/high16 v1, 0x10000000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1392
    new-instance v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    invoke-direct {v9}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;-><init>()V

    .line 1393
    .local v9, "params":Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;
    iget v1, v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_BASE_ACTIVITY:I

    or-int/2addr v1, v2

    iput v1, v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 1394
    const/4 v1, 0x0

    iput v1, v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    .line 1395
    iput v0, v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->baseDisplayId:I

    .line 1396
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v1, v8, v9}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->updateMultiScreenLaunchParams(Landroid/content/Intent;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)Landroid/content/Intent;

    move-result-object v8

    .line 1397
    const-string v1, "fromHome"

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1399
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2, v9}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I

    .line 1400
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    .line 1402
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    .line 1404
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    const-string v3, "start_from_zeropage"

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1406
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 1409
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ZPEN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1411
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/GSIMLogging;->setZeroPageStartTime()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1418
    .end local v0    # "displayId":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "params":Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;
    :cond_1
    :goto_0
    return-void

    .line 1413
    :catch_0
    move-exception v7

    .line 1414
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startZeroPage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1415
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v7

    .line 1416
    .local v7, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startZeroPage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method switchToZeroPage()V
    .locals 3

    .prologue
    .line 1370
    const/4 v0, 0x0

    const/16 v1, 0x12c

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->animatePage(IIZ)V

    .line 1371
    return-void
.end method

.method unBindVirtualScreen()V
    .locals 1

    .prologue
    .line 624
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    .line 625
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->unBindVirtualScreen()Z

    .line 627
    :cond_0
    return-void
.end method

.method updatePageIndicatorForZeroPage(ZZ)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1339
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    .line 1340
    .local v0, "indicator":Lcom/android/launcher3/common/view/PageIndicator;
    if-nez v0, :cond_1

    .line 1341
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "updatePageIndicatorForZeroPage, indicator is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1346
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v1

    if-nez v1, :cond_2

    .line 1347
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 1348
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    .line 1349
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 1350
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    goto :goto_0

    .line 1351
    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1352
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 1353
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    .line 1354
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 1355
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    goto :goto_0

    .line 1356
    :cond_3
    if-eqz p2, :cond_0

    .line 1357
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    goto :goto_0

    .line 1360
    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 1362
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 1363
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    .line 1364
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    goto :goto_0
.end method

.method updateZeroPage(I)V
    .locals 7
    .param p1, "op"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1438
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_1

    .line 1439
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v0

    .line 1440
    .local v0, "active":Z
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 1441
    const/4 v0, 0x0

    .line 1442
    iput-boolean v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    .line 1448
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageAppMetadata(Landroid/content/ComponentName;)V

    .line 1449
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    .line 1451
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v4, -0x12d

    .line 1452
    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 1453
    .local v1, "zeroPageScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    instance-of v2, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v2, :cond_3

    .line 1454
    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .end local v1    # "zeroPageScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1455
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->loadZeroPagePreviewBitmap()V

    .line 1463
    .end local v0    # "active":Z
    :cond_1
    :goto_1
    return-void

    .line 1443
    .restart local v0    # "active":Z
    :cond_2
    if-ne p1, v6, :cond_0

    .line 1444
    const/4 v0, 0x1

    .line 1445
    iput-boolean v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    goto :goto_0

    .line 1457
    .restart local v1    # "zeroPageScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    if-eqz v0, :cond_1

    .line 1458
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 1459
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    goto :goto_1
.end method
