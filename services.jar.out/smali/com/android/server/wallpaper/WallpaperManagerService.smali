.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$1;,
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    }
.end annotation


# static fields
.field private static final ACTION_LOCK_WALLPAPER_CHANGED:Ljava/lang/String; = "com.samsung.android.intent.action.LOCK_WALLPAPER_CHANGED"

.field private static final CINEMATIC_WALLPAPER:Landroid/content/ComponentName;

.field static final DEBUG:Z = false

.field private static final IMAGE_WALLPAPER:Landroid/content/ComponentName;

.field private static final INITIALIZE_KNOX_WALLPAPER:I = 0x3e9

.field private static final KNOX_USERID:I = 0x64

.field static final LOCK_WALLPAPER_DIR:Ljava/lang/String; = "wallpaper_lock_images"

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field private static final MSG_OMC_WALLPAPER_UPDATED:I = 0x1

.field private static final MSG_SET_INIT_LIVE_WALLPAPER_VALUE:I = 0x3ed

.field private static final MSG_SET_SWP_TYPE_PRELOAD:I = 0x3ec

.field static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SETUP_KNOX_WALLPAPER:I = 0x3eb

.field private static final SPAGE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.spage"

.field private static final SUPPORT_ANIMATED_WALLPAPER:Z = true

.field private static final SUPPORT_CINEMATIC_WALLPAPER:Z

.field private static final SUPPORT_DDI_WALLPAPER:Z

.field private static final SUPPORT_MOTION_WALLPAPER:Z

.field private static final SWITCH_KNOX_WALLPAPER:I = 0x3ea

.field private static final SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String; = "/sys/class/lcd/panel/window_type"

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field private static final UPDATE_OMC_WALLPAPER:Ljava/lang/String; = "com.samsung.intent.action.RSCUPDATE_START"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_DESKTOP:Ljava/lang/String; = "wallpaper_desktop_orig"

.field static final WALLPAPER_DESKTOP_CROP:Ljava/lang/String; = "wallpaper_desktop"

.field static final WALLPAPER_DESKTOP_INFO:Ljava/lang/String; = "wallpaper_desktop_info.xml"

.field static final WALLPAPER_DESKTOP_LOCK:Ljava/lang/String; = "wallpaper_desktop_lock_orig"

.field static final WALLPAPER_DESKTOP_LOCK_CROP:Ljava/lang/String; = "wallpaper_desktop_lock"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_LOCK:Ljava/lang/String; = "wallpaper_lock_orig"

.field static final WALLPAPER_LOCK_BAK:Ljava/lang/String; = "wallpaper_lock_orig_backup"

.field static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field private static final WINDOWTYPE_OFFSET:I = 0xf

.field private static mDeviceColor:Ljava/lang/String;

.field static final sPerUserFiles:[Ljava/lang/String;


# instance fields
.field final mAppOpsManager:Landroid/app/AppOpsManager;

.field final mBackupLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupRunning:Z

.field final mContext:Landroid/content/Context;

.field private mCurrentPersonaId:I

.field mCurrentUserId:I

.field final mDesktopLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field final mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field final mDesktopWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field mIsBackupLockWallpaper:Z

.field private mIsDesktopMode:Z

.field mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mOMCWallpaperUpdatedReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;

.field mWaitingForUnlock:Z

.field mWallpaperId:I

.field final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_MOTION_WALLPAPER:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wallpaper/WallpaperManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    return p1
.end method

.method static synthetic -wrap0(IZ)Lcom/android/internal/util/JournaledFile;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "isDesktopMode"    # Z

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(IZ)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDesktopWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->handleOMCWallpaperUpdated()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/wallpaper/WallpaperManagerService;II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeWallpaperData(II)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setKnoxWallpaperMessage(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setKnoxWallpaper(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "length"    # I
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeMultiWallpaperFileName(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 0
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "index"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.systemui"

    .line 174
    const-string/jumbo v2, "com.android.systemui.ImageWallpaper"

    .line 173
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    .line 196
    const-string/jumbo v0, "NONE"

    const-string/jumbo v1, "CINEMATIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_MOTION_WALLPAPER:Z

    .line 197
    const-string/jumbo v0, "NONE"

    const-string/jumbo v1, "DDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_DDI_WALLPAPER:Z

    .line 199
    sget-boolean v0, Landroid/app/WallpaperManager;->SUPPORT_CINEMATIC_WALLPAPER:Z

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CINEMATIC_WALLPAPER:Z

    .line 200
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.systemui"

    .line 201
    const-string/jumbo v2, "com.android.systemui.cinematic.GalaxyWallpaperService"

    .line 200
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->CINEMATIC_WALLPAPER:Landroid/content/ComponentName;

    .line 262
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 263
    const-string/jumbo v1, "wallpaper_orig"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "wallpaper"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 264
    const-string/jumbo v1, "wallpaper_lock_orig"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "wallpaper_lock"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 265
    const-string/jumbo v1, "wallpaper_info.xml"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 262
    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1197
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 152
    iput v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    .line 161
    iput-boolean v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z

    .line 235
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 680
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 681
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 684
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupLockWallpaperMap:Landroid/util/SparseArray;

    .line 685
    iput-boolean v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z

    .line 690
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    .line 691
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    .line 697
    iput-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 3417
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    .line 3488
    iput-boolean v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsDesktopMode:Z

    .line 1198
    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "WallpaperService startup"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1200
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1203
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1202
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1204
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1205
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "appops"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1206
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 1207
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v8, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1208
    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1210
    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 1211
    invoke-direct {p0, v7, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1213
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 1214
    .local v3, "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1215
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1216
    .local v0, "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1218
    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    .line 1219
    .local v1, "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    const/4 v2, 0x0

    .line 1220
    .local v2, "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1221
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    check-cast v2, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 1222
    .local v2, "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v4, :cond_0

    .line 1223
    iget v4, v2, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {p0, v4, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1224
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadSettingsLocked is called for user -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    .end local v0    # "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v1    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v2    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_0
    iput-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 1197
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2498
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2499
    const-string/jumbo v2, ", must have permission "

    .line 2498
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2496
    :cond_0
    return-void
.end method

.method private checkWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "kwpType"    # I
    .param p4, "length"    # I

    .prologue
    .line 3591
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkWallpaperData userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " kwpType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    .line 3594
    .local v2, "wallpaperDir":Ljava/io/File;
    if-nez p3, :cond_2

    .line 3595
    const-string/jumbo v1, "wallpaper_lock_orig"

    .line 3596
    .local v1, "oriFileName":Ljava/lang/String;
    const-string/jumbo v0, "wallpaper_lock"

    .line 3597
    .local v0, "cropFileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3598
    const-string/jumbo v1, "wallpaper_desktop_lock_orig"

    .line 3599
    const-string/jumbo v0, "wallpaper_desktop_lock"

    .line 3602
    :cond_0
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-nez v3, :cond_1

    .line 3603
    invoke-virtual {p2, v2, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    const/4 v3, 0x2

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3605
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3590
    .end local v0    # "cropFileName":Ljava/lang/String;
    .end local v1    # "oriFileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3607
    :cond_2
    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3608
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    if-nez v3, :cond_1

    .line 3609
    invoke-virtual {p2, v2, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setMultiWallpaperData(Ljava/io/File;I)V

    .line 3610
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3611
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_0
.end method

.method private cleanUpBackupKWPFiles(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 3711
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cleanUpBackupKWPFiles userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3714
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_3

    .line 3715
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete backup wallpaper file. kwpType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    if-nez v2, :cond_1

    .line 3717
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3718
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete backup wallpaper file path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3720
    iput-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 3734
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3739
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z

    .line 3710
    return-void

    .line 3722
    :cond_1
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 3723
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 3724
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 3725
    .local v1, "wallpaperFile":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3726
    const-string/jumbo v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delete backup multi-wallpaper file path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3728
    const/4 v1, 0x0

    .line 3724
    .end local v1    # "wallpaperFile":Ljava/io/File;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3736
    :cond_3
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v4, "backup lock wallpaper data is null."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cleanUpKWPFiles(I)V
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 3659
    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "cleanUpKWPFiles"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3662
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_7

    .line 3663
    iget v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    .line 3664
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete multi-wallpaper and crop file. kwpType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 3666
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 3667
    .local v2, "wallpaperFile":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3668
    const-string/jumbo v7, "WallpaperManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "delete wallpaper file path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3670
    const/4 v2, 0x0

    .line 3666
    .end local v2    # "wallpaperFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3674
    :cond_1
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    if-eqz v4, :cond_2

    .line 3675
    iput-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    .line 3678
    :cond_2
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 3679
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 3680
    .local v0, "cropFile":Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3681
    const-string/jumbo v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delete crop file path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3683
    const/4 v0, 0x0

    .line 3679
    .end local v0    # "cropFile":Ljava/io/File;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3687
    :cond_4
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    if-eqz v3, :cond_5

    .line 3688
    iput-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    .line 3692
    :cond_5
    iget v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    if-eqz v3, :cond_7

    .line 3693
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete wallpaper and crop file. kwpType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3695
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete wallpaper file path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3697
    iput-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 3699
    :cond_6
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3700
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete crop file path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3702
    iput-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    .line 3658
    :cond_7
    return-void
.end method

.method private copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1631
    const v2, 0x8000

    new-array v1, v2, [B

    .line 1633
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 1634
    invoke-virtual {p2, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1630
    :cond_0
    return-void
.end method

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v4, 0x0

    .line 2964
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension()I

    move-result v0

    .line 2965
    .local v0, "baseSize":I
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ge v1, v0, :cond_0

    .line 2966
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2968
    :cond_0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ge v1, v0, :cond_1

    .line 2969
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2972
    :cond_1
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_2

    .line 2973
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2974
    :cond_2
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2962
    :cond_3
    return-void
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 509
    return-void
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 26
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "index"    # I

    .prologue
    .line 514
    const/16 v22, 0x0

    .line 516
    .local v22, "success":Z
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 518
    .local v6, "cropHint":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v19, v0

    .line 519
    .local v19, "oriFile":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    .line 520
    .local v5, "cropFile":Ljava/io/File;
    sget-boolean v23, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v23, :cond_0

    .line 521
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 522
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    move-object/from16 v23, v0

    aget-object v19, v23, p2

    .line 523
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    move-object/from16 v23, v0

    aget-object v5, v23, p2

    .line 527
    :cond_0
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Generating crop for new wallpaper(s): 0x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 528
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 529
    const-string/jumbo v25, " to "

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 529
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 530
    const-string/jumbo v25, " crop=("

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 530
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v25

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 530
    const/16 v25, 0x78

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 530
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v25

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 531
    const-string/jumbo v25, ") dim=("

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 531
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v25, v0

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 531
    const/16 v25, 0x78

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 531
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v25, v0

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 531
    const/16 v25, 0x29

    .line 527
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 535
    .local v18, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 537
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 538
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    if-lez v23, :cond_1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    if-gtz v23, :cond_5

    .line 539
    :cond_1
    const-string/jumbo v23, "WallpaperManagerService"

    const-string/jumbo v24, "Invalid wallpaper data"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/16 v22, 0x0

    .line 646
    .end local v22    # "success":Z
    :cond_2
    :goto_0
    if-nez v22, :cond_3

    .line 647
    const-string/jumbo v23, "WallpaperManagerService"

    const-string/jumbo v24, "Unable to apply new wallpaper"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 651
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 652
    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v10

    .line 513
    :cond_4
    return-void

    .line 542
    .restart local v22    # "success":Z
    :cond_5
    const/16 v16, 0x0

    .line 543
    .local v16, "needCrop":Z
    const/16 v17, 0x0

    .line 546
    .local v17, "needScale":Z
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 547
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->top:I

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 548
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 549
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 562
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    const/16 v17, 0x1

    .line 564
    :goto_2
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "crop: w="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " h="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "dims: w="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " h="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "meas: w="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " h="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "crop?="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " scale?="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    if-nez v16, :cond_6

    if-eqz v17, :cond_d

    .line 582
    :cond_6
    const/4 v12, 0x0

    .line 583
    .local v12, "f":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 586
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    .line 585
    invoke-static/range {v23 .. v24}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v8

    .line 594
    .local v8, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v23

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v24, v0

    div-int v2, v23, v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .local v2, "actualScale":I
    const/16 v20, 0x1

    .line 596
    .local v20, "scale":I
    :goto_3
    mul-int/lit8 v23, v20, 0x2

    move/from16 v0, v23

    if-ge v0, v2, :cond_e

    .line 597
    mul-int/lit8 v20, v20, 0x2

    goto :goto_3

    .line 553
    .end local v2    # "actualScale":I
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .end local v20    # "scale":I
    :cond_7
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    .line 554
    :goto_4
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v24, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    .line 552
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 557
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_b

    .line 558
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    const/16 v16, 0x1

    goto/16 :goto_1

    .line 553
    :cond_8
    const/16 v23, 0x0

    goto :goto_4

    .line 554
    :cond_9
    const/16 v24, 0x0

    goto :goto_5

    .line 558
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 557
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 562
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 575
    :cond_d
    move-object/from16 v0, v19

    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v22

    .line 576
    .local v22, "success":Z
    if-nez v22, :cond_2

    .line 577
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 599
    .restart local v2    # "actualScale":I
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v20    # "scale":I
    .local v22, "success":Z
    :cond_e
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_f

    .line 600
    :try_start_1
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 601
    .local v21, "scaler":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 608
    .end local v21    # "scaler":Landroid/graphics/BitmapFactory$Options;
    :goto_6
    move-object/from16 v0, v21

    invoke-virtual {v8, v6, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 609
    .local v7, "cropped":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 611
    if-nez v7, :cond_10

    .line 612
    const-string/jumbo v23, "WallpaperManagerService"

    const-string/jumbo v24, "Could not decode new wallpaper"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "f":Ljava/io/FileOutputStream;
    :goto_7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 641
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 606
    .end local v7    # "cropped":Landroid/graphics/Bitmap;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    :cond_f
    const/16 v21, 0x0

    .local v21, "scaler":Landroid/graphics/BitmapFactory$Options;
    goto :goto_6

    .line 617
    .end local v21    # "scaler":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "cropped":Landroid/graphics/Bitmap;
    :cond_10
    const/16 v23, 0x0

    const/16 v24, 0x0

    :try_start_2
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 618
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    div-int v23, v23, v20

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 619
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    div-int v23, v23, v20

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 620
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v15, v23, v24

    .line 621
    .local v15, "heightR":F
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "scale "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", extracting "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v15

    move/from16 v0, v23

    float-to-int v9, v0

    .line 624
    .local v9, "destWidth":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v23, v0

    const/16 v24, 0x1

    .line 623
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v7, v9, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 625
    .local v14, "finalCrop":Landroid/graphics/Bitmap;
    const-string/jumbo v23, "WallpaperManagerService"

    const-string/jumbo v24, "Final extract:"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "  dims: w="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 627
    const-string/jumbo v25, " h="

    .line 626
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 627
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v25, v0

    .line 626
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "   out: w="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 629
    const-string/jumbo v25, " h="

    .line 628
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 629
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 628
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    .local v13, "f":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    .end local v12    # "f":Ljava/io/FileOutputStream;
    const v23, 0x8000

    move/from16 v0, v23

    invoke-direct {v4, v13, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 633
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    :try_start_4
    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    const/16 v24, 0x64

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 634
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 635
    const/16 v22, 0x1

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "f":Ljava/io/FileOutputStream;
    .local v12, "f":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 637
    .end local v2    # "actualScale":I
    .end local v7    # "cropped":Landroid/graphics/Bitmap;
    .end local v8    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v9    # "destWidth":I
    .end local v14    # "finalCrop":Landroid/graphics/Bitmap;
    .end local v15    # "heightR":F
    .end local v20    # "scale":I
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    .local v12, "f":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v11

    .line 638
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .local v11, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_5
    const-string/jumbo v23, "WallpaperManagerService"

    const-string/jumbo v24, "Error decoding crop"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 640
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 641
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 639
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    .line 640
    :goto_9
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 641
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 639
    throw v23

    .restart local v2    # "actualScale":I
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "cropped":Landroid/graphics/Bitmap;
    .restart local v8    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v9    # "destWidth":I
    .restart local v13    # "f":Ljava/io/FileOutputStream;
    .restart local v14    # "finalCrop":Landroid/graphics/Bitmap;
    .restart local v15    # "heightR":F
    .restart local v20    # "scale":I
    :catchall_1
    move-exception v23

    move-object v12, v13

    .end local v13    # "f":Ljava/io/FileOutputStream;
    .local v12, "f":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v13    # "f":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v23

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "f":Ljava/io/FileOutputStream;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 637
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    .restart local v13    # "f":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "f":Ljava/io/FileOutputStream;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v13    # "f":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "f":Ljava/io/FileOutputStream;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    goto :goto_8
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    const/4 v1, 0x0

    .line 2681
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2682
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2683
    return p3

    .line 2685
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getBackupKWPData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 3925
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v3

    .line 3926
    .local v3, "wallpaperDir":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3928
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v2, :cond_9

    .line 3929
    iget v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    if-nez v6, :cond_2

    .line 3930
    new-instance v4, Ljava/io/File;

    const-string/jumbo v6, "wallpaper_lock_orig_backup"

    invoke-direct {v4, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3932
    .local v4, "wallpaperFile":Ljava/io/File;
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v6, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3933
    iput-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 3934
    const-string/jumbo v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "success copy backup wallpaper file. type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    return-object v2

    .line 3937
    :cond_0
    const-string/jumbo v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "failed backup wallpaper file. type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3939
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3941
    :cond_1
    return-object v10

    .line 3943
    .end local v4    # "wallpaperFile":Ljava/io/File;
    :cond_2
    iget v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    .line 3944
    iget v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    const-string/jumbo v8, "wallpaper_lock_orig_backup"

    invoke-virtual {p0, p1, v6, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMultiWallpaperLockFile(IILjava/lang/String;)[Ljava/io/File;

    move-result-object v5

    .line 3946
    .local v5, "wallpaperFiles":[Ljava/io/File;
    const/4 v1, 0x1

    .line 3947
    .local v1, "success":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    if-ge v0, v6, :cond_4

    .line 3948
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    aget-object v6, v6, v0

    aget-object v8, v5, v0

    invoke-static {v6, v8}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3949
    const/4 v1, 0x0

    .line 3947
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3953
    :cond_4
    if-eqz v1, :cond_5

    .line 3954
    iput-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    .line 3955
    const-string/jumbo v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "success copy backup wallpaper file. type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    return-object v2

    .line 3958
    :cond_5
    const-string/jumbo v6, "WallpaperManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed copyFile backup multiWallpaper file. type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    array-length v8, v5

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_9

    aget-object v4, v5, v6

    .line 3960
    .restart local v4    # "wallpaperFile":Ljava/io/File;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3961
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3959
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3965
    .end local v0    # "i":I
    .end local v1    # "success":Z
    .end local v4    # "wallpaperFile":Ljava/io/File;
    .end local v5    # "wallpaperFiles":[Ljava/io/File;
    :cond_7
    iget v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    .line 3966
    iget v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_9

    .line 3967
    :cond_8
    return-object v2

    .line 3971
    :cond_9
    return-object v10
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 1762
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1763
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1764
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1765
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1766
    return-object v1
.end method

.method private getDesktopWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 2740
    if-ne p2, v2, :cond_1

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    .line 2741
    .local v6, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_0
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2742
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 2745
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2746
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2750
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 2751
    if-ne p2, v2, :cond_2

    .line 2752
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    .line 2753
    const-string/jumbo v3, "wallpaper_desktop_lock_orig"

    const-string/jumbo v4, "wallpaper_desktop_lock"

    move v1, p1

    .line 2752
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2754
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2755
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2767
    :cond_0
    :goto_1
    return-object v0

    .line 2740
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v6    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0

    .line 2759
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v6    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_2
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    .line 2761
    const-string/jumbo v3, "wallpaper_desktop_orig"

    const-string/jumbo v4, "wallpaper_desktop"

    move v1, p1

    .line 2760
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2762
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2763
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_1
.end method

.method private getMaximumSizeDimension()I
    .locals 4

    .prologue
    .line 3028
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3029
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3030
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3301
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 3302
    const-string/jumbo v2, "enterprise_policy_new"

    .line 3301
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3303
    .local v0, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 3304
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    return-object v1

    .line 3306
    :cond_0
    return-object v3
.end method

.method private getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x2

    .line 3539
    const/4 v0, 0x0

    .line 3540
    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3541
    if-ne p2, v2, :cond_0

    .line 3542
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3553
    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    return-object v0

    .line 3544
    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 3547
    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    if-ne p2, v2, :cond_2

    .line 3548
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 3550
    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 1254
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperInfobyData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperInfo;
    .locals 14
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1956
    const/4 v10, 0x0

    .line 1958
    .local v10, "wi":Landroid/app/WallpaperInfo;
    :try_start_0
    iget v8, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 1959
    .local v8, "serviceUserId":I
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1960
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1961
    const/16 v12, 0x1080

    .line 1960
    invoke-interface {v11, v0, v12, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    .line 1963
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    if-nez v9, :cond_0

    .line 1965
    const-string/jumbo v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Attempted wallpaper "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is unavailable"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const/4 v11, 0x0

    return-object v11

    .line 1969
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v11, "android.service.wallpaper.WallpaperService"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1972
    .local v5, "intent":Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1973
    iget-object v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v12

    .line 1974
    const/16 v13, 0x80

    .line 1972
    invoke-interface {v11, v5, v12, v13, v8}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 1976
    .local v6, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 1977
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v7, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1978
    .local v7, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1979
    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v11

    .line 1978
    if-eqz v11, :cond_2

    .line 1981
    :try_start_1
    new-instance v10, Landroid/app/WallpaperInfo;

    .end local v10    # "wi":Landroid/app/WallpaperInfo;
    iget-object v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    invoke-direct {v10, v12, v11}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1993
    .end local v7    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_1
    return-object v10

    .line 1985
    .restart local v7    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 1986
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v11, "WallpaperManagerService"

    const-string/jumbo v12, "wallpaper info IO exception "

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    const/4 v11, 0x0

    return-object v11

    .line 1982
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 1983
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v11, "WallpaperManagerService"

    const-string/jumbo v12, "wallpaper info parse error "

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1984
    const/4 v11, 0x0

    return-object v11

    .line 1976
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10    # "wi":Landroid/app/WallpaperInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1994
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "i":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v8    # "serviceUserId":I
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    .end local v10    # "wi":Landroid/app/WallpaperInfo;
    :catch_2
    move-exception v2

    .line 1995
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "WallpaperManagerService"

    const-string/jumbo v12, "wallpaper info exception"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const/4 v11, 0x0

    return-object v11
.end method

.method private static getWallpaperLockDir(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 1259
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_lock_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 2702
    if-ne p2, v2, :cond_1

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 2703
    .local v6, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_0
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2704
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 2707
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2708
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2712
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 2713
    if-ne p2, v2, :cond_2

    .line 2714
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    .line 2715
    const-string/jumbo v3, "wallpaper_lock_orig"

    const-string/jumbo v4, "wallpaper_lock"

    move v1, p1

    .line 2714
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2716
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2717
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2729
    :cond_0
    :goto_1
    return-object v0

    .line 2702
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v6    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0

    .line 2721
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v6    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_2
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    .line 2723
    const-string/jumbo v3, "wallpaper_orig"

    const-string/jumbo v4, "wallpaper"

    move v1, p1

    .line 2722
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2724
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2725
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_1
.end method

.method private handleOMCWallpaperUpdated()V
    .locals 7

    .prologue
    .line 4144
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4145
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 4146
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->needToUpdateOMCWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4147
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 4148
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4149
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    .line 4150
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v6

    .line 4143
    return-void

    .line 4152
    :cond_2
    :try_start_1
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "current wallpaper is not image wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4144
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private initLockWallpaperData(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x2

    .line 2940
    invoke-direct {p0, p1, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 2941
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 2942
    invoke-direct {p0, p1, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeWallpaperData(II)V

    .line 2945
    :cond_0
    const-string/jumbo v3, "wallpaper_lock_orig"

    .line 2946
    .local v3, "oriFileName":Ljava/lang/String;
    const-string/jumbo v4, "wallpaper_lock"

    .line 2948
    .local v4, "cropFileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2949
    const-string/jumbo v3, "wallpaper_desktop_lock_orig"

    .line 2950
    const-string/jumbo v4, "wallpaper_desktop_lock"

    .line 2954
    :cond_1
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    .line 2955
    const/4 v5, 0x1

    move v1, p1

    .line 2954
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2956
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    .line 2958
    invoke-direct {p0, p1, v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2959
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2939
    return-void
.end method

.method private loadSettingsLocked(IZ)V
    .locals 36
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z

    .prologue
    .line 2772
    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v9, "loadSettingsLocked"

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v5

    .line 2775
    .local v5, "wallpaperDir":Ljava/io/File;
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v10

    .line 2777
    .local v10, "lockWallpaperDir":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v4

    move/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(IZ)Lcom/android/internal/util/JournaledFile;

    move-result-object v28

    .line 2778
    .local v28, "journal":Lcom/android/internal/util/JournaledFile;
    const/16 v30, 0x0

    .line 2779
    .local v30, "stream":Ljava/io/FileInputStream;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v27

    .line 2780
    .local v27, "file":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2781
    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v9, "loadSettingsLocked file is not exists."

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 2786
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 2787
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v3, :cond_2

    .line 2788
    const-string/jumbo v6, "wallpaper_orig"

    .line 2789
    .local v6, "oriFileName":Ljava/lang/String;
    const-string/jumbo v7, "wallpaper"

    .line 2790
    .local v7, "cropFileName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2791
    const-string/jumbo v6, "wallpaper_desktop_orig"

    .line 2792
    const-string/jumbo v7, "wallpaper_desktop"

    .line 2795
    :cond_1
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2796
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v8, 0x1

    move/from16 v4, p1

    .line 2795
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2797
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2798
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2799
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2800
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2804
    .end local v6    # "oriFileName":Ljava/lang/String;
    .end local v7    # "cropFileName":Ljava/lang/String;
    :cond_2
    const/16 v32, 0x0

    .line 2809
    .local v32, "success":Z
    const/16 v33, 0x0

    .line 2812
    .local v33, "successLock":Z
    :try_start_0
    new-instance v31, Ljava/io/FileInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2813
    .local v31, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .end local v30    # "stream":Ljava/io/FileInputStream;
    move-result-object v29

    .line 2814
    .local v29, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2818
    :cond_3
    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    .line 2819
    .local v35, "type":I
    const/4 v4, 0x2

    move/from16 v0, v35

    if-ne v0, v4, :cond_5

    .line 2820
    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    .line 2821
    .local v34, "tag":Ljava/lang/String;
    const-string/jumbo v4, "wp"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2823
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 2826
    const-string/jumbo v4, "component"

    const/4 v9, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2827
    .local v20, "comp":Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 2828
    invoke-static/range {v20 .. v20}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 2827
    :goto_0
    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 2830
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_4

    .line 2831
    const-string/jumbo v4, "android"

    iget-object v9, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2830
    if-eqz v4, :cond_5

    .line 2833
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_b

    .line 2886
    .end local v20    # "comp":Ljava/lang/String;
    .end local v34    # "tag":Ljava/lang/String;
    :cond_5
    :goto_1
    const/4 v4, 0x1

    move/from16 v0, v35

    if-ne v0, v4, :cond_3

    .line 2887
    const/16 v32, 0x1

    move-object/from16 v30, v31

    .line 2901
    .end local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v31    # "stream":Ljava/io/FileInputStream;
    .end local v35    # "type":I
    :goto_2
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2903
    if-nez v32, :cond_10

    .line 2904
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2905
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2906
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v9, v11, v12, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 2907
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v9, v11, v12, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 2908
    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2910
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeWallpaperData(II)V

    .line 2921
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2927
    if-nez v33, :cond_11

    .line 2928
    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v9, "Didn\'t set wallpaperData for lockscreen"

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaperData(I)V

    .line 2771
    :cond_7
    :goto_4
    return-void

    .line 2829
    .restart local v20    # "comp":Ljava/lang/String;
    .restart local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31    # "stream":Ljava/io/FileInputStream;
    .restart local v34    # "tag":Ljava/lang/String;
    .restart local v35    # "type":I
    :cond_8
    const/4 v4, 0x0

    goto :goto_0

    .line 2844
    .end local v20    # "comp":Ljava/lang/String;
    :cond_9
    :try_start_2
    const-string/jumbo v4, "kwp"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2846
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v8

    .line 2847
    .local v8, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v6, "wallpaper_lock_orig"

    .line 2848
    .restart local v6    # "oriFileName":Ljava/lang/String;
    const-string/jumbo v7, "wallpaper_lock"

    .line 2850
    .restart local v7    # "cropFileName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2851
    const-string/jumbo v6, "wallpaper_desktop_lock_orig"

    .line 2852
    const-string/jumbo v7, "wallpaper_desktop_lock"

    .line 2855
    :cond_a
    if-nez v8, :cond_c

    .line 2856
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperSize(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v13

    .line 2857
    .local v13, "length":I
    const/4 v4, 0x1

    if-le v13, v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2860
    :cond_b
    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2861
    .end local v8    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/16 v19, 0x1

    move-object v14, v8

    move/from16 v15, p1

    move-object/from16 v16, v10

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 2860
    invoke-direct/range {v14 .. v19}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2863
    .restart local v8    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_5
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v8, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2865
    .end local v13    # "length":I
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v8, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 2866
    const/16 v33, 0x1

    goto/16 :goto_1

    .line 2858
    .restart local v13    # "length":I
    :cond_d
    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v8    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v8    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_5

    .line 2867
    .end local v6    # "oriFileName":Ljava/lang/String;
    .end local v7    # "cropFileName":Ljava/lang/String;
    .end local v8    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v13    # "length":I
    :cond_e
    const-string/jumbo v4, "backupkwp"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupLockWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2869
    .local v14, "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v14, :cond_5

    .line 2870
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperSize(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v13

    .line 2871
    .restart local v13    # "length":I
    const/4 v4, 0x1

    if-le v13, v4, :cond_f

    .line 2872
    new-instance v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v14    # "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v15, p1

    move-object/from16 v16, v10

    move/from16 v19, v13

    invoke-direct/range {v14 .. v19}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2873
    .restart local v14    # "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v4, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    .line 2874
    const-string/jumbo v9, "wallpaper_lock_orig_backup"

    .line 2873
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMultiWallpaperLockFile(IILjava/lang/String;)[Ljava/io/File;

    move-result-object v4

    iput-object v4, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    .line 2880
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupLockWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2881
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v14, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 2882
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_b

    goto/16 :goto_1

    .line 2888
    .end local v13    # "length":I
    .end local v14    # "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v34    # "tag":Ljava/lang/String;
    .end local v35    # "type":I
    :catch_0
    move-exception v21

    .local v21, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v30, v31

    .line 2889
    .end local v31    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v9, "no current wallpaper -- first boot?"

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2876
    .end local v21    # "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "length":I
    .restart local v14    # "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31    # "stream":Ljava/io/FileInputStream;
    .restart local v34    # "tag":Ljava/lang/String;
    .restart local v35    # "type":I
    :cond_f
    :try_start_3
    new-instance v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2877
    .end local v14    # "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v17, "wallpaper_lock_orig"

    const-string/jumbo v18, "wallpaper_lock"

    const/16 v19, 0x1

    move/from16 v15, p1

    move-object/from16 v16, v10

    .line 2876
    invoke-direct/range {v14 .. v19}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2878
    .restart local v14    # "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v9, "wallpaper_lock_orig_backup"

    invoke-direct {v4, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_b

    goto :goto_6

    .line 2890
    .end local v13    # "length":I
    .end local v14    # "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v34    # "tag":Ljava/lang/String;
    .end local v35    # "type":I
    :catch_1
    move-exception v24

    .local v24, "e":Ljava/lang/NullPointerException;
    move-object/from16 v30, v31

    .line 2891
    .end local v31    # "stream":Ljava/io/FileInputStream;
    :goto_8
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2898
    .end local v24    # "e":Ljava/lang/NullPointerException;
    .restart local v30    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v23

    .line 2899
    .end local v30    # "stream":Ljava/io/FileInputStream;
    .local v23, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_9
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2896
    .end local v23    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v30    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v22

    .line 2897
    .end local v30    # "stream":Ljava/io/FileInputStream;
    .local v22, "e":Ljava/io/IOException;
    :goto_a
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2894
    .end local v22    # "e":Ljava/io/IOException;
    .restart local v30    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v26

    .line 2895
    .end local v30    # "stream":Ljava/io/FileInputStream;
    .local v26, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2892
    .end local v26    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v30    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v25

    .line 2893
    .end local v30    # "stream":Ljava/io/FileInputStream;
    .local v25, "e":Ljava/lang/NumberFormatException;
    :goto_c
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2912
    .end local v25    # "e":Ljava/lang/NumberFormatException;
    :cond_10
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-gtz v4, :cond_6

    .line 2913
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    goto/16 :goto_3

    .line 2931
    :cond_11
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v8

    .line 2932
    .restart local v8    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v8, :cond_7

    .line 2933
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto/16 :goto_4

    .line 2888
    .end local v8    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v30    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v21

    .restart local v21    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_7

    .line 2890
    .end local v21    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v24

    .restart local v24    # "e":Ljava/lang/NullPointerException;
    goto/16 :goto_8

    .line 2892
    .end local v24    # "e":Ljava/lang/NullPointerException;
    .end local v30    # "stream":Ljava/io/FileInputStream;
    .restart local v31    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v25

    .restart local v25    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v30, v31

    .end local v31    # "stream":Ljava/io/FileInputStream;
    .local v30, "stream":Ljava/io/FileInputStream;
    goto :goto_c

    .line 2894
    .end local v25    # "e":Ljava/lang/NumberFormatException;
    .end local v30    # "stream":Ljava/io/FileInputStream;
    .restart local v31    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v26

    .restart local v26    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v30, v31

    .end local v31    # "stream":Ljava/io/FileInputStream;
    .restart local v30    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 2896
    .end local v26    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v30    # "stream":Ljava/io/FileInputStream;
    .restart local v31    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v22

    .restart local v22    # "e":Ljava/io/IOException;
    move-object/from16 v30, v31

    .end local v31    # "stream":Ljava/io/FileInputStream;
    .restart local v30    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .line 2898
    .end local v22    # "e":Ljava/io/IOException;
    .end local v30    # "stream":Ljava/io/FileInputStream;
    .restart local v31    # "stream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v23

    .restart local v23    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v30, v31

    .end local v31    # "stream":Ljava/io/FileInputStream;
    .restart local v30    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_9
.end method

.method private static makeJournaledFile(IZ)Lcom/android/internal/util/JournaledFile;
    .locals 7
    .param p0, "userId"    # I
    .param p1, "isDesktopMode"    # Z

    .prologue
    .line 2552
    if-eqz p1, :cond_0

    const-string/jumbo v1, "wallpaper_desktop_info.xml"

    .line 2553
    .local v1, "child":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2554
    .local v0, "base":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/JournaledFile;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v2

    .line 2552
    .end local v0    # "base":Ljava/lang/String;
    .end local v1    # "child":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "wallpaper_info.xml"

    .restart local v1    # "child":Ljava/lang/String;
    goto :goto_0
.end method

.method private static makeMultiWallpaperFileName(ILjava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "length"    # I
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 3636
    new-array v1, p0, [Ljava/lang/String;

    .line 3637
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p0, :cond_0

    .line 3638
    add-int/lit8 v2, v0, -0x1

    const-string/jumbo v3, "%s_%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3640
    :cond_0
    return-object v1
.end method

.method private migrateFromOld()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2668
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2669
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2670
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2671
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2672
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2674
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2675
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2676
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2667
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private migrateOldKeyguardWallpaper()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1550
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1551
    const-string/jumbo v5, "lockscreen_wallpaper_path"

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1550
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1552
    .local v3, "wallpaperPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1553
    const-string/jumbo v5, "current_sec_theme_package_open_theme"

    .line 1552
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1554
    .local v1, "openThemeXmlPkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1555
    const-string/jumbo v5, "opne_theme_effect_lockscreen_wallpaper"

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1554
    invoke-static {v4, v5, v8, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1557
    .local v0, "openThemeLockscreenWallpaper":I
    if-eqz v3, :cond_0

    const-string/jumbo v4, "/data/user/0/com.samsung.android.keyguardwallpaperupdator/files/photoslide_images/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1558
    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "Cant access to keyguardwallpaperupdator path."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1560
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v4, "com.samsung.android.keyguardwallpaperupdator"

    iput-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    .line 1561
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lockscreen_wallpaper_path"

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1562
    return-void

    .line 1565
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1566
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)V

    .line 1618
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1566
    new-array v6, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1549
    :cond_1
    :goto_0
    return-void

    .line 1619
    :cond_2
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 1620
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "migrateOldKeyguardWallpaper packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    invoke-virtual {p0, v1, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "current_sec_theme_package_open_theme"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1623
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "opne_theme_effect_lockscreen_wallpaper"

    .line 1624
    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1623
    invoke-static {v4, v5, v8, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private migrateSystemToLockWallpaperLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 2139
    invoke-direct {p0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    .line 2140
    .local v7, "sysWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v7, :cond_0

    .line 2144
    return-void

    .line 2147
    :cond_0
    const-string/jumbo v3, "wallpaper_lock_orig"

    .line 2148
    .local v3, "oriFileName":Ljava/lang/String;
    const-string/jumbo v4, "wallpaper_lock"

    .line 2150
    .local v4, "cropFileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2151
    const-string/jumbo v3, "wallpaper_desktop_lock_orig"

    .line 2152
    const-string/jumbo v4, "wallpaper_desktop_lock"

    .line 2157
    :cond_1
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2159
    .local v0, "lockWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2160
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2161
    iget v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2162
    iget v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2163
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2167
    :try_start_0
    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2138
    return-void

    .line 2169
    :catch_0
    move-exception v6

    .line 2170
    .local v6, "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t migrate system wallpaper: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2172
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2173
    return-void
.end method

.method private needToUpdateOMCWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 8
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4159
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 4160
    .local v1, "userFile":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 4161
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "user wallpaper is being used"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    return v6

    .line 4165
    :cond_0
    invoke-static {v7}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v0

    .line 4166
    .local v0, "omcFile":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 4167
    return v7

    .line 4169
    :cond_1
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "no omc wallpaper"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    return v6
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 2481
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 2482
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2484
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v4}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2482
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2491
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2492
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2493
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2480
    return-void

    .line 2485
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private onRefreshWallpaperByUiMode(Z)V
    .locals 6
    .param p1, "isDesktopMode"    # Z

    .prologue
    .line 3498
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRefreshWallpaperByUiMode() isDesktopMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsDesktopMode:Z

    .line 3505
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3506
    if-eqz p1, :cond_1

    .line 3507
    :try_start_0
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3508
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3509
    .local v1, "wdPrevWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3515
    .local v0, "wdNextWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 3516
    :cond_0
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRefreshWallpaperByUiMode() wdPrevWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3517
    const-string/jumbo v5, ", wdNextWallpaper = "

    .line 3516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 3518
    return-void

    .line 3511
    .end local v0    # "wdNextWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1    # "wdPrevWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3512
    .restart local v1    # "wdPrevWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .restart local v0    # "wdNextWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 3521
    :cond_2
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-eqz v2, :cond_3

    .line 3522
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 3525
    :cond_3
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-nez v2, :cond_4

    .line 3526
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 3529
    :cond_4
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-eqz v2, :cond_5

    .line 3530
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 3531
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v3

    .line 3535
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    .line 3497
    return-void

    .line 3505
    .end local v0    # "wdNextWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1    # "wdPrevWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "keepDimensionHints"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2986
    const-string/jumbo v2, "id"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2987
    .local v1, "idString":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 2988
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2989
    .local v0, "id":I
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v0, v2, :cond_0

    .line 2990
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 2996
    .end local v0    # "id":I
    :cond_0
    :goto_0
    if-nez p3, :cond_1

    .line 2997
    const-string/jumbo v2, "width"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2999
    const-string/jumbo v2, "height"

    .line 2998
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 3001
    :cond_1
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string/jumbo v3, "cropLeft"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 3002
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string/jumbo v3, "cropTop"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 3003
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string/jumbo v3, "cropRight"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 3004
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string/jumbo v3, "cropBottom"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 3005
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingLeft"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 3006
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingTop"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 3007
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingRight"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 3008
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingBottom"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 3009
    const-string/jumbo v2, "name"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3010
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "backup"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3013
    const-string/jumbo v2, "type"

    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    .line 3014
    const-string/jumbo v2, "length"

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    .line 3016
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v2, :cond_2

    .line 3017
    const-string/jumbo v2, "colorCode"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    .line 3018
    const-string/jumbo v2, "motionPkgName"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    .line 3021
    :cond_2
    const-string/jumbo v2, "animatedPkgName"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    .line 3024
    const-string/jumbo v2, "callingPackage"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    .line 2985
    return-void

    .line 2993
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    goto/16 :goto_0
.end method

.method private parseWallpaperSize(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 2980
    const-string/jumbo v0, "length"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private readColorId()I
    .locals 6

    .prologue
    .line 4058
    const/4 v1, 0x0

    .line 4059
    .local v1, "id":I
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->readWindowType()Ljava/lang/String;

    move-result-object v2

    .line 4060
    .local v2, "windowType":Ljava/lang/String;
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readWindowType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4062
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4063
    .local v0, "firstParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4064
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 4065
    and-int/lit8 v1, v1, 0xf

    .line 4068
    .end local v0    # "firstParam":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readColorId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    return v1
.end method

.method private readWindowType()Ljava/lang/String;
    .locals 8

    .prologue
    .line 4074
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4075
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 4076
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4079
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v6, "/sys/class/lcd/panel/window_type"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4080
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 4081
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 4083
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 4084
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string/jumbo v5, "WallpaperManagerService"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4086
    if-eqz v2, :cond_0

    .line 4088
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4095
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 4086
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v3, :cond_2

    .line 4088
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 4089
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 4090
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "WallpaperManagerService"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4089
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 4090
    const-string/jumbo v5, "WallpaperManagerService"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4085
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 4086
    :goto_4
    if-eqz v2, :cond_3

    .line 4088
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 4085
    :cond_3
    :goto_5
    throw v5

    .line 4089
    :catch_3
    move-exception v0

    .line 4090
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "WallpaperManagerService"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4085
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 4083
    .local v1, "line":Ljava/lang/String;
    .local v2, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private registerOMCWallpaperUpdatedReceiver()V
    .locals 3

    .prologue
    .line 4125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4127
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mOMCWallpaperUpdatedReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;

    .line 4128
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mOMCWallpaperUpdatedReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4121
    return-void
.end method

.method private removeWallpaperData(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x2

    .line 3573
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3574
    if-ne p2, v1, :cond_0

    .line 3575
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3572
    :goto_0
    return-void

    .line 3577
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 3580
    :cond_1
    if-ne p2, v1, :cond_2

    .line 3581
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 3583
    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private saveSettingsLocked(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 2558
    const-string/jumbo v8, "WallpaperManagerService"

    const-string/jumbo v9, "saveSettingsLocked"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v8

    invoke-static {p1, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(IZ)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 2561
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v1, 0x0

    .line 2562
    .local v1, "fstream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 2564
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2565
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2566
    .local v2, "fstream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    invoke-direct {v6, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2567
    .local v6, "stream":Ljava/io/BufferedOutputStream;
    :try_start_2
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2568
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v4, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2572
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    .line 2573
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v7, :cond_0

    .line 2574
    const-string/jumbo v8, "wp"

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2576
    :cond_0
    const/4 v8, 0x2

    invoke-direct {p0, p1, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    .line 2577
    if-eqz v7, :cond_1

    .line 2578
    const-string/jumbo v8, "kwp"

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2581
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2588
    :cond_2
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2590
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2591
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2592
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 2593
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/BufferedOutputStream;
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 2557
    .end local v2    # "fstream":Ljava/io/FileOutputStream;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_1
    return-void

    .line 2582
    .restart local v2    # "fstream":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2583
    .restart local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v7, :cond_2

    .line 2584
    const-string/jumbo v8, "backupkwp"

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2594
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "stream":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 2595
    .end local v2    # "fstream":Ljava/io/FileOutputStream;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    :goto_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2596
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_1

    .line 2594
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fstream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    .restart local v2    # "fstream":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileOutputStream;
    .local v1, "fstream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private setKnoxWallpaper(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 3317
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKnoxWallpaper is called for personaId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3319
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3320
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3316
    return-void
.end method

.method private setKnoxWallpaperMessage(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 3325
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3326
    :try_start_0
    const-string/jumbo v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setKnoxWallpaper userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    .line 3329
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v7, :cond_0

    .line 3330
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Wallpaper not yet initialized for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3325
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 3332
    .restart local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    if-nez v8, :cond_1

    .line 3333
    const-string/jumbo v8, "WallpaperManagerService"

    const-string/jumbo v10, "PMS cannot be null"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 3334
    return-void

    .line 3336
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 3338
    .local v4, "ident":J
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/pm/PersonaManagerService;->getKnoxWallpaper(I)Ljava/io/InputStream;

    move-result-object v0

    .line 3339
    .local v0, "data":Ljava/io/InputStream;
    if-nez v0, :cond_2

    .line 3340
    const-string/jumbo v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "KNOX wallpaper stream cannot be null for userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3364
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v9

    .line 3341
    return-void

    .line 3343
    :cond_2
    const/4 v8, 0x0

    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {p0, v8, v7, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 3344
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_3

    .line 3345
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3347
    :cond_3
    const/4 v2, 0x0

    .line 3349
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-eqz v6, :cond_4

    .line 3350
    :try_start_6
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3351
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_7
    invoke-direct {p0, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setupKnoxWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 3354
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    if-eqz v2, :cond_5

    .line 3355
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3357
    :cond_5
    if-eqz v0, :cond_6

    .line 3358
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3364
    :cond_6
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v0    # "data":Ljava/io/InputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    monitor-exit v9

    .line 3323
    return-void

    .line 3353
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v8

    .line 3354
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_7

    .line 3355
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3357
    :cond_7
    if-eqz v0, :cond_8

    .line 3358
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3353
    :cond_8
    throw v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3361
    .end local v0    # "data":Ljava/io/InputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 3362
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b
    const-string/jumbo v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setKnoxWallpaper Exception-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 3364
    :try_start_c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3363
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v8

    .line 3364
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3363
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3353
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_3
    move-exception v8

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setRestoreKWP(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 12
    .param p1, "userId"    # I
    .param p2, "restoreWallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 3975
    const-string/jumbo v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setRestoreKWP userId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3978
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v5, :cond_1

    .line 3979
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v6

    .line 3981
    .local v6, "wallpaperDir":Ljava/io/File;
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3982
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3983
    iget v9, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    if-nez v9, :cond_2

    .line 3984
    new-instance v7, Ljava/io/File;

    const-string/jumbo v9, "wallpaper_lock_orig"

    invoke-direct {v7, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3985
    .local v7, "wallpaperFile":Ljava/io/File;
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 3987
    .local v0, "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 3988
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object v7, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 3990
    iget-object v9, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v9, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3991
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V

    .line 3992
    const/4 v9, 0x1

    return v9

    .line 3994
    :cond_0
    const-string/jumbo v9, "WallpaperManagerService"

    const-string/jumbo v10, "failed copyFile restore"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    .end local v0    # "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    .end local v6    # "wallpaperDir":Ljava/io/File;
    .end local v7    # "wallpaperFile":Ljava/io/File;
    :cond_1
    :goto_0
    const/4 v9, 0x0

    return v9

    .line 3996
    .restart local v6    # "wallpaperDir":Ljava/io/File;
    :cond_2
    iget v9, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 3997
    iget v9, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    const-string/jumbo v10, "wallpaper_lock_orig"

    invoke-virtual {p0, p1, v9, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMultiWallpaperLockFile(IILjava/lang/String;)[Ljava/io/File;

    move-result-object v8

    .line 3998
    .local v8, "wallpaperFiles":[Ljava/io/File;
    iget v9, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    const-string/jumbo v10, "wallpaper_lock"

    invoke-virtual {p0, p1, v9, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMultiWallpaperLockFile(IILjava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 3999
    .local v2, "cropFiles":[Ljava/io/File;
    iget v9, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    new-array v1, v9, [Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    .line 4001
    .local v1, "completion":[Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    const/4 v4, 0x1

    .line 4002
    .local v4, "success":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v9, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    if-ge v3, v9, :cond_4

    .line 4003
    new-instance v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    invoke-direct {v9, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    aput-object v9, v1, v3

    .line 4004
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    aget-object v10, v1, v3

    iput-object v10, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 4005
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v9, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    aget-object v10, v8, v3

    aput-object v10, v9, v3

    .line 4006
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v9, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    aget-object v10, v2, v3

    aput-object v10, v9, v3

    .line 4008
    iget-object v9, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    aget-object v9, v9, v3

    aget-object v10, v8, v3

    invoke-static {v9, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 4009
    const/4 v4, 0x0

    .line 4011
    :cond_3
    aget-object v9, v1, v3

    invoke-virtual {v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V

    .line 4002
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4014
    :cond_4
    if-eqz v4, :cond_5

    .line 4015
    const/4 v9, 0x1

    return v9

    .line 4017
    :cond_5
    const-string/jumbo v9, "WallpaperManagerService"

    const-string/jumbo v10, "failed copyFile restore."

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4019
    .end local v1    # "completion":[Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    .end local v2    # "cropFiles":[Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "success":Z
    .end local v8    # "wallpaperFiles":[Ljava/io/File;
    :cond_6
    iget v9, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    .line 4020
    iget v9, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    .line 4021
    :cond_7
    iget v9, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {p0, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    .line 4022
    const/4 v9, 0x1

    return v9

    .line 4024
    :cond_8
    const-string/jumbo v9, "WallpaperManagerService"

    const-string/jumbo v10, "Unknown kwp type."

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "which"    # I

    .prologue
    const/4 v1, 0x2

    .line 3557
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3558
    if-ne p3, v1, :cond_0

    .line 3559
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3556
    :goto_0
    return-void

    .line 3561
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3564
    :cond_1
    if-ne p3, v1, :cond_2

    .line 3565
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3567
    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setupKnoxWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3372
    const v2, 0x8000

    new-array v1, v2, [B

    .line 3374
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 3375
    invoke-virtual {p2, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 3371
    :cond_0
    return-void
.end method

.method private updateDeviceColor(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4099
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4100
    const v3, 0x10700a2

    .line 4099
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 4102
    .local v0, "color":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->readColorId()I

    move-result v1

    .line 4103
    .local v1, "colorId":I
    if-ltz v1, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 4104
    aget-object v2, v0, v1

    sput-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    .line 4105
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDeviceColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    :goto_0
    return-void

    .line 4107
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    .line 4108
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "color_id: out of index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2602
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2603
    const-string/jumbo v0, "id"

    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2604
    const-string/jumbo v0, "width"

    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2605
    const-string/jumbo v0, "height"

    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2607
    const-string/jumbo v0, "cropLeft"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2608
    const-string/jumbo v0, "cropTop"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2609
    const-string/jumbo v0, "cropRight"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2610
    const-string/jumbo v0, "cropBottom"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2612
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_0

    .line 2613
    const-string/jumbo v0, "paddingLeft"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2615
    :cond_0
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_1

    .line 2616
    const-string/jumbo v0, "paddingTop"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2618
    :cond_1
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-eqz v0, :cond_2

    .line 2619
    const-string/jumbo v0, "paddingRight"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2621
    :cond_2
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3

    .line 2622
    const-string/jumbo v0, "paddingBottom"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2625
    :cond_3
    const-string/jumbo v0, "name"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2626
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    .line 2627
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2632
    :cond_4
    :goto_0
    iget-boolean v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz v0, :cond_5

    .line 2633
    const-string/jumbo v0, "backup"

    const-string/jumbo v1, "true"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2637
    :cond_5
    const-string/jumbo v0, "kwp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2638
    const-string/jumbo v0, "type"

    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2639
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2650
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2657
    :cond_7
    :goto_2
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2658
    const-string/jumbo v0, "callingPackage"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2664
    :cond_8
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2601
    return-void

    .line 2628
    :cond_9
    const-string/jumbo v0, "component"

    .line 2629
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 2628
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2640
    :cond_a
    iget v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    if-lez v0, :cond_b

    .line 2641
    const-string/jumbo v0, "length"

    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2643
    :cond_b
    iget v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 2644
    const-string/jumbo v0, "colorCode"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2646
    :cond_c
    iget v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 2647
    const-string/jumbo v0, "motionPkgName"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 2651
    :cond_d
    iget v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 2652
    const-string/jumbo v0, "animatedPkgName"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 11
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2469
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 2471
    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    .line 2470
    const/16 v3, 0x7dd

    const/4 v4, 0x0

    move-object v1, p1

    .line 2469
    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2467
    :cond_0
    :goto_0
    return-void

    .line 2472
    :catch_0
    move-exception v8

    .line 2473
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2474
    iget-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, v10

    move v2, v9

    move v3, v9

    move-object v4, p2

    move-object v5, v10

    .line 2475
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_0
.end method

.method public backupLockWallpaper()V
    .locals 6

    .prologue
    .line 3833
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 3834
    .local v1, "userId":I
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "backupLockWallpaper userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mIsBackupLockWallpaper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3837
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z

    if-eqz v3, :cond_0

    .line 3838
    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "mIsBackupLockWallpaper was wrong. Updated the value."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z

    .line 3842
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z

    if-nez v3, :cond_1

    .line 3843
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupKWPData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 3845
    .local v0, "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_2

    .line 3846
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3847
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z

    .line 3832
    .end local v0    # "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    :goto_0
    return-void

    .line 3849
    .restart local v0    # "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "Failed lock wallpaper backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 22
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 2271
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " force="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    if-nez p2, :cond_1

    .line 2274
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_1

    .line 2275
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    .line 2276
    if-nez p1, :cond_1

    .line 2277
    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "bindWallpaperComponentLocked: still using default"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    const/4 v3, 0x1

    return v3

    .line 2281
    :cond_0
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2283
    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "same wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    const/4 v3, 0x1

    return v3

    .line 2290
    :cond_1
    if-nez p1, :cond_3

    .line 2291
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    .line 2292
    if-nez p1, :cond_3

    .line 2293
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v3, :cond_2

    .line 2294
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2310
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 2313
    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "Using image wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_3
    :goto_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v18, v0

    .line 2318
    .local v18, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2319
    const/16 v4, 0x1080

    .line 2318
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v19

    .line 2320
    .local v19, "si":Landroid/content/pm/ServiceInfo;
    if-nez v19, :cond_6

    .line 2322
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempted wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    const/4 v3, 0x0

    return v3

    .line 2295
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    :cond_4
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2296
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2297
    sget-object p1, Lcom/android/server/wallpaper/WallpaperManagerService;->CINEMATIC_WALLPAPER:Landroid/content/ComponentName;

    .line 2298
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_5

    .line 2299
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_5

    .line 2300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2301
    const-string/jumbo v4, "lockscreen_wallpaper"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v6, 0x0

    .line 2300
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2302
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaper()V

    .line 2307
    :goto_1
    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "Using cinematic wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2423
    :catch_0
    move-exception v9

    .line 2424
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2425
    .local v14, "msg":Ljava/lang/String;
    if-eqz p3, :cond_15

    .line 2426
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2304
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "msg":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2305
    const-string/jumbo v4, "lockscreen_wallpaper"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v6, 0x1

    .line 2304
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 2325
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :cond_6
    const-string/jumbo v3, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2329
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_7

    .line 2330
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2332
    :cond_7
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    const/4 v3, 0x0

    return v3

    .line 2336
    .end local v14    # "msg":Ljava/lang/String;
    :cond_8
    const/16 v20, 0x0

    .line 2338
    .local v20, "wi":Landroid/app/WallpaperInfo;
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2339
    .local v13, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2380
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_9
    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-direct {v15, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2381
    .local v15, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2382
    const-string/jumbo v3, "android.intent.extra.client_label"

    .line 2383
    const v4, 0x104047e

    .line 2382
    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2384
    const-string/jumbo v21, "android.intent.extra.client_intent"

    .line 2385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 2386
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104047f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2386
    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 2388
    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 2385
    const/4 v4, 0x0

    .line 2388
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2384
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 2392
    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 2390
    const v5, 0x22000001

    .line 2389
    invoke-virtual {v3, v13, v15, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2395
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_10

    .line 2396
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2342
    .end local v14    # "msg":Ljava/lang/String;
    .end local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 2344
    const/16 v5, 0x80

    .line 2342
    move/from16 v0, v18

    invoke-interface {v3, v13, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v16

    .line 2345
    .local v16, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_b

    .line 2346
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 2347
    .local v17, "rsi":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2348
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 2347
    if-eqz v3, :cond_e

    .line 2350
    :try_start_2
    new-instance v20, Landroid/app/WallpaperInfo;

    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2367
    .end local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_b
    if-nez v20, :cond_9

    .line 2368
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Selected service is not a wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2370
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_f

    .line 2371
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2357
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v10

    .line 2358
    .local v10, "e":Ljava/io/IOException;
    if-eqz p3, :cond_c

    .line 2359
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2361
    :cond_c
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2362
    const/4 v3, 0x0

    return v3

    .line 2351
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 2352
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_d

    .line 2353
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2355
    :cond_d
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2356
    const/4 v3, 0x0

    return v3

    .line 2345
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 2373
    .end local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    .restart local v14    # "msg":Ljava/lang/String;
    :cond_f
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const/4 v3, 0x0

    return v3

    .line 2398
    .end local v12    # "i":I
    .end local v16    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_10
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    const/4 v3, 0x0

    return v3

    .line 2401
    .end local v14    # "msg":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_12

    .line 2402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2404
    :cond_12
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2405
    move-object/from16 v0, p4

    iput-object v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2406
    move-object/from16 v0, p5

    iput-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2408
    :try_start_4
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_13

    .line 2411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 2412
    const/16 v5, 0x7dd

    .line 2411
    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 2413
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2418
    :cond_13
    :goto_3
    :try_start_5
    sget-object v3, Lcom/android/server/wallpaper/WallpaperManagerService;->CINEMATIC_WALLPAPER:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2419
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaper()V

    .line 2420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lockscreen_wallpaper"

    .line 2421
    const/4 v5, 0x0

    const/4 v6, -0x2

    .line 2420
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2431
    :cond_14
    const/4 v3, 0x1

    return v3

    .line 2428
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v9    # "e":Landroid/os/RemoteException;
    .restart local v14    # "msg":Ljava/lang/String;
    :cond_15
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    const/4 v3, 0x0

    return v3

    .line 2415
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :catch_3
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method public cleanUpBackupLockWallpaper()V
    .locals 4

    .prologue
    .line 3918
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 3919
    .local v0, "userId":I
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cleanUpBackupLockWallpaper userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpBackupKWPFiles(I)V

    .line 3921
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3917
    return-void
.end method

.method public clearWallpaper(Ljava/lang/String;II)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1640
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "clearWallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const-string/jumbo v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "clearWallpaper"

    const/4 v4, 0x1

    move v2, p3

    .line 1645
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1648
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1649
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1639
    return-void

    .line 1643
    :cond_0
    return-void

    .line 1648
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 2463
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2464
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2462
    return-void
.end method

.method clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .locals 16
    .param p1, "defaultFailed"    # Z
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1654
    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    .line 1655
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1658
    :cond_0
    const/4 v6, 0x0

    .line 1659
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 1660
    const/4 v2, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    .line 1661
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v6, :cond_2

    .line 1666
    return-void

    .line 1669
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    .line 1670
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v6, :cond_2

    .line 1672
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1673
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    .line 1676
    :cond_2
    if-nez v6, :cond_3

    .line 1677
    return-void

    .line 1680
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1682
    .local v14, "ident":J
    :try_start_0
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1683
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1684
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1685
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 1686
    const/4 v2, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeWallpaperData(II)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1688
    .local v8, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v8, :cond_4

    .line 1693
    :try_start_1
    invoke-interface {v8}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1698
    :cond_4
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1729
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1699
    return-void

    .line 1694
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1703
    .end local v8    # "cb":Landroid/app/IWallpaperManagerCallback;
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_5
    const/4 v10, 0x0

    .line 1705
    .local v10, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1706
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v0, p3

    if-eq v0, v2, :cond_6

    .line 1729
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1706
    return-void

    .line 1707
    :cond_6
    if-eqz p1, :cond_7

    .line 1708
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1709
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p4

    .line 1707
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_8

    .line 1729
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1710
    return-void

    .line 1709
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    .line 1712
    :catch_1
    move-exception v12

    .line 1713
    .local v12, "e1":Ljava/lang/IllegalArgumentException;
    move-object v10, v12

    .line 1720
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_8
    :try_start_5
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "Default wallpaper component not found!"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1721
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1722
    if-eqz p4, :cond_9

    .line 1724
    const/4 v2, 0x0

    :try_start_6
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1729
    :cond_9
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1653
    return-void

    .line 1725
    :catch_2
    move-exception v11

    .local v11, "e1":Landroid/os/RemoteException;
    goto :goto_2

    .line 1728
    .end local v11    # "e1":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 1729
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1728
    throw v2
.end method

.method public copyFileToWallpaperFile()V
    .locals 8

    .prologue
    .line 4202
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 4203
    .local v2, "userId":I
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    .line 4205
    .local v4, "wallpaperDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "wallpaper_orig"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4206
    .local v5, "wallpaperFile":Ljava/io/File;
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 4208
    .local v0, "completion":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaperData(I)V

    .line 4210
    const/4 v6, 0x2

    invoke-direct {p0, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 4211
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    .line 4213
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 4214
    const/4 v6, 0x3

    iput v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 4215
    iput-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 4216
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4217
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    iput-object v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    .line 4219
    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v5, v6}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4220
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V

    .line 4225
    :goto_0
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3ed

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4226
    .local v1, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4201
    return-void

    .line 4222
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const-string/jumbo v6, "WallpaperManagerService"

    const-string/jumbo v7, "failed copyFile (0x03)"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v3, 0x0

    .line 2435
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_2

    .line 2436
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_0

    .line 2438
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2441
    :goto_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2443
    :cond_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_1

    .line 2445
    :try_start_1
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2449
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2453
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2456
    :goto_2
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 2457
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 2458
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2434
    :cond_2
    return-void

    .line 2454
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 2446
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 2439
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3169
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 3172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3173
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3174
    const-string/jumbo v4, ", uid="

    .line 3172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    return-void

    .line 3178
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3179
    :try_start_0
    const-string/jumbo v3, "System wallpaper state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3181
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3182
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3183
    const-string/jumbo v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3184
    const-string/jumbo v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3185
    const-string/jumbo v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3186
    const-string/jumbo v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3187
    const-string/jumbo v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3188
    const-string/jumbo v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3189
    const-string/jumbo v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3190
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_2

    .line 3191
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3192
    .local v0, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string/jumbo v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3194
    const-string/jumbo v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3195
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_1

    .line 3196
    const-string/jumbo v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3197
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3199
    :cond_1
    const-string/jumbo v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3200
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3201
    const-string/jumbo v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3202
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3203
    const-string/jumbo v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3204
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3205
    const-string/jumbo v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3206
    iget-wide v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 3180
    .end local v0    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3209
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    const-string/jumbo v3, "Lock wallpaper state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 3211
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3212
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3213
    const-string/jumbo v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3214
    const-string/jumbo v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3215
    const-string/jumbo v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3216
    const-string/jumbo v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3217
    const-string/jumbo v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3218
    const-string/jumbo v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    const-string/jumbo v3, "  kwpType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3220
    const-string/jumbo v3, "  length="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3221
    const-string/jumbo v3, "  preloadKWPColorCode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    const-string/jumbo v3, "  motionPkgName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    const-string/jumbo v3, "  animatedPkgName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3224
    const-string/jumbo v3, "  callingPackage="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 3228
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4
    const-string/jumbo v3, "Lock wallpaper backup state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3229
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 3230
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3231
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3232
    const-string/jumbo v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3233
    const-string/jumbo v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3234
    const-string/jumbo v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3235
    const-string/jumbo v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3236
    const-string/jumbo v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3237
    const-string/jumbo v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3238
    const-string/jumbo v3, "  kwpType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3239
    const-string/jumbo v3, "  length="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3240
    const-string/jumbo v3, "  preloadKWPColorCode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    const-string/jumbo v3, "  animatedPkgName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    const-string/jumbo v3, "  callingPackage="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3229
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_5
    monitor-exit v4

    .line 3168
    return-void

    .line 3178
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1265
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 1266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1267
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1268
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 1266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1272
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1273
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1274
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 1272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1264
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    return-void
.end method

.method public getAnimatedPkgName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3889
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3890
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    .line 3891
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    .line 3892
    .local v0, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAnimatedPkgName userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    return-object v0

    .line 3896
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "Lock wallpaper data is null. So animated package name is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    return-object v4
.end method

.method public getDeviceColor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4113
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4114
    const-string/jumbo v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeviceColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    :cond_0
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    return-object v0
.end method

.method public getHeightHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1827
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1828
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 1829
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 1830
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .line 1832
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1827
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getLockWallpaperType()I
    .locals 3

    .prologue
    .line 3647
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 3648
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 3649
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    return v1

    .line 3652
    :cond_0
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "Lock wallpaper data is null. So, lock wallpaper type is -1."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    const/4 v1, -0x1

    return v1
.end method

.method public getMotionWallpaperPkgName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3799
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3800
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    .line 3801
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    .line 3802
    .local v0, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMotionPkgName userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    return-object v0

    .line 3806
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "Lock wallpaper data is null. So motion package name is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    return-object v4
.end method

.method getMultiWallpaperLockFile(IILjava/lang/String;)[Ljava/io/File;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "length"    # I
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    .line 3617
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    .line 3618
    .local v2, "wallpaperDir":Ljava/io/File;
    const/4 v3, 0x0

    .line 3620
    .local v3, "wallpaperLockFiles":[Ljava/io/File;
    const/4 v4, 0x1

    if-le p2, v4, :cond_0

    .line 3621
    new-array v3, p2, [Ljava/io/File;

    .line 3622
    .local v3, "wallpaperLockFiles":[Ljava/io/File;
    invoke-static {p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeMultiWallpaperFileName(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3623
    .local v1, "name":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 3624
    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v0

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 3623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3628
    .end local v0    # "i":I
    .end local v1    # "name":[Ljava/lang/String;
    .end local v3    # "wallpaperLockFiles":[Ljava/io/File;
    :cond_0
    if-nez v3, :cond_1

    .line 3629
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to Initialize multiWallpaperLockFiles. length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    :cond_1
    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1413
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 1414
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "getName() can only be called from the system process"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1416
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1417
    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 1419
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_1

    .line 1420
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_1
    monitor-exit v2

    .line 1423
    return-object v4

    .line 1416
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    .prologue
    .line 3312
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 3313
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    return-object v0
.end method

.method public getPreloadWallpaperColorCode()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3766
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3767
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 3768
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    return-object v1

    .line 3771
    :cond_0
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "Lock wallpaper data is null. So color code is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    return-object v3
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "which"    # I
    .param p3, "outParams"    # Landroid/os/Bundle;
    .param p4, "wallpaperUserId"    # I

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    .line 1879
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperIndexOf(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;III)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperIdForUser(II)I
    .locals 10
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x2

    .line 2003
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2004
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "getWallpaperIdForUser"

    const/4 v3, 0x0

    move v2, p2

    .line 2003
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2006
    if-eq p1, v4, :cond_0

    if-eq p1, v9, :cond_0

    .line 2007
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2010
    :cond_0
    const/4 v7, 0x0

    .line 2011
    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2012
    if-ne p1, v9, :cond_1

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    .line 2016
    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2017
    :try_start_0
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2018
    .local v8, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v8, :cond_4

    .line 2019
    iget v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 2012
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_1
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    goto :goto_0

    .line 2014
    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_2
    if-ne p1, v9, :cond_3

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    goto :goto_0

    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    goto :goto_0

    .restart local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4
    monitor-exit v1

    .line 2022
    const/4 v0, -0x1

    return v0

    .line 2016
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWallpaperIndexOf(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;III)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "which"    # I
    .param p3, "outParams"    # Landroid/os/Bundle;
    .param p4, "wallpaperUserId"    # I
    .param p5, "kwpType"    # I
    .param p6, "index"    # I

    .prologue
    .line 1886
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWallpaper which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1887
    const-string/jumbo v3, " wallpaperUserId="

    .line 1886
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1888
    const-string/jumbo v3, " kwpType="

    .line 1886
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1889
    const-string/jumbo v3, " index="

    .line 1886
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1892
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, "getWallpaper"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move/from16 v3, p4

    .line 1891
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 1893
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 1894
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1897
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1898
    const/4 v11, 0x0

    .line 1899
    .local v11, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1900
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    .line 1904
    .local v11, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_0
    move/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1905
    .local v10, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v10, :cond_4

    .line 1908
    const/4 v1, 0x0

    move/from16 v0, p4

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1909
    move/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    .restart local v10    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v10, :cond_4

    .line 1911
    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    .line 1900
    .end local v10    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v11, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    .local v11, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    goto :goto_0

    .line 1902
    .local v11, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .local v11, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    goto :goto_0

    .local v11, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_3
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v11, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    goto :goto_0

    .line 1915
    .restart local v10    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4
    if-eqz p3, :cond_5

    .line 1916
    :try_start_2
    const-string/jumbo v1, "width"

    iget v3, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1917
    const-string/jumbo v1, "height"

    iget v3, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1919
    :cond_5
    if-eqz p1, :cond_6

    .line 1920
    invoke-static {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1923
    :cond_6
    iget-object v8, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    .line 1924
    .local v8, "cropFile":Ljava/io/File;
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v1, :cond_7

    .line 1925
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_7

    .line 1926
    iget-object v1, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    aget-object v8, v1, p6

    .line 1929
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1932
    const/high16 v1, 0x10000000

    invoke-static {v8, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1930
    :cond_8
    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    .line 1933
    .end local v8    # "cropFile":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 1935
    .local v9, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v3, "Error getting wallpaper"

    invoke-static {v1, v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1937
    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    .line 1897
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v11    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1943
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1944
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1945
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1946
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    .line 1947
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_0
    monitor-exit v3

    .line 1949
    return-object v4

    .line 1944
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getWidthHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1816
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1817
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 1818
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 1819
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .line 1821
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1816
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1734
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1736
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 1738
    .local v0, "ident":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1740
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1742
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1744
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1747
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x1

    invoke-direct {p0, v6, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    .line 1748
    .local v5, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_1

    .line 1750
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1751
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x1

    invoke-direct {p0, v6, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    .line 1753
    :cond_1
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    if-eqz v6, :cond_0

    monitor-exit v7

    .line 1754
    return v9

    .line 1739
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v6

    .line 1740
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1739
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1734
    .end local v0    # "ident":J
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v0    # "ident":J
    .restart local v3    # "user$iterator":Ljava/util/Iterator;
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    monitor-exit v7

    .line 1758
    return v10
.end method

.method public initLockWallpaper()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 3902
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 3903
    .local v0, "userId":I
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initLockWallpaper userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3905
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    .line 3906
    iput v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    .line 3907
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    .line 3910
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaperData(I)V

    .line 3911
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3913
    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    .line 3901
    return-void
.end method

.method public initializeKnoxWallpaper(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 3411
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initializeKnoxWallpaper userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3413
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3414
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3410
    return-void
.end method

.method public isDesktopMode()Z
    .locals 1

    .prologue
    .line 3494
    const/4 v0, 0x0

    return v0
.end method

.method public isMotionWallpaperSupported()Z
    .locals 1

    .prologue
    .line 204
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_MOTION_WALLPAPER:Z

    return v0
.end method

.method public isSameWithCallingPackageName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4178
    if-nez p1, :cond_0

    .line 4179
    return v3

    .line 4182
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 4183
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4184
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callingPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    const/4 v1, 0x1

    return v1

    .line 4188
    :cond_1
    return v3
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2515
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    .line 2516
    .local v2, "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2521
    :cond_0
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2522
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 2523
    .local v4, "uidPackages":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 2524
    .local v3, "uidMatchPackage":Z
    if-nez v3, :cond_2

    .line 2525
    return v6

    .line 2517
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "uidMatchPackage":Z
    .end local v4    # "uidPackages":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "WallpaperManagerService"

    const-string/jumbo v8, "setWallpaper not allowed"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    return v6

    .line 2528
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "uidMatchPackage":Z
    .restart local v4    # "uidPackages":[Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v9, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2529
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2530
    :cond_3
    return v7

    .line 2532
    :cond_4
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 2533
    .local v5, "um":Landroid/os/UserManager;
    const-string/jumbo v8, "no_set_wallpaper"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_0
    return v6

    :cond_5
    move v6, v7

    goto :goto_0
.end method

.method public isWallpaperBackupEligible(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 2538
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 2539
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only the system may call isWallpaperBackupEligible"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2542
    :cond_0
    const/4 v0, 0x0

    .line 2543
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2544
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDesktopWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 2548
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    :goto_1
    return v1

    .line 2546
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 2548
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2508
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x30

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public loadKnoxWallpaperSettings(I)V
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    .line 3381
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3382
    :try_start_0
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 3383
    const/4 v0, 0x0

    .line 3384
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3385
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDesktopWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 3390
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 3391
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_0

    .line 3392
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 3393
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 3396
    :cond_0
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " postponing showing wallpaper for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3380
    return-void

    .line 3387
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 3381
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method makeWallpaperIdLocked()I
    .locals 1

    .prologue
    .line 878
    :cond_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 879
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-eqz v0, :cond_0

    .line 880
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    return v0
.end method

.method notifyLockWallpaperChanged(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 486
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyLockWallpaperChanged type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 488
    .local v0, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v0, :cond_0

    .line 490
    :try_start_0
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 498
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    const-string/jumbo v3, "com.samsung.android.app.spage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 485
    return-void

    .line 491
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method onRemoveUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1461
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    return-void

    .line 1463
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 1464
    .local v1, "wallpaperDir":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1465
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 1466
    sget-object v4, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 1467
    .local v0, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "filename":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    .line 1460
    return-void

    .line 1464
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method onUnlockUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1454
    :try_start_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    if-eqz v0, :cond_0

    .line 1455
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1452
    return-void

    .line 1453
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public restoreLockWallpaper()V
    .locals 9

    .prologue
    .line 3856
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 3857
    .local v2, "userId":I
    const-string/jumbo v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreLockWallpaper userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mIsBackupLockWallpaper="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3860
    .local v0, "backupLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_3

    iget-boolean v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z

    if-eqz v6, :cond_3

    .line 3861
    invoke-direct {p0, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setRestoreKWP(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    .line 3862
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    .line 3863
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpBackupLockWallpaper()V

    .line 3868
    :goto_0
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3869
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v3, :cond_2

    .line 3870
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 3871
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 3873
    :cond_0
    :goto_1
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v4

    .line 3874
    .local v4, "wallpaperDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "wallpaper_lock_orig"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3875
    .local v5, "wallpaperFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "wallpaper_lock"

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3876
    .local v1, "cropFile":Ljava/io/File;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3877
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3878
    const/4 v5, 0x0

    .line 3880
    .end local v5    # "wallpaperFile":Ljava/io/File;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3881
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3882
    const/4 v1, 0x0

    .line 3855
    .end local v1    # "cropFile":Ljava/io/File;
    .end local v4    # "wallpaperDir":Ljava/io/File;
    :cond_2
    return-void

    .line 3865
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    const-string/jumbo v6, "WallpaperManagerService"

    const-string/jumbo v7, "backup file is null. The lock wallpaper already changed or failed restore wallpaperData"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3872
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    goto :goto_1
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 27
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 3092
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    const-string/jumbo v23, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x4

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 3093
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 3095
    .local v20, "resName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3096
    .local v16, "pkg":Ljava/lang/String;
    const/16 v23, 0x3a

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 3097
    .local v7, "colon":I
    if-lez v7, :cond_0

    .line 3098
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 3101
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_0
    const/4 v15, 0x0

    .line 3102
    .local v15, "ident":Ljava/lang/String;
    const/16 v23, 0x2f

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    .line 3103
    .local v21, "slash":I
    if-lez v21, :cond_1

    .line 3104
    add-int/lit8 v23, v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 3107
    .end local v15    # "ident":Ljava/lang/String;
    :cond_1
    const/16 v22, 0x0

    .line 3108
    .local v22, "type":Ljava/lang/String;
    if-lez v7, :cond_2

    if-lez v21, :cond_2

    sub-int v23, v21, v7

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    .line 3109
    add-int/lit8 v23, v7, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 3112
    .end local v22    # "type":Ljava/lang/String;
    :cond_2
    if-eqz v16, :cond_7

    if-eqz v15, :cond_7

    if-eqz v22, :cond_7

    .line 3113
    const/16 v19, -0x1

    .line 3114
    .local v19, "resId":I
    const/16 v18, 0x0

    .line 3115
    .local v18, "res":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 3116
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 3118
    .local v8, "cos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 3119
    .local v6, "c":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 3120
    .local v17, "r":Landroid/content/res/Resources;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 3121
    if-nez v19, :cond_3

    .line 3122
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " type="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3123
    const-string/jumbo v25, " ident="

    .line 3122
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3124
    const/16 v23, 0x0

    .line 3152
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3159
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3160
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3124
    return v23

    .line 3127
    :cond_3
    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v18

    .line 3128
    .local v18, "res":Ljava/io/InputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 3129
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 3130
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 3132
    :cond_4
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3133
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v14, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3135
    .local v9, "cos":Ljava/io/FileOutputStream;
    const v23, 0x8000

    :try_start_3
    move/from16 v0, v23

    new-array v5, v0, [B

    .line 3137
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .local v5, "buffer":[B
    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "amt":I
    if-lez v4, :cond_8

    .line 3138
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v5, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3139
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v5, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 3145
    .end local v4    # "amt":I
    .end local v5    # "buffer":[B
    :catch_0
    move-exception v10

    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v8, v9

    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 3146
    .end local v6    # "c":Landroid/content/Context;
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "res":Ljava/io/InputStream;
    :goto_1
    :try_start_4
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Package name "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " not found"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3152
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3153
    if-eqz v13, :cond_5

    .line 3154
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3156
    :cond_5
    if-eqz v8, :cond_6

    .line 3157
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3159
    :cond_6
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3160
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3164
    .end local v7    # "colon":I
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "resId":I
    .end local v20    # "resName":Ljava/lang/String;
    .end local v21    # "slash":I
    :cond_7
    :goto_2
    const/16 v23, 0x0

    return v23

    .line 3143
    .restart local v4    # "amt":I
    .restart local v5    # "buffer":[B
    .restart local v6    # "c":Landroid/content/Context;
    .restart local v7    # "colon":I
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "res":Ljava/io/InputStream;
    .restart local v19    # "resId":I
    .restart local v20    # "resName":Ljava/lang/String;
    .restart local v21    # "slash":I
    :cond_8
    :try_start_5
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Restored wallpaper: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3144
    const/16 v23, 0x1

    .line 3152
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3153
    if-eqz v14, :cond_9

    .line 3154
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3156
    :cond_9
    if-eqz v9, :cond_a

    .line 3157
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3159
    :cond_a
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3160
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3144
    return v23

    .line 3149
    .end local v4    # "amt":I
    .end local v5    # "buffer":[B
    .end local v6    # "c":Landroid/content/Context;
    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "res":Ljava/io/InputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    .line 3150
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v12, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string/jumbo v23, "WallpaperManagerService"

    const-string/jumbo v24, "IOException while restoring wallpaper "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3152
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3153
    if-eqz v13, :cond_b

    .line 3154
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3156
    :cond_b
    if-eqz v8, :cond_c

    .line 3157
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3159
    :cond_c
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3160
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 3147
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v8    # "cos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v11

    .line 3148
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_4
    :try_start_7
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Resource not found: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3152
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3153
    if-eqz v13, :cond_d

    .line 3154
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3156
    :cond_d
    if-eqz v8, :cond_e

    .line 3157
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3159
    :cond_e
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3160
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_2

    .line 3151
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v23

    .line 3152
    :goto_5
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3153
    if-eqz v13, :cond_f

    .line 3154
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3156
    :cond_f
    if-eqz v8, :cond_10

    .line 3157
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3159
    :cond_10
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3160
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3151
    throw v23

    .restart local v6    # "c":Landroid/content/Context;
    .restart local v8    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "res":Ljava/io/InputStream;
    :catchall_1
    move-exception v23

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v23

    move-object v8, v9

    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 3145
    .end local v6    # "c":Landroid/content/Context;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "res":Ljava/io/InputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1

    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "c":Landroid/content/Context;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "res":Ljava/io/InputStream;
    :catch_4
    move-exception v10

    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 3147
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v11

    .restart local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v11

    .restart local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    move-object v8, v9

    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3149
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 3814
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 3815
    .local v0, "userId":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3816
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName is null or empty. packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    return-void

    .line 3819
    :cond_0
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAnimatedWallpaper pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3822
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x4

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    .line 3823
    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    .line 3824
    iput-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    .line 3826
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    .line 3827
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3828
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    .line 3813
    return-void
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1771
    const-string/jumbo v4, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1773
    return-void

    .line 1775
    :cond_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1776
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1777
    .local v2, "userId":I
    const/4 v3, 0x0

    .line 1778
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1779
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDesktopWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 1783
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_3

    .line 1784
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "width and height must be > 0"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1775
    .end local v2    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1781
    .restart local v2    # "userId":I
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 1787
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1788
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1789
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1791
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v4, :cond_4

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v4, :cond_6

    .line 1792
    :cond_4
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1793
    iput p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1794
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 1795
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, v2, :cond_5

    monitor-exit v5

    return-void

    .line 1796
    :cond_5
    :try_start_2
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_6

    .line 1797
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_7

    .line 1799
    :try_start_3
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v4, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1803
    :goto_1
    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :goto_2
    monitor-exit v5

    .line 1770
    return-void

    .line 1804
    :cond_7
    :try_start_5
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v4, :cond_6

    .line 1808
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1801
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 7
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1838
    const-string/jumbo v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1840
    return-void

    .line 1842
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1843
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1844
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 1845
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1846
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDesktopWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 1850
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    .line 1851
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "padding must be positive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1842
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1848
    .restart local v1    # "userId":I
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 1850
    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_1

    .line 1854
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1855
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1856
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 1857
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v1, :cond_4

    monitor-exit v4

    return-void

    .line 1858
    :cond_4
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_5

    .line 1859
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_6

    .line 1861
    :try_start_3
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1864
    :goto_1
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_2
    monitor-exit v4

    .line 1837
    return-void

    .line 1865
    :cond_6
    :try_start_5
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_5

    .line 1869
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1862
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .locals 2
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .prologue
    .line 2027
    const-string/jumbo v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2028
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2029
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2031
    const/4 v0, 0x1

    return v0

    .line 2028
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setMotionWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 3777
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 3778
    .local v0, "userId":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3779
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName is null or empty. packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    return-void

    .line 3782
    :cond_0
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMotionWallpaper pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3785
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    .line 3786
    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    .line 3787
    iput-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    .line 3789
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    .line 3790
    iget-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsBackupLockWallpaper:Z

    if-eqz v2, :cond_1

    .line 3791
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpBackupKWPFiles(I)V

    .line 3793
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3794
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    .line 3776
    return-void
.end method

.method public setPreloadWallpaper(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "preloadType"    # I
    .param p2, "colorCode"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 3746
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 3747
    .local v0, "userId":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3748
    if-eq p1, v5, :cond_1

    .line 3749
    :cond_0
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreloadWallpaper colorCode is null or empty. And maybe the preload type is wrong. preloadType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " colorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    return-void

    .line 3753
    :cond_1
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreloadWallpaper userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " preloadType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " colorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    invoke-direct {p0, v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3755
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iput p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    .line 3756
    iput-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    .line 3757
    iput-object p3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    .line 3759
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    .line 3760
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3761
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    .line 3745
    return-void
.end method

.method public setSWPTypePreload(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 4195
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4196
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4197
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4194
    return-void
.end method

.method public setSettingsSystemUiTransparency(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 186
    const-string/jumbo v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSettingsSystemUiTransparency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android.wallpaper.settings_systemui_transparency"

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 185
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android.wallpaper.settings_systemui_transparency"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cropHint"    # Landroid/graphics/Rect;
    .param p4, "allowBackup"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "which"    # I
    .param p7, "completion"    # Landroid/app/IWallpaperManagerCallback;
    .param p8, "kwpType"    # I

    .prologue
    .line 2039
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v10, p8

    .line 2038
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;III)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2240
    const-string/jumbo v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2241
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2242
    :try_start_0
    const-string/jumbo v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWallpaperComponent name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 2245
    .local v9, "userId":I
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v8

    .line 2246
    .local v8, "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    if-eqz v8, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2252
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v9, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 2253
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_2

    .line 2254
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2241
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .end local v9    # "userId":I
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .restart local v8    # "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .restart local v9    # "userId":I
    :cond_1
    monitor-exit v10

    .line 2249
    return-void

    .line 2256
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 2258
    .local v6, "ident":J
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2259
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2260
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2261
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2264
    :cond_3
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v10

    .line 2239
    return-void

    .line 2263
    :catchall_1
    move-exception v0

    .line 2264
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2263
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2232
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2233
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 2231
    :cond_0
    return-void
.end method

.method public setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;III)Landroid/os/ParcelFileDescriptor;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cropHint"    # Landroid/graphics/Rect;
    .param p4, "allowBackup"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "which"    # I
    .param p7, "completion"    # Landroid/app/IWallpaperManagerCallback;
    .param p8, "length"    # I
    .param p9, "index"    # I
    .param p10, "kwpType"    # I

    .prologue
    .line 2046
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWallpaper() name:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2047
    const-string/jumbo v5, " callingPackage="

    .line 2046
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2048
    const-string/jumbo v5, " cropHint="

    .line 2046
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2049
    const-string/jumbo v5, " allowBackup="

    .line 2046
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2050
    const-string/jumbo v5, " which=0x"

    .line 2046
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2050
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 2046
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2051
    const-string/jumbo v5, " length="

    .line 2046
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2052
    const-string/jumbo v5, " index="

    .line 2046
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2053
    const-string/jumbo v5, " kwpType="

    .line 2046
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2054
    const-string/jumbo v5, " current userId="

    .line 2046
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2054
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 2046
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    const-string/jumbo v2, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2058
    and-int/lit8 v2, p6, 0x3

    if-nez v2, :cond_0

    .line 2059
    const-string/jumbo v10, "Must specify a valid wallpaper category to set"

    .line 2060
    .local v10, "msg":Ljava/lang/String;
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "Must specify a valid wallpaper category to set"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Must specify a valid wallpaper category to set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2064
    .end local v10    # "msg":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2070
    if-nez p3, :cond_9

    .line 2071
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "cropHint":Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-direct {v0, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2080
    .restart local p3    # "cropHint":Landroid/graphics/Rect;
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 2081
    .local v12, "userId":I
    const/16 v2, 0x64

    if-le v2, v12, :cond_2

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v12, v2, :cond_2

    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_2

    .line 2082
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "The currentUserId was no matched with getCallingUserId. userId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " mCurrentUserId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 2086
    :cond_2
    iget-object v13, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2094
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_3

    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v12, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2098
    invoke-direct {p0, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2101
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2102
    move/from16 v0, p6

    invoke-direct {p0, v12, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDesktopWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 2107
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_MOTION_WALLPAPER:Z

    if-nez v2, :cond_4

    .line 2108
    :cond_4
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_5

    .line 2109
    move/from16 v0, p10

    move/from16 v1, p8

    invoke-direct {p0, v12, v4, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 2113
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .local v8, "ident":J
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p5

    move/from16 v6, p9

    move/from16 v7, p6

    .line 2115
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    .line 2116
    .local v11, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v11, :cond_7

    .line 2117
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2118
    move/from16 v0, p6

    iput v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 2119
    move-object/from16 v0, p7

    iput-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 2120
    iget-object v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2122
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_6

    .line 2123
    move/from16 v0, p10

    iput v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    .line 2124
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    .line 2127
    :cond_6
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_7

    .line 2128
    move/from16 v0, p4

    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2133
    :cond_7
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v13

    .line 2131
    return-object v11

    .line 2065
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "ident":J
    .end local v11    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v12    # "userId":I
    :cond_8
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "setWallpaperIndexOf callingPackage is wrong."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const/4 v2, 0x0

    return-object v2

    .line 2073
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2074
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_b

    .line 2076
    :cond_a
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid crop rect supplied: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2075
    :cond_b
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_1

    goto :goto_1

    .line 2104
    .restart local v12    # "userId":I
    :cond_c
    :try_start_3
    move/from16 v0, p6

    invoke-direct {p0, v12, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto/16 :goto_0

    .line 2132
    .restart local v8    # "ident":J
    :catchall_0
    move-exception v2

    .line 2133
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2132
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2086
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit v13

    throw v2
.end method

.method public settingsRestored()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3036
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 3037
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3041
    :cond_0
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "settingsRestored"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    const/4 v4, 0x0

    .line 3043
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v6, 0x0

    .line 3044
    .local v6, "success":Z
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3045
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3046
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 3047
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3048
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3049
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 3050
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3062
    :cond_1
    const-string/jumbo v0, ""

    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3064
    const/4 v6, 0x1

    .line 3071
    .end local v6    # "success":Z
    :goto_0
    if-eqz v6, :cond_2

    .line 3072
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3073
    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3074
    const/4 v5, 0x0

    move-object v0, p0

    .line 3073
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v7

    .line 3079
    if-nez v6, :cond_3

    .line 3080
    const-string/jumbo v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to restore wallpaper: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    const-string/jumbo v0, ""

    iput-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3082
    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3085
    :cond_3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3086
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    .line 3034
    return-void

    .line 3051
    .restart local v6    # "success":Z
    :cond_4
    :try_start_2
    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3052
    const/4 v5, 0x0

    move-object v0, p0

    .line 3051
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3056
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3058
    :cond_5
    const/4 v6, 0x1

    .line 3050
    goto :goto_1

    .line 3067
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .local v6, "success":Z
    goto :goto_0

    .line 3044
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v6    # "success":Z
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 3085
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v1, 0x0

    .line 1428
    if-eqz p1, :cond_0

    .line 1429
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 1431
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 1427
    :cond_0
    return-void
.end method

.method stopObserversLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1438
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1439
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1440
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1436
    return-void
.end method

.method public switchPersonaWallpaper(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "forced"    # Z

    .prologue
    .line 3402
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchPersonaWallpaper is called for personaId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3404
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3405
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3406
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3401
    return-void

    .line 3405
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1474
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1475
    :try_start_0
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switchUser userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1477
    const/4 v2, 0x0

    .line 1478
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1479
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDesktopWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 1483
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1485
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-nez v3, :cond_0

    .line 1486
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 1487
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V

    .line 1491
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v0

    .line 1492
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1493
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1495
    :cond_1
    const/4 v1, 0x0

    .line 1496
    .local v1, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1497
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDesktopWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1501
    .local v1, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_1
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-nez v3, :cond_2

    .line 1502
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mLockWallpaperFileObserver:Landroid/os/FileObserver;

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 1503
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V

    .line 1507
    :cond_2
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1510
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateOldKeyguardWallpaper()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1473
    return-void

    .line 1481
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 1499
    .restart local v0    # "dir":Ljava/io/File;
    .local v1, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_1

    .line 1474
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 12
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1515
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1516
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    .line 1517
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 1518
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1519
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    const/4 v10, 0x0

    .line 1524
    .local v10, "si":Landroid/content/pm/ServiceInfo;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1525
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/high16 v4, 0x40000

    .line 1524
    invoke-interface {v0, v1, v4, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 1529
    .end local v10    # "si":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-nez v10, :cond_2

    .line 1530
    :try_start_2
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v3, "Failure starting previous wallpaper; clearing"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_2
    monitor-exit v11

    .line 1514
    return-void

    .line 1518
    .end local v1    # "cname":Landroid/content/ComponentName;
    :cond_1
    :try_start_3
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .restart local v1    # "cname":Landroid/content/ComponentName;
    goto :goto_0

    .line 1533
    :cond_2
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v3, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1538
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v4

    .line 1539
    const-string/jumbo v5, "wallpaper_lock_orig"

    const-string/jumbo v6, "wallpaper_lock"

    const/4 v7, 0x1

    .line 1538
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1540
    .local v2, "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1541
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v7, v2

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1515
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v2    # "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 1526
    .restart local v1    # "cname":Landroid/content/ComponentName;
    .restart local v10    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    .local v9, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method systemReady()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1293
    const-string/jumbo v5, "WallpaperManagerService"

    const-string/jumbo v6, "systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-direct {p0, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 1298
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1300
    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1304
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1307
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1311
    const/4 v5, 0x0

    invoke-virtual {p0, v7, v8, v7, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1319
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1320
    .local v3, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1321
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v6, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1334
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1336
    .local v2, "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/samsung/android/knox/SemPersonaManager;)V

    .line 1335
    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    .end local v2    # "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1382
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v6, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 1381
    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1401
    :goto_1
    sget-boolean v5, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_DDI_WALLPAPER:Z

    if-eqz v5, :cond_2

    .line 1402
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateDeviceColor(Landroid/content/Context;)V

    .line 1406
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->registerOMCWallpaperUpdatedReceiver()V

    .line 1292
    return-void

    .line 1375
    :catch_0
    move-exception v1

    .line 1376
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1397
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2181
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "index"    # I
    .param p5, "which"    # I

    .prologue
    const/4 v8, 0x0

    .line 2186
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .line 2188
    :cond_0
    const/4 v0, 0x0

    .line 2190
    .local v0, "dir":Ljava/io/File;
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_3

    .line 2191
    :try_start_0
    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v0

    .line 2196
    .local v0, "dir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2197
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2199
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 2200
    const/16 v5, 0x1f9

    .line 2201
    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 2198
    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2203
    :cond_1
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 2204
    .local v3, "wallpaperFile":Ljava/io/File;
    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v4, :cond_2

    .line 2205
    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2206
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    aget-object v3, v4, p4

    .line 2210
    :cond_2
    const/high16 v4, 0x3c000000    # 0.0078125f

    .line 2209
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2211
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2212
    return-object v8

    .line 2194
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "wallpaperFile":Ljava/io/File;
    .local v0, "dir":Ljava/io/File;
    :cond_3
    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .local v0, "dir":Ljava/io/File;
    goto :goto_0

    .line 2214
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "wallpaperFile":Ljava/io/File;
    :cond_4
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2215
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2216
    if-eqz p3, :cond_5

    .line 2217
    const-string/jumbo v4, "android.service.wallpaper.extra.ID"

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    :cond_5
    return-object v2

    .line 2224
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "wallpaperFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2225
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "Error setting wallpaper"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2227
    return-object v8
.end method
